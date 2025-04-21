import 'dart:convert';
import 'dart:io';
import 'package:pythia/pythia.dart';
import 'package:pythia_generator/antigen_sheet_parser.dart';
import 'package:pythia_generator/schedule_sheet_parser.dart';

void main(List<String> args) {
  // 1) Identify your source directory
  final sourceDir = Directory('pythia_generator/lib/Version_4.61-508/Excel');
  if (!sourceDir.existsSync()) {
    print("Directory not found: ${sourceDir.path}");
    return;
  }

  // 2) Create output directory if desired
  final outputDir = Directory('pythia_generator/lib/generated_files');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }

  final antigenParser = AntigenSheetParser();
  final scheduleParser = ScheduleSheetParser();

  // In case you want to collect them in memory:
  final List<AntigenSupportingData> allAntigenData = [];
  var scheduleData = ScheduleSupportingData();

  // 3) Iterate over files
  for (final fileEntity in sourceDir.listSync()) {
    if (fileEntity is File && fileEntity.path.endsWith('.xlsx')) {
      final filePath = fileEntity.path;
      print('Processing file: $filePath');

      if (filePath.contains('AntigenSupportingData')) {
        // Parse as an antigen
        final antigenData = antigenParser.parseFile(filePath);
        allAntigenData.add(antigenData);

        // Write JSON
        final jsonPath = '${outputDir.path}/${antigenData.targetDisease}.json';
        File(jsonPath).writeAsStringSync(jsonPrettyPrint(antigenData.toJson()));
        print('Wrote $jsonPath');
      } else if (filePath.contains('ScheduleSupportingData')) {
        // Parse as schedule
        scheduleData = scheduleParser.parseFile(filePath, scheduleData);
      } else {
        // Possibly a test-cases file or something else
        print('Unrecognized file (not Antigen nor Schedule): $filePath');
      }
    }
  }

  // Write JSON
  final jsonPath = '${outputDir.path}/schedule_supporting_data.json';
  File(jsonPath).writeAsStringSync(jsonPrettyPrint(scheduleData.toJson()));
  print('Wrote $jsonPath');

  print('Done!');
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);
