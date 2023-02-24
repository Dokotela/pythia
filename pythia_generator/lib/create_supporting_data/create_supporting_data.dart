import 'dart:convert';
import 'dart:io';

import 'package:pythia/pythia.dart';
import 'package:pythia_generator/create_supporting_data/create_patients.dart';

import '../supporting_strings.dart';
import 'contraindications.dart';
import 'create_series/create_series.dart';
import 'immunity.dart';
import 'schedule_supporting_data/schedule_supporting_data.dart';

Future<void> createSupportingData(
  List<SupportingStrings> supportingStrings,
) async {
  var scheduleSupportingData = ScheduleSupportingData();
  const JsonEncoder jsonEncoder = JsonEncoder.withIndent('    ');

  /// Make copies of all of the spreadsheets so that we can divide them into
  /// appropriate categories
  var scheduleSupportingStrings = supportingStrings.toList();
  scheduleSupportingStrings
      .removeWhere((element) => element is! ScheduleSupportingStrings);
  scheduleSupportingStrings =
      scheduleSupportingStrings.cast<ScheduleSupportingStrings>();
  var antigenSupportingStrings = supportingStrings.toList();
  antigenSupportingStrings
      .removeWhere((element) => element is! AntigenSupportingStrings);
  antigenSupportingStrings =
      antigenSupportingStrings.cast<AntigenSupportingStrings>();
  var testCasesStrings = supportingStrings.toList();
  testCasesStrings.removeWhere((element) => element is! TestCasesStrings);
  testCasesStrings = testCasesStrings.cast<TestCasesStrings>();

  for (final scheduleSupportingString in scheduleSupportingStrings) {
    switch ((scheduleSupportingString as ScheduleSupportingStrings).type) {
      case SupportingType.codedObservations:
        scheduleSupportingData = scheduleSupportingData.copyWith(
            observations: observations(scheduleSupportingString.data));
        break;
      case SupportingType.cvxToAntigenMap:
        scheduleSupportingData = scheduleSupportingData.copyWith(
            cvxToAntigenMap: cvxToAntigenMap(scheduleSupportingString.data));
        break;
      case SupportingType.liveVirusConflicts:
        scheduleSupportingData = scheduleSupportingData.copyWith(
            liveVirusConflicts:
                liveVirusConflicts(scheduleSupportingString.data));
        break;
      case SupportingType.vaccineGroups:
        scheduleSupportingData = scheduleSupportingData.copyWith(
            vaccineGroups: vaccineGroups(scheduleSupportingString.data));
        break;
      case SupportingType.vaccineGroupToAntigenMap:
        scheduleSupportingData = scheduleSupportingData.copyWith(
            vaccineGroupToAntigenMap:
                vaccineGroupToAntigenMap(scheduleSupportingString.data));
        break;
      default:
        null;
    }
  }
  if (scheduleSupportingData.toJson().isNotEmpty) {
    final dataString = "import 'package:pythia/pythia.dart';\n\n"
        'final scheduleSupportingData = '
        'ScheduleSupportingData.fromJson(${jsonEncoder.convert(scheduleSupportingData)});';

    await File('lib/generated_files/schedule_supporting_data.dart')
        .writeAsString(dataString);
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

    print(antigenSupportingData.series?[0].targetDisease);
    // print(
    //     antigenSupportingData.series?[0].targetDisease?.replaceAll(' ', '_'));
    // print(antigenSupportingData.series?[0].targetDisease
    //     ?.replaceAll(' ', '_')
    //     .replaceAll('-', '_'));
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

    final dataString = "import 'package:pythia/pythia.dart';\n\n"
        'final $diseaseName = '
        'AntigenSupportingData.fromJson(${jsonEncoder.convert(antigenSupportingData)});';
    importString += "import '$fileName.dart';\n";
    listString += '$diseaseName,\n';
    mapString += "'${antigenSupportingData.targetDisease}': $diseaseName,\n";

    await File('lib/generated_files/$fileName.dart').writeAsString(dataString);
    await File('lib/generated_files/$fileName.json')
        .writeAsString(jsonEncoder.convert(antigenSupportingData));
  }

  await File('lib/generated_files/antigen_supporting_data.dart')
      .writeAsString('$importString\n$listString];\n\n$mapString};');

  for (final string in testCasesStrings as List<TestCasesStrings>) {
    createPatients(string, scheduleSupportingData);
  }
}
