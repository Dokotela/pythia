import 'package:fhir/r4.dart';
import 'package:pythia/pythia.dart';
import 'package:riverpod/riverpod.dart';

Bundle forecastFromMap(Map<String, dynamic> parameters) {
  if (parameters['resourceType'] == 'Parameters') {
    final newParameters = Parameters.fromJson(parameters);
    return forecastFromParameters(newParameters);
  }
  return Bundle();
}

Bundle forecastFromParameters(Parameters parameters) {
  final container = ProviderContainer();

  /// Parse out and organize all of the information from input parameters
  final patient = container.read(patientForAssessmentProvider(parameters));

  final agMap = antigenMap(
    patient.pastDoses,
    patient.gender,
    patient.observations,
    patient.birthdate,
    patient.assessmentDate,
  );

  agMap.forEach((k, v) => v.groups.forEach((key, value) => container
      .read(seriesGroupCompleteProvider.notifier)
      .newSeriesGroup(k, key)));
  return Bundle();
}
