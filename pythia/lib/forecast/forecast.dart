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
  container
      .read(immunizationHistoryProvider.notifier)
      .addImmunizationsFromParameters(parameters);
  final immList = container.read(immunizationHistoryProvider);
  container
      .read(antigenAdministeredProvider.notifier)
      .addImmunizations(immList);
  container.read(antigenAdministeredProvider).forEach((key, value) {
    print('$key : ${value.map((e) => e.occurrenceDateTime).toList()}');
  });
}
