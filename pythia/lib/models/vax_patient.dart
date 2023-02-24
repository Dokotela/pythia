import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'vax_patient.g.dart';

@riverpod
class VaxPatient extends _$VaxPatient {
  @override
  Patient build() => Patient();

  void assignPatient(Patient patient) => state = patient;

  void fromParameters(Parameters parameters) {
    final patientIndex = parameters.parameter
        ?.indexWhere((element) => element.resource is Patient);
    if (patientIndex == null || patientIndex == -1) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No patient provided in parameters');
    } else {
      assignPatient(parameters.parameter![patientIndex].resource as Patient);
    }
  }

  VaxDate? birthDate() {
    if (state.birthDate?.value == null || !state.birthDate!.isValid) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('Patient does not have a valid birthdate');
      return null;
    } else {
      return VaxDate.fromDateTime(state.birthDate!.value!);
    }
  }
}
