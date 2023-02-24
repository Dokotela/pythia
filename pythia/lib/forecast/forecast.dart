import 'package:fhir/r4.dart';
import 'package:riverpod/riverpod.dart';

import '../pythia.dart';

Future<void> forecastFromMap(Map<String, dynamic> parameters) async {
  if (parameters['resourceType'] == 'Parameters') {
    final newParameters = Parameters.fromJson(parameters);
    return forecastFromParameters(newParameters);
  }
}

Future<void> forecastFromParameters(Parameters parameters) async {
  final container = ProviderContainer();

  /// Find the patient
  container.read(vaxPatientProvider.notifier).fromParameters(parameters);

  /// List the patient's immunization history
  container
      .read(immunizationHistoryProvider.notifier)
      .fromParameters(parameters);
  final immList = container.read(immunizationHistoryProvider);

  /// Break that list up into individual antigens
  container
      .read(antigenAdministeredProvider.notifier)
      .addImmunizations(immList);

  container.read(patientSeriesProvider.notifier).byGender();
}
