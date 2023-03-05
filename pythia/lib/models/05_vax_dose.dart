import 'package:fhir/r4.dart';
import 'package:pythia/providers/observations.dart';
import 'package:riverpod/riverpod.dart';

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

  int get cvxInt => int.parse(cvx);

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
        VaxDate? referenceDate;

        /// If, we are supposed to get it from the most recent, AND the previous
        /// dose given was "Valid" or "Not Valid" (NOT "Substandard") AND the
        /// previous dose was not inadvertent, then we use the previous dose's
        /// dateGiven as the reference date.
        if ((interval.fromPrevious?.toLowerCase().contains('y') ?? false) &&
            index != null &&
            index != 0 &&
            doses[index! - 1].evalStatus != null &&
            doses[index! - 1].evalStatus != EvalStatus.sub_standard &&
            !doses[index! - 1].inadvertent) {
          referenceDate = doses[index! - 1].dateGiven;
        }

        /// If the from previous is not no (should be N but just in case we
        /// check for anything containing an N), and the fromTargetDose is
        /// not null and it's less than the current targetDose (which shouldn't
        /// be possible, but just covering edge cases)
        else if ((interval.fromPrevious?.toLowerCase().contains('n') ?? true) &&
            interval.fromTargetDose != null &&
            interval.fromTargetDose! <= targetDose) {
          /// Again, just ensuring that a proper satisfied targetDose exists
          final doseIndex = doses.indexWhere((element) =>
              element.targetDoseSatisfied == interval.fromTargetDose! - 1);

          /// If it doesn't, then we return false, this condition is not met
          if (doseIndex == -1) {
            return false;
          } else {
            referenceDate = doses[doseIndex].dateGiven;
          }
        }

        /// If it's not from the immediate previous dose, and fromMostRecent
        /// does not equal null ("n/a" on the spreadsheets) and it's not an
        /// inadvertent vaccine
        else if ((interval.fromPrevious?.toLowerCase().contains('n') ?? true) &&
            interval.fromMostRecent != null &&
            index != null &&
            index != 0 &&
            !doses[index! - 1].inadvertent) {
          /// We check to see what was the last vaccine given that's included
          /// in the fromPrevious list
          final fromPrevious = interval.mostRecent;

          /// If there is no fromPrevious list (this is probably an error) but
          /// it would also mean this condition is not met, and we return false
          if (fromPrevious == null) {
            return false;
          } else {
            /// Otherwise, we look for the most recent dose satisfies the
            /// condition (i.e. it's CVX code is in the list)
            final mostRecentIndex = doses.lastIndexWhere(
                (element) => fromPrevious.contains(element.cvxInt));

            /// If we don't find one, again, this condition is false
            if (mostRecentIndex == -1) {
              return false;
            } else {
              /// Otherwise we use that date administered as the referenceDate
              referenceDate = doses[mostRecentIndex].dateGiven;
            }
          }
        } else if ((interval.fromPrevious?.toLowerCase().contains('n') ??
                true) &&
            interval.fromRelevantObs != null) {
          /// For this one we have to review the list of conditions, which we
          /// stored in a Provider
          final container = ProviderContainer();
          final observations = container.read(observationsProvider);
          final index = observations.codesAsInt?.indexWhere(
              (element) => element == interval.fromRelevantObs?.codeAsInt);

          /// If we don't find the observation, then this condtion is false
          if (index == null || index == -1) {
            return false;
          } else {
            /// Otherwise, the reference date is the most recent active date of
            /// the appropriate observation
            final obs = observations.observation![index];
            referenceDate = obs.period?.end == null || !obs.period!.end!.isValid
                ? VaxDate.now()
                : VaxDate.fromDateTime(obs.period!.end!.value!);
          }
        }

        /// If we never found a referenceDate, then this interval doesn't meet
        /// the requirements
        if (referenceDate == null) {
          return false;
        } else {
          final absoluteMinimumIntervalDate =
              referenceDate.changeIfNotNull(interval.absMinInt);
          final minimumIntervaldate =
              referenceDate.changeIfNotNull(interval.minInt);

          /// If it's prior to the absoluteMinimumIntervalDate then it's not
          /// a valid inteval
          if (dateGiven < absoluteMinimumIntervalDate) {
            preferredInterval = false;
            preferredIntervalReason = 'Too Soon';
            return false;

            /// If it's between the absoluteMinimumIntervalDate and the
            /// minimumIntervalDate
          } else if (absoluteMinimumIntervalDate <= dateGiven &&
              dateGiven < minimumIntervaldate) {
            /// If it's the first targetDose, then it's valid due to the
            /// Grace Period
            if (targetDose == 0) {
              preferredIntervalReason = preferredIntervalReason == null
                  ? 'Grace Period'
                  : '$preferredIntervalReason, Grace Period';
            }

            /// Otherwise, Is the evaluation status of the previous dose given
            /// "not valid" due to age or interval recommendations and < 1 year
            /// from the vaccine dose administered being evaluated?
            else if (doses.isNotEmpty && index != null) {
              final previousDose = doses[index! - 1];
              if ((!(previousDose.validAge ?? true) ||
                      !(previousDose.allowedInterval ?? true)) &&
                  previousDose.dateGiven.change('1 year') > dateGiven) {
                preferredInterval = false;
                preferredIntervalReason = 'Too Soon';
                return false;
              } else {
                preferredIntervalReason = preferredIntervalReason == null
                    ? 'Grace Period'
                    : '$preferredIntervalReason, Grace Period';
              }
            }

            /// If there are no previous doses to compare to, then this is
            /// not a valid interval, it was given too soon
            else {
              preferredInterval = false;
              preferredIntervalReason = 'Too Soon';
              return false;
            }
          }

          /// If it's given after the minimumIntervalDate then it's not valid
          else if (dateGiven > minimumIntervaldate) {
            preferredInterval = false;
            preferredIntervalReason = 'Too Late';
            return false;
          }
        }
      }
    }

    /// We should have caught all of the incorrect Intervals above. Therefore,
    /// this should counted as a preferredInterval dose
    preferredInterval = true;
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
