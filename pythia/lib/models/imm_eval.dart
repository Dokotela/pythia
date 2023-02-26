import 'package:fhir/r4.dart';

import '../pythia.dart';

class ImmEval {
  ImmEval._({
    required this.immunization,
    this.cvx,
    this.dateGiven,
    this.evalStatus,
    required this.substandard,
  });

  factory ImmEval.fromImmunization(Immunization immunization) {
    final thisIsSubstandard = isSubstandard(immunization);
    final newImmunization = immunization.newIdIfNoId() as Immunization;
    return ImmEval._(
      immunization: newImmunization,
      cvx: cvxFromImmunization(immunization),
      dateGiven: immunization.occurrenceDateTime == null ||
              !immunization.occurrenceDateTime!.isValid
          ? null
          : VaxDate.fromDateTime(
              immunization.occurrenceDateTime!.value!,
            ),
      evalStatus: thisIsSubstandard ? 'substandard' : null,
      substandard: thisIsSubstandard,
    );
  }

  final Immunization immunization;
  String? cvx;
  VaxDate? dateGiven;
  String? evalStatus;
  bool substandard;
}
