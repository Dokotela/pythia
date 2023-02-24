import 'package:fhir/r4.dart' as fhir;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'vax_observation.g.dart';

/// This is called VaxObservations to differentiate them from FHIR Observations
@riverpod
class VaxObservation extends _$VaxObservation {
  @override
  List<Observation> build() => <Observation>[];

  void fromCondition(fhir.Condition condition) {}

  void fromParameters(fhir.Parameters parameters) {
    final conditionsList = <fhir.Condition>[];
    for (var parameter
        in parameters.parameter ?? <fhir.ParametersParameter>[]) {
      if (parameter.resource is Condition) {
        conditionsList.add(parameter.resource as fhir.Condition);
      }
    }
    // TODO(Dokotela) look at other systems besides Snomed
    for (var condition in conditionsList) {
      final snomedIndex = condition.code?.coding?.indexWhere((element) =>
          element.system == fhir.FhirUri('http://snomed.info/sct'));
      final snomedCode = snomedIndex == null || snomedIndex == -1
          ? null
          : condition.code!.coding![snomedIndex].code;
      if (snomedCode != null) {
        final obsCodeIndex = scheduleSupportingData.observations?.observation
            ?.indexWhere((element) {
          final snomedCodeIndex = element.codedValues?.codedValue?.indexWhere(
              (element) =>
                  element.codeSystem == 'SNOMED' && element.code == snomedCode);
          return !(snomedCodeIndex == null || snomedCodeIndex == -1);
        });
        if (obsCodeIndex != null && obsCodeIndex != -1) {
          state = [
            ...state,
            scheduleSupportingData.observations!.observation![obsCodeIndex],
          ];
        }
      }
    }
  }
}
