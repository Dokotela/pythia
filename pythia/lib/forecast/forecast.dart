import 'package:fhir/r4.dart';
import 'package:pythia/pythia.dart';
import 'package:riverpod/riverpod.dart';

void forecastFromMap(Map<String, dynamic> parameters) {
  if (parameters['resourceType'] == 'Parameters') {
    final newParameters = Parameters.fromJson(parameters);
    return forecastFromParameters(newParameters);
  }
}

void forecastFromParameters(Parameters parameters) {
  final container = ProviderContainer();

  /// Parse out and organize all of the information from input parameters
  final patient = container.read(patientForAssessmentProvider(parameters));

  final agMap = antigenMap();
}
