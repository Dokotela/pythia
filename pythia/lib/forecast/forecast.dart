import 'package:fhir/r4.dart';
import 'package:pythia/pythia.dart';
import 'package:riverpod/riverpod.dart';

Future<void> forecastFromMap(Map<String, dynamic> parameters) async {
  if (parameters['resourceType'] == 'Parameters') {
    final newParameters = Parameters.fromJson(parameters);
    return forecastFromParameters(newParameters);
  }
}

Future<void> forecastFromParameters(Parameters parameters) async {
  final container = ProviderContainer();

  /// Find the patient
  container.read(assessmentProvider.notifier).fromParameters(parameters);
}
