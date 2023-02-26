import 'package:fhir/r4.dart';

import '../pythia.dart';

class VaxDose {
  VaxDose({
    required this.doseId,
    this.volume,
    required this.dateGiven,
    required this.cvx,
    this.mvx,
    required this.antigens,
    this.evalStatus,
    this.evalReason,
  });

  factory VaxDose.fromImmunization(Immunization immunization) {
    VaxDate? dateGiven;
    bool expired = false;

    /// Try and get the CVX code from the immunization
    final cvx = cvxFromImmunization(immunization);

    /// if there is a date given
    if (immunization.occurrenceDateTime != null ||
        immunization.occurrenceDateTime!.isValid) {
      dateGiven = VaxDate.fromDateTime(immunization.occurrenceDateTime!.value!);

      /// as long as there's a date given, we also see if there's an expiration
      /// date, if not, we assume the vaccine was valid, if there is an
      /// expiration date, we ensure that it didn't occur before the vaccine
      /// was given
      expired = immunization.expirationDate == null ||
              !immunization.expirationDate!.isValid
          ? false
          : immunization.expirationDate!.value!
              .isBefore(immunization.occurrenceDateTime!.value!);
    }

    return VaxDose(
      doseId: immunization.id!,
      volume: null,
      dateGiven: dateGiven ?? VaxDate(2999, 01, 01),
      cvx: cvx ?? 'none',
      mvx: mvxFromImmunization(immunization),
      antigens: antigensFromCvx(cvx),
      evalStatus: dateGiven == null
          ? 'Not Valid'
          : cvx == null
              ? 'Not Valid'
              : expired
                  ? 'Sub-standard'
                  : immunization.isSubpotent?.value ?? false
                      ? 'Sub-standard'
                      : null,
      evalReason: dateGiven == null
          ? 'No Date Given'
          : cvx == null
              ? 'No Cvx'
              : expired
                  ? 'Expired'
                  : immunization.isSubpotent?.value ?? false
                      ? subpotentReason(immunization)
                      : null,
    );
  }

  String doseId;
  String? volume;
  VaxDate dateGiven;
  String cvx;
  String? mvx;
  List<String> antigens;
  String? evalStatus;
  String? evalReason;
}
