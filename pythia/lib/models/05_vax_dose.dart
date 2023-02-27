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
    required this.dob,
  });

  factory VaxDose.fromImmunization(
    Immunization immunization,
    VaxDate dob,
  ) {
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
      dob: dob,
    );
  }

  bool validByAge(
    String? maximumAge,
    String? minimumAge,
    String? absoluteMinimumAge,
    VaxDose? previousDose,
    int targetDose,
  ) {
    final absoluteMinimumAgeDate = absoluteMinimumAge == null
        ? VaxDate(1900, 01, 01)
        : dob.change(absoluteMinimumAge);

    /// If the date administered is less than the absolute minimum age, this
    /// dose is not valid, it was given too young
    if (dateGiven < absoluteMinimumAgeDate) {
      evalStatus = 'Not Valid';
      evalReason = 'Too Young';
      return false;
    } else {
      final minimumAgeDate =
          minimumAge == null ? VaxDate(1900, 01, 01) : dob.change(minimumAge);

      /// If the dose was given between the absolute minimum age and the
      /// minimum age, we have to check if it's the first dose, or if the
      /// previous dose is invalid due to age or interval conditions
      if (dateGiven < minimumAgeDate) {
        /// If it's the first targetDose, then it's valid
        // TODO(Dokotela) - they say first targetDose, but I think they mean
        // if any doses have been given previously
        if (targetDose == 0 || previousDose == null) {
          evalReason = 'Grace Period';
          return true;
        }

        /// If the previous dose in invalid due to age or interval concerns,
        /// and given less than a year before the current dose
        else if (previousDose.evalStatus == 'Not Valid' &&
            (previousDose.evalReason == 'Too Old' ||
                previousDose.evalReason == 'Too Young' ||
                previousDose.evalReason == 'Too Soon') &&
            previousDose.dateGiven.change('1 year') > dateGiven) {
          evalStatus = 'Not Valid';
          evalReason = 'Too Young';
          return false;
        } else {
          evalReason = 'Grace Period';
          return true;
        }
      } else {
        final maximumAgeDate =
            maximumAge == null ? VaxDate(2999, 12, 31) : dob.change(maximumAge);
        if (dateGiven < maximumAgeDate) {
          evalReason = 'Grace Period';
          return true;
        } else {
          evalStatus = 'Not Valid';
          evalReason = 'Too Old';
          return false;
        }
      }
    }
  }

// Maximum Age Date12/31/2999
// Calculated date (CALCDTAGE-4)Minimum Age Date01/01/1900

  String doseId;
  String? volume;
  VaxDate dateGiven;
  String cvx;
  String? mvx;
  List<String> antigens;
  String? evalStatus;
  String? evalReason;
  int targetDoseSatisfied = -1;
  final VaxDate dob;
}
