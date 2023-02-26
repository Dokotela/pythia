import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'eval_immunization.g.dart';

@riverpod
class EvalImmunization extends _$EvalImmunization {
  @override
  ImmEval build(String id) => ImmEval.fromImmunization(
        Immunization(
          vaccineCode: CodeableConcept(),
          patient: Reference(),
        ),
      );

  void fromImmEval(ImmEval immEval) => state = immEval;
}
