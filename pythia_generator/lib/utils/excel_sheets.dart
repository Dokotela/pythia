import 'dart:io';

import 'package:excel/excel.dart';

import '../supporting_strings.dart';

List<SupportingStrings> excelSheets() {
  final Directory dir = Directory('pythia_generator/lib/Version_4.61-508/Excel');
  final supportingStringsList = <SupportingStrings>[];
  final fileList = dir.listSync();

  for (final file in fileList) {
    final filePath = file.path;
    if (filePath.endsWith('xlsx')) {
      final bytes = File(filePath).readAsBytesSync();
      var excel = Excel.decodeBytes(bytes);

      /// If the first sheet is entitled Antigen Series Overview, it is an sheet
      /// for Antigen Supporting Data, otherwise it's for Schedule Supporting Data
      SupportingStrings supportingStrings =
          filePath.contains('AntigenSupportingData')
              ? AntigenSupportingStrings()
              : filePath.contains('ScheduleSupportingData')
                  ? ScheduleSupportingStrings()
                  : TestCasesStrings();
      for (final table in excel.tables.keys) {
        /// For each tab in the sheets
        final tab = excel.tables[table]!;

        /// Start with an empty string
        var string = '';

        /// Read all of the values for all of the rows, and then for each row
        /// evalute its values
        for (var v in tab.rows) {
          /// Join the values of each cell together separated by tabs
          string += v.join('\t');

          /// Separate each line with a carriage return
          string += '\n';
        }

        switch (tab.sheetName) {
          case 'Antigen Series Overview':
            {
              (supportingStrings as AntigenSupportingStrings)
                  .antigenSeriesOverview = string;
            }
            break;
          case 'Change History':
            {
              supportingStrings is AntigenSupportingStrings
                  ? supportingStrings.changeHistory = string
                  : (supportingStrings as ScheduleSupportingStrings)
                      .changeHistory = string;
            }
            break;
          case 'FAQ':
            {
              (supportingStrings as AntigenSupportingStrings).faq = string;
            }
            break;
          case 'Immunity':
            {
              (supportingStrings as AntigenSupportingStrings).immunity = string;
            }
            break;
          case 'Contraindications':
            {
              (supportingStrings as AntigenSupportingStrings)
                  .contraindications = string;
            }
            break;
          case 'Overview':
            {
              if (supportingStrings is ScheduleSupportingStrings) {
                supportingStrings.overview = string;
              } else {
                {
                  (supportingStrings as TestCasesStrings).overview = string;
                }
              }
            }
            break;
          case 'Conditions':
            {
              (supportingStrings as ScheduleSupportingStrings).type =
                  SupportingType.codedObservations;
              supportingStrings.data = string;
            }
            break;
          case 'CVX to Antigen Map':
            {
              (supportingStrings as ScheduleSupportingStrings).type =
                  SupportingType.cvxToAntigenMap;
              supportingStrings.data = string;
            }
            break;
          case 'Live Virus Conflicts':
            {
              (supportingStrings as ScheduleSupportingStrings).type =
                  SupportingType.liveVirusConflicts;
              supportingStrings.data = string;
            }
            break;
          case 'Vaccine Group to Antigen Map':
            {
              (supportingStrings as ScheduleSupportingStrings).type =
                  SupportingType.vaccineGroupToAntigenMap;
              supportingStrings.data = string;
            }
            break;
          case 'Vaccine Groups':
            {
              (supportingStrings as ScheduleSupportingStrings).type =
                  SupportingType.vaccineGroups;
              supportingStrings.data = string;
            }
            break;
          case 'Test Case Layout':
            {
              (supportingStrings as TestCasesStrings).testCaseLayout = string;
            }
            break;
          default:
            {
              if (tab.sheetName.toLowerCase().contains('cases')) {
                (supportingStrings as TestCasesStrings).cases = string;
                supportingStrings.isHealthy =
                    !tab.sheetName.toLowerCase().contains('condition');
                File('tests.txt').writeAsStringSync(string);
              } else {
                (supportingStrings as AntigenSupportingStrings).series == null
                    ? supportingStrings.series = [string]
                    : supportingStrings.series!.add(string);
              }
            }
        }

        supportingStringsList.add(supportingStrings);
      }
    }
  }
  return supportingStringsList;
}
