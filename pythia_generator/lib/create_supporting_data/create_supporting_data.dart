import 'dart:convert';
import 'dart:io';

import 'package:pythia/pythia.dart';
import 'package:pythia_generator/create_supporting_data/create_patients.dart';

import '../supporting_strings.dart';
import 'contraindications.dart';
import 'create_series/create_series.dart';
import 'immunity.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';

void createSupportingData(
  List<SupportingStrings> supportingStrings,
) {
  var newScheduleSupportingData = scheduleSupportingData.copyWith();
  const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

  /// Make copies of all of the spreadsheets so that we can divide them into
  /// appropriate categories
  var scheduleSupportingStrings = supportingStrings.toList();

  /// Remove all of the strings that are not ScheduleSupportingStrings
  scheduleSupportingStrings
      .removeWhere((element) => element is! ScheduleSupportingStrings);

  /// Cast the list to a list of ScheduleSupportingStrings
  scheduleSupportingStrings =
      scheduleSupportingStrings.cast<ScheduleSupportingStrings>();

  /// Make copies of all of the spreadsheets so that we can divide them into
  /// appropriate categories
  var antigenSupportingStrings = supportingStrings.toList();

  /// Remove all of the strings that are not AntigenSupportingStrings
  antigenSupportingStrings
      .removeWhere((element) => element is! AntigenSupportingStrings);

  /// Cast the list to a list of AntigenSupportingStrings
  antigenSupportingStrings =
      antigenSupportingStrings.cast<AntigenSupportingStrings>();

  /// Make copies of all of the spreadsheets so that we can divide them into
  /// appropriate categories
  var testCasesStrings = supportingStrings.toList();

  /// Remove all of the strings that are not TestCasesStrings
  testCasesStrings.removeWhere((element) => element is! TestCasesStrings);

  /// Cast the list to a list of TestCasesStrings
  testCasesStrings = testCasesStrings.cast<TestCasesStrings>();

  for (final scheduleSupportingString in scheduleSupportingStrings) {
    switch ((scheduleSupportingString as ScheduleSupportingStrings).type) {
      case SupportingType.codedObservations:
        newScheduleSupportingData = newScheduleSupportingData.copyWith(
            observations: observations(scheduleSupportingString.data));
      case SupportingType.cvxToAntigenMap:
        newScheduleSupportingData = newScheduleSupportingData.copyWith(
            cvxToAntigenMap: cvxToAntigenMap(scheduleSupportingString.data));
      case SupportingType.liveVirusConflicts:
        newScheduleSupportingData = newScheduleSupportingData.copyWith(
            liveVirusConflicts:
                liveVirusConflicts(scheduleSupportingString.data));
      case SupportingType.vaccineGroups:
        newScheduleSupportingData = newScheduleSupportingData.copyWith(
            vaccineGroups: vaccineGroups(scheduleSupportingString.data));
      case SupportingType.vaccineGroupToAntigenMap:
        newScheduleSupportingData = newScheduleSupportingData.copyWith(
            vaccineGroupToAntigenMap:
                vaccineGroupToAntigenMap(scheduleSupportingString.data));
      case null:
    }
  }
  if (newScheduleSupportingData.toJson().isNotEmpty) {
    final dataString = "import 'package:pythia/pythia.dart';\n\n"
        'final scheduleSupportingData = '
        'ScheduleSupportingData.fromJson(${jsonEncoder.convert(newScheduleSupportingData)});';

    File('pythia_generator/lib/generated_files/schedule_supporting_data.dart')
        .writeAsStringSync(dataString);
  }

  var importString = '';
  var listString = 'final antigenSupportingData = [\n';
  var mapString = 'final antigenSupportingDataMap = {\n';
  for (var supportString
      in antigenSupportingStrings as List<AntigenSupportingStrings>) {
    var antigenSupportingData = AntigenSupportingData(
      immunity: immunity(supportString.immunity),
      contraindications: contraindications(supportString.contraindications),
      series: supportString.series?.map((e) => createSeries(e)).toList(),
    );

    antigenSupportingData = antigenSupportingData.copyWith(
      targetDisease: antigenSupportingData.series?[0].targetDisease,
      vaccineGroup: antigenSupportingData.series?[0].vaccineGroup,
    );

    final fileName = antigenSupportingData.series?[0].targetDisease
        ?.replaceAll(' ', '_')
        .replaceAll('-', '_')
        .toLowerCase();
    final index = fileName?.indexOf('_');
    var diseaseName = fileName;
    if (index != null && index != -1) {
      diseaseName = '${fileName?.substring(0, index)}'
          '${fileName?.substring(index + 1, index + 2).toUpperCase()}'
          '${fileName?.substring(index + 2)}';
    }

    final dataString =
        '// ignore_for_file: prefer_single_quotes, always_specify_types\n\n'
        "import '../pythia.dart';\n\n"
        'final AntigenSupportingData $diseaseName = '
        'AntigenSupportingData.fromJson(${jsonEncoder.convert(antigenSupportingData)});';
    importString += "import '$fileName.dart';\n";
    listString += '$diseaseName,\n';
    mapString += "'${antigenSupportingData.targetDisease}': $diseaseName,\n";

    File('pythia_generator/lib/generated_files/$fileName.dart')
        .writeAsStringSync(dataString);
    File('pythia_generator/lib/generated_files/$fileName.json')
        .writeAsStringSync(jsonEncoder.convert(antigenSupportingData));
  }

  File('pythia_generator/lib/generated_files/antigen_supporting_data.dart')
      .writeAsStringSync('$importString\n$listString];\n\n$mapString};');

  for (final string in testCasesStrings as List<TestCasesStrings>) {
    createPatients(string, newScheduleSupportingData);
  }
}
