import 'dart:convert';
import 'dart:io';

import 'package:pythia_generator/supporting_strings.dart';

import 'create_supporting_data/create_supporting_data.dart';
import 'utils/excel_sheets.dart';

void main() {
  final supportingStringsList = excelSheets();

  // final files = supportingStringsList.map((e) => e.toJson()).toList();

  // File('pythia_generator/lib/supporting_strings.json')
  //     .writeAsStringSync(jsonEncode(files));

  // final listFromFile = jsonDecode(
  //     File('pythia_generator/lib/supporting_strings.json').readAsStringSync());

  final newSupportingStringsList = supportingStringsList;
      // (listFromFile as List).map((e) => SupportingStrings.fromJson(e)).toList();

  /// Creates all necessary supporting data files
  createSupportingData(newSupportingStringsList);

  /// Edit this out if testing generating files, this writes files to the actual program
  final dir = Directory('pythia_generator/lib/generated_files');
  final fileList = dir.listSync().map((event) => event.path).toList();
  for (var file in fileList) {
    if (file.endsWith('.dart')) {
      final newFile = File(file).readAsStringSync();
      final fileName = file.replaceAll('pythia_generator', 'pythia');
      if (!(File(fileName).existsSync())) {
        File(fileName).createSync();
      }
      File(fileName).writeAsStringSync(newFile);
      File(file).deleteSync();
    }
  }
}
