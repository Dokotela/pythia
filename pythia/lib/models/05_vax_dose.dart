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
    required this.dob,
    this.targetDisease,
    this.evalStatus,
    this.evalReason,
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
          ? EvalStatus.not_valid
          : cvx == null
              ? EvalStatus.not_valid
              : expired
                  ? EvalStatus.sub_standard
                  : immunization.isSubpotent?.value ?? false
                      ? EvalStatus.sub_standard
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

  bool notInadvertent(SeriesDose seriesDose) {
    /// Next check if it's an inadvertent vaccine, which just means
    /// check if one of the listed inadvertent vaccines has a CVX code
    /// that matches the CVX code of the dose being evaluated
    final inadvertentIndex = seriesDose.inadvertentVaccine?.indexWhere(
        (element) =>
            element.cvx != null &&
            int.tryParse(element.cvx!) != null &&
            int.parse(element.cvx!) == int.parse(cvx));

    /// If it is, we mark it as inadvertent, and remove it from the
    /// list of doses to evaluate, and we'll then move onto the
    /// next dose
    if (inadvertentIndex != null && inadvertentIndex != -1) {
      inadvertent = true;
      evalStatus = EvalStatus.not_valid;
      evalReason = 'Inadvertent Administration';
      return false;
    } else {
      return true;
    }
  }

  bool validByAge(
    List<VaxAge>? vaxAge,
    VaxDose? previousDose,
    int targetDose,
  ) {
    if (vaxAge == null || vaxAge.isEmpty) {
      validAge = true;
      return true;
    } else {
      final ageIndex = vaxAge.length == 1
          ? 0
          : vaxAge.indexWhere((element) =>
              VaxDate.fromString(element.effectiveDate ?? '1900-01-01') <=
                  dateGiven &&
              VaxDate.fromString(element.cessationDate ?? '2999-12-31') >=
                  dateGiven);
      if (ageIndex == -1) {
        throw 'More than 1 age restriction, but no appropriate effective or '
            'cessation dates found';
      } else {
        final age = vaxAge[ageIndex];
        final absoluteMinimumAgeDate = age.absMinAge == null
            ? VaxDate(1900, 01, 01)
            : dob.change(age.absMinAge!);

        /// If the date administered is less than the absolute minimum age, this
        /// dose is not valid, it was given too young
        if (dateGiven < absoluteMinimumAgeDate) {
          validAge = false;
          validAgeReason = 'Too Young';
          evalStatus = EvalStatus.not_valid;
          return false;
        } else {
          final minimumAgeDate = age.minAge == null
              ? VaxDate(1900, 01, 01)
              : dob.change(age.minAge!);

          /// If the dose was given between the absolute minimum age and the
          /// minimum age, we have to check if it's the first dose, or if the
          /// previous dose is invalid due to age or interval conditions
          if (dateGiven < minimumAgeDate) {
            /// If it's the first targetDose, then it's valid
            // TODO(Dokotela) - they say first targetDose, but I think they mean
            // if any doses have been given previously
            if (targetDose == 0 || previousDose == null) {
              validAge = true;
              validAgeReason = 'Grace Period';
              return true;
            }

            /// If the previous dose is invalid due to age or interval concerns,
            /// and given less than a year before the current dose
            else if (!(previousDose.evalStatus == EvalStatus.not_valid) &&
                (!(previousDose.validAge ?? false) ||
                    !(previousDose.allowedInterval ?? false)) &&
                previousDose.dateGiven.change('1 year') > dateGiven) {
              validAge = false;
              validAgeReason = 'Too Young';
              evalStatus = EvalStatus.not_valid;
              return false;
            } else {
              validAgeReason = 'Grace Period';
              return true;
            }
          } else {
            final maximumAgeDate = age.maxAge == null
                ? VaxDate(2999, 12, 31)
                : dob.change(age.maxAge!);
            if (dateGiven < maximumAgeDate) {
              validAge = true;
              validAgeReason = 'Grace Period';
              return true;
            } else {
              validAge = false;
              validAgeReason = 'Too Old';
              evalStatus = EvalStatus.not_valid;
              return false;
            }
          }
        }
      }
    }
  }

  bool isPreferableInterval(
    List<Interval>? intervals,
    List<VaxDose> doses,
    int targetDose,
  ) {
    /// Like age, if there are no intervals, then the preferred interval is true
    if (intervals == null || intervals.isEmpty) {
      preferredInterval = true;
      return true;
    } else {
      /// Otherwise, we have to evaluate each interval in the list
      for (final interval in intervals) {
        VaxDate referenceDate;

        /// If, we are supposed to get it from the most recent, AND the previous
        /// dose given was "Valid" or "Not Valid" (NOT "Substandard") AND the
        /// previous dose was not inadvertent, then we use the previous dose's
        /// dateGiven as the reference date.
        if ((interval.fromMostRecent?.toLowerCase().contains('y') ?? false) &&
            index != null &&
            index != 0 &&
            doses[index! - 1].evalStatus != null &&
            doses[index! - 1].evalStatus != EvalStatus.sub_standard &&
            !doses[index! - 1].inadvertent) {
          referenceDate = doses[index! - 1].dateGiven;
          // } else if(interval.fromPrevious?.to{
        }
      }
    }
    return true;
  }

  final String doseId;
  final String? volume;
  final VaxDate dateGiven;
  final String cvx;
  final String? mvx;
  final List<String> antigens;
  final VaxDate dob;
  String? targetDisease;
  int targetDoseSatisfied = -1;
  int? index;
  bool inadvertent = false;
  bool? validAge;
  String? validAgeReason;
  bool? preferredInterval;
  String? preferredIntervalReason;
  bool? allowedInterval;
  String? allowedIntervalReason;
  bool? conflict;
  String? conflictReason;
  bool? preferredVaccine;
  String? preferredVaccineReason;
  bool? allowedVaccine;
  String? allowedVaccineReason;
  EvalStatus? evalStatus;
  String? evalReason;
}
