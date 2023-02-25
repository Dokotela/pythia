import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'assessment.g.dart';

@riverpod
class Assessment extends _$Assessment {
  @override
  VaxPatient build() => VaxPatient(
        assessmentDate: VaxDate(1900, 01, 01),
        patient: Patient(),
        conditions: [],
        immunizations: [],
        observations: [],
        vaxes: Map.fromIterable(
          antigenSupportingDataMap.keys,
          key: (item) => item,
          value: (item) => Vaxes(immunizations: [], series: []),
        ),
      );

  void fromParameters(Parameters parameters) {
    final patient = ref.read(vaxPatientFromParametersProvider(parameters));
    if (patient == null) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No Patient found in Parameters');
    } else if (patient.patient.birthDate == null ||
        !patient.patient.birthDate!.isValid) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('Patient does not have a birthdate');
    } else {
      state = patient;

      for (final disease in state.vaxes.keys) {
        state.vaxes[disease]!.immunizations.sort((a, b) =>
            (a.occurrenceDateTime?.value ?? DateTime(1900))
                .compareTo(b.occurrenceDateTime?.value ?? DateTime(1900)));
        relevantSeries(
          genderFromPatient(state.patient),
          state.vaxes[disease]!.series.toList(),
          VaxDate.fromDateTime(state.patient.birthDate!.value!),
          state.assessmentDate,
        );
      }
    }
  }
}
