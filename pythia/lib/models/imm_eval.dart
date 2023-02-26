import 'package:fhir/r4.dart';

import '../pythia.dart';

class ImmEval {
  ImmEval._({
    required this.immunization,
    this.cvx,
    this.dateGiven,
    this.evalStatus,
  });

  factory ImmEval.fromImmunization(Immunization immunization) => ImmEval._(
        immunization: immunization,
        cvx: cvxFromImmunization(immunization),
        dateGiven: immunization.occurrenceDateTime == null ||
                !immunization.occurrenceDateTime!.isValid
            ? null
            : VaxDate.fromDateTime(
                immunization.occurrenceDateTime!.value!,
              ),
        evalStatus: 
      );

  final Immunization immunization;
  String? cvx;
  VaxDate? dateGiven;
  String? evalStatus;
}
