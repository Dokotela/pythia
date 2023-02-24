import 'package:fhir/r4.dart' as fhir;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'assessment.g.dart';

@riverpod
class Assessment extends _$Assessment {
  @override
  VaxPatient build() => VaxPatient(
        assessmentDate: VaxDate.now(),
        patient: fhir.Patient(),
        observations: [],
        vaxes: {},
      );

  void fromParameters(fhir.Parameters parameters) {
    final assessmentDate =
        ref.read(assessmentDateProvider(parameters)) ?? VaxDate.now();
    final patient = ref.read(assessmentPatientProvider(parameters));
    if (patient == null) {
      ref
          .read(operationOutcomesProvider.notifier)
          .addError('No Patient found in Parameters');
    } else {}
  }
}
