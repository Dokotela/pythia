import 'dart:convert';
import 'dart:io';

import 'package:pythia/pythia.dart';

void main(){
  final dir = Directory('JSON');
  final files = dir.listSync().where(
      (file) => file.path.endsWith('.json'));
  for (final file in files) {
    if(!file.path.contains('Antigen') && !file.path.contains('validate')){
      print('Processing ${file.path}');
      final fileString = File(file.path).readAsStringSync();
      final map = json.decode(fileString);
      final antigenSupportingData = ScheduleSupportingData.fromJson(map);
      final antigenSupportingDataJson = antigenSupportingData.toJson();
      final antigenSupportingDataJsonString = jsonPrettyPrint(antigenSupportingDataJson);
      final outputPath = file.path
          .replaceAll('.json', '_validate.json');
      File(outputPath).writeAsStringSync(antigenSupportingDataJsonString);
    }
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(dynamic data) => jsonEncoder.convert(data);
