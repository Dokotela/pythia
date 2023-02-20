import 'dart:io';

import 'package:fhir/r4.dart';
import 'package:gsheets/gsheets.dart';

import '../utils/api.dart';

Future<void> main() async {
  /// Assign the gsheets credentials
  final gsheets = GSheets(credentials);

  final healthySheet = testCases['healthy'];
  var healthyString = '';
  // final underlyingConditionsSheet = testCases['underlyingConditions'];

  /// Get all of tabs/sheets at the stated location
  final healthySheets = await gsheets.spreadsheet(healthySheet!);
  // final underlyingConditionsSheets =
  //     await gsheets.spreadsheet(underlyingConditionsSheet!);

  /// For each tab in the sheets
  for (final tab in healthySheets.sheets) {
    if (!tab.title.toLowerCase().contains('overview') &&
        !tab.title.toLowerCase().contains('layout')) {
      /// Read all of the values for all of the rows, values is a list of rows
      var values = (await tab.values.allRows());

      /// For each row, evaluate its values
      for (var v in values) {
        if (!v[0].contains('CDC')) {
          final patient = Patient(
            id: v[0],
            name: [HumanName(family: v[1])],
            birthDate: Date(
                '${v[2].split('/').last}-${v[2].split('/')[0]}-${v[2].split('/')[1]}'),
            gender: v[3].contains('F')
                ? Code('female')
                : v[3].contains('M')
                    ? Code('male')
                    : Code('unknown'),
          );
        }
      }
    }
  }

  await File('lib/test_cases/healthy.tsv').writeAsString(healthyString);
}
