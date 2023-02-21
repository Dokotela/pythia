import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:fhir/r4.dart';
import 'package:pythia_generator/files/schedule_supporting_data.dart';

import '../supporting_strings.dart';

Future<void> createPatients(TestCasesStrings string) async {
  final values = const CsvToListConverter()
      .convert(string.cases, fieldDelimiter: '\t', eol: '\n');
  final parametersList = <Parameters>[];

  /// Because gsheets changes dates to ints and starts all epochs at this date
  /// https://stackoverflow.com/questions/65700906/google-sheets-get-date-value-as-number-problem
  final epoch = DateTime(1899, 12, 30);

  /// I'm assuming that the first row is going to contain headers
  final assessmentDateIndex = values[0].indexOf('Assessment_Date');
  final doses = values[0].where((element) =>
      element.toString().toLowerCase().contains('date_administered'));
  final doseIndexes = doses.map((e) => values[0].indexOf(e)).toList();
  final cdsiObservations = values[0].where((element) =>
      element.toString().toLowerCase().contains('observation_code'));
  final cdsiObservationIndexes =
      cdsiObservations.map((e) => values[0].indexOf(e)).toList();

  /// For each row, evaluate its values
  for (var v in values) {
    if (!v[0].contains('CDC')) {
      final patient = Patient(
        id: v[0],
        name: [HumanName(family: v[1])],
        birthDate: Date(epoch.add(Duration(days: v[2]))),
        gender: v[3].contains('F')
            ? Code('female')
            : v[3].contains('M')
                ? Code('male')
                : Code('unknown'),
      );

      final immunizationList = <Immunization>[];
      final conditionList = <Condition>[];
      for (var i = 0; i < doseIndexes.length; i++) {
        final index = doseIndexes[i];
        if (v[index] != null && v[index] != '') {
          immunizationList.add(Immunization(
            id: '${patient.id}_dose${i + 1}',
            patient: patient.thisReference,
            vaccineCode: CodeableConcept(
              coding: [
                Coding(
                  system: FhirUri('http://hl7.org/fhir/sid/cvx'),
                  code: Code(v[index + 2]),
                  display: v[index + 1],
                ),
                if (v[index + 3] != null && v[index + 3] != '')
                  Coding(
                    system: FhirUri('http://hl7.org/fhir/sid/mvx'),
                    code: Code(v[index + 3]),
                    display: v[index + 1],
                  ),
              ],
            ),
            occurrenceDateTime:
                FhirDateTime(epoch.add(Duration(days: v[index]))),
          ));
        }
      }
      for (var i = 0; i < cdsiObservationIndexes.length; i++) {
        final index = cdsiObservationIndexes[i];
        final obsIndex = scheduleSupportingData.observations?.observation
            ?.indexWhere((element) => element.observationCode == v[index + 1]);
        if (obsIndex == 0) {
          print(v[index]);
        }
        conditionList.add(Condition(
          subject: patient.thisReference,
          onsetDateTime: v[index + 2] != null && v[index + 2] != ''
              ? FhirDateTime(epoch.add(Duration(days: v[index + 2])))
              : null,
          recordedDate: v[index + 2] != null && v[index + 2] != ''
              ? FhirDateTime(epoch.add(Duration(days: v[index + 2])))
              : null,
          code: CodeableConcept(
            coding: [
              Coding(
                  system: FhirUri(
                      'https://www.cdc.gov/vaccines/programs/iis/cdsi.html'),
                  code: v[index],
                  display: v[index + 1]),
              Coding(),
            ],
          ),
        ));
      }
      parametersList.add(
        Parameters(
          id: 'parameters-${patient.id}',
          parameter: [
            ParametersParameter(
                name: Date(epoch.add(Duration(days: v[assessmentDateIndex])))
                    .toString()),
            ParametersParameter(name: 'Patient', resource: patient),
            ...immunizationList.map(
                (e) => ParametersParameter(name: 'immunization', resource: e))
          ],
        ),
      );
    }
  }
  var writeString = '';
  parametersList.forEach((element) {
    writeString += '${jsonEncode(element.toJson())}\n';
  });
  await File('lib/test_cases/testCases.ndjson').writeAsString(writeString);
}
