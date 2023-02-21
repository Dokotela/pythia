import 'package:fhir/r4.dart';
import 'package:pythia/forecast/imm_list.dart';
import 'package:riverpod/riverpod.dart';

Future<void> forecastFromMap(Map<String, dynamic> parameters) async {
  if (parameters['resourceType'] == 'Parameters') {
    final newParameters = Parameters.fromJson(parameters);
    return forecastFromParameters(newParameters);
  }
}

Future<void> forecastFromParameters(Parameters parameters) async {
  final container = ProviderContainer();
  container
      .read(immListProvider.notifier)
      .addImmunizationsFromParameters(parameters);
  final immList = container.read(immListProvider);
  for (var imm in immList) {
    print(imm.toJson());
  }
}
