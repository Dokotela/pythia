import 'package:riverpod/riverpod.dart';

import '../pythia.dart';

class VaxSeries {
  VaxSeries({
    required this.targetDisease,
    required this.series,
    required this.assessmentDate,
    required this.dob,
  });

  VaxDose? get lastCompleted {
    final index = evaluatedDoses
        .lastIndexWhere((element) => element.targetDoseSatisfied != -1);
    return index == -1 ? null : evaluatedDoses[index];
  }

  VaxDose? get currentDose =>
      doses.isEmpty ? null : doses[evaluatedDoses.length];

  void evaluate() {
    for (var i = 0; i < (series.seriesDose?.length ?? 0); i++) {
      evaluatedTargetDose[i] = 'Not Satisfied';
    }

    /// We can't evaluate if there are no doses
    if (doses.isNotEmpty) {
      /// Keep track of what the dose's index is in all of the doses given
      for (var i = 0; i < doses.length; i++) {
        doses[i].index = i;
      }

      /// For the evaluation we have to evaluate each dose in the series
      for (final seriesDose in series.seriesDose ?? <SeriesDose>[]) {
        /// We only run through this while we still have doses to evaluate
        if (evaluatedDoses.length == doses.length) {
          break;
        }

        /// And for each dose in the series, we look at the doses that were
        /// actually given to the patient to see if any of them are valid
        /// We start at the next dose, so if evaluatedDoses has a length of 2,
        /// meaning 2 doses have been evaluated, we look at index 2 of doses,
        /// which is the third dose given
        for (var i = evaluatedDoses.length; i < doses.length; i++) {
          final dose = doses[i];

          /// If the evalStatus of the dose is not null, this should mean that
          /// during the first step, checking if it was substandard for some
          /// reason, we found that it was, and thus this dose cannot be
          /// evaluated
          if (dose.evalStatus == null) {
            /// First we check if this dose can be skipped, if it CAN be
            /// skipped, we record that targetDose as being completed,
            /// increment the targetDose by 1, and break from this for loop
            /// because we are no longer trying to satisfy that target dose
            if (canSkip(seriesDose, SkipContext.evaluation, dose.dateGiven)) {
              evaluatedTargetDose[targetDose] = 'Skipped';
              targetDose++;
              break;
            } else {
              /// Check if it's an Inadvertent vaccine, as long as it IS NOT
              if (dose.notInadvertent(seriesDose)) {
                /// Ensure that it's valid by age
                if (dose.validByAge(
                  seriesDose.age,
                  evaluatedDoses.isEmpty ? null : evaluatedDoses.last,
                  targetDose,
                )) {
                  if (dose.isAllowedInterval(
                      seriesDose.interval, doses, targetDose)) {
                    if (!dose.isLiveVirusConflict(doses)) {
                      dose.isPreferredType(seriesDose.preferableVaccine, dob);
                      if (dose.isAllowedType(
                          seriesDose.allowableVaccine, dob)) {
                        dose.evalStatus = EvalStatus.valid;
                        dose.targetDoseSatisfied = targetDose;
                        evaluatedDoses.add(dose);
                        evaluatedTargetDose[targetDose] = 'Satisfied';
                        targetDose++;
                        break;
                      }
                    }
                  }
                }
              }
              evaluatedDoses.add(dose);
            }
          }
        }
      }
    }
  }

  void evaluateConditionalSkip({VaxDate? assessmentDate}) {
    assessmentDate ??= VaxDate.now();
    for (var i = targetDose; i < (series.seriesDose?.length ?? 0); i++) {
      final seriesDose = series.seriesDose![i];

      /// Normal skip check, except this time for forecast
      if (canSkip(seriesDose, SkipContext.forecast, assessmentDate)) {
        evaluatedTargetDose[targetDose] = 'Skipped';
        targetDose++;
      } else {
        break;
      }
    }
  }

  void determineContraindications({
    VaxDate? assessmentDate,
    required List<VaccineContraindication> vaccineContraindications,
  }) {
    assessmentDate ??= VaxDate.now();
    final preferableVaccines =
        series.seriesDose?[targetDose].preferableVaccine ?? <Vaccine>[];

    /// Check each of the contraindications (we already ensured they apply
    /// to the patient in a previous step)
    final container = ProviderContainer();
    final currentObservations =
        container.read(observationsProvider).observation?.toList() ??
            <VaxObservation>[];
    // TODO(Dokotela): if there's no date associated with an observation, do
    // we assume it's active and apply it? Currently, we do.
    /// We check and see which of the patient's observations are applicable for
    /// the given assessmentDate
    currentObservations.retainWhere((element) =>
        VaxDate.minIfNullDateTime(element.period?.start?.value) <=
            assessmentDate! &&
        assessmentDate < VaxDate.maxIfNullDateTime(element.period?.end?.value));

    /// Get the list of the ints associated with the observations
    final obsInts = currentObservations.map((e) => e.codeAsInt ?? -1).toList();
    obsInts.removeWhere((element) => element == -1);

    /// We remove any contraindications that are not applicable, by ensuring that
    /// their code appears in the list of current observations of the patient
    final currentContraindications = vaccineContraindications
        .where((element) => obsInts.contains(element.codeAsInt));
    final contraindicatedVaccines = currentContraindications
        .expand((element) => element.contraindicatedVaccine ?? <Vaccine>[])
        .toSet();

    for (final vaccineContraindication in contraindicatedVaccines) {
      /// If the dates are appropriate to apply to a patient, we note that
      /// this dose is contraindicated, and stop checking
      if (dob.changeIfNotNullElseMin(vaccineContraindication.beginAge) <=
              assessmentDate &&
          assessmentDate <
              dob.changeIfNotNullElseMax(vaccineContraindication.endAge)) {
        preferableVaccines.removeWhere(
            (element) => element.cvxAsInt == vaccineContraindication.cvxAsInt);
        if (preferableVaccines.isEmpty) {
          isContraindicated = true;
          break;
        }
      }
    }
  }

  bool canSkip(
    SeriesDose seriesDose,
    SkipContext skipContext,
    VaxDate evalDate,
  ) {
    /// Look in the skip conditions, just a note, because I'm trying to mirror
    /// what the XML would like like if transformed to JSON, I've left this as
    /// a list. What it should really be is a map. It's possible there could
    /// be a conditionalSkip entry for evaluation, forecast, and/or both.
    /// The outcome of that though, is that if there is a conditionalSkip entry
    /// that is true, then that means we can skip the dose for what we're doing,
    /// at least as long as it's a context that applies
    for (final conditionalSkip
        in seriesDose.conditionalSkip ?? <ConditionalSkip>[]) {
      /// If the context is both OR it matches our current context (e.g. either
      /// Evaluation or Forecast)
      if (conditionalSkip.context == SkipContext.both ||
          conditionalSkip.context == skipContext) {
        /// Set Logic can be either AND or OR. If it's not define we assume OR.
        /// This means that as we look through the sets, if there's any one
        /// set that is true, it means this dose can be skipped. If it's AND
        /// logic, it means ALL sets sets must b true
        final andLogic = conditionalSkip.setLogic?.toLowerCase() == 'and';
        for (final conditionSet in conditionalSkip.set_ ?? <VaxSet>[]) {
          final skip = skipSet(conditionSet, skipContext, evalDate);

          /// If that set DOES NOT qualify to skip and we're using AND logic,
          /// then this whole conditional skip is false,
          if (!skip && andLogic) {
            return false;
          }

          /// Alternatively, if the set DOES qualify and we're using OR logic,
          /// then the whole conditional skip is true
          else if (skip && !andLogic) {
            return true;
          }
        }

        /// If we've made it this far with AND logic it means that there were no
        /// unskippable sets, and therefore the conditional skip is true,
        /// otherwise it means we're using OR logic and found no true conditions,
        /// so we return a value of falsex
        return andLogic ? true : false;
      }
    }
    return false;
  }

  bool skipSet(VaxSet set, SkipContext skipContext, VaxDate evalDate) {
    /// Check and see if we're using AND or OR logic
    final andLogic = set.conditionLogic?.toLowerCase() == 'and';

    /// Is the condition for this set met
    var conditionMet = false;

    /// Evaluate each condition in the set
    for (final condition in set.condition ?? <VaxCondition>[]) {
      /// There are 5 types of conditions
      /// Age: is the patient at an appropriate age to skip this dose
      /// Completed Series: is there a series in the same group that has
      /// a status of completed
      /// Interval: Is there a dose that has been given within the interval
      /// specified
      /// Count by Age: were a specified number of doses (and either higher,
      /// lower, or equal to this number) within the age range specified
      /// Count by Dates: were a specified number of doses (and either higher,
      /// lower, or equal to this number) within the date range specified
      switch (condition.conditionType) {
        case 'Age':
          {
            /// The first date the patient was at an appropriate age for this skip
            /// condition to possibly apply
            final conditionalSkipBeginAgeDate =
                dob.changeIfNotNullElseMin(condition.beginAge);

            /// The last date the patient was at an appropriate age for this skip
            /// condition to possibly apply
            final conditionalSkipEndAgeDate =
                dob.changeIfNotNullElseMax(condition.beginAge);

            /// The reference date we're going to use to check if this skip
            /// condition actually DOES apply
            final conditionalSkipReferenceDate = evalDate;

            /// Reference TABLE 6-6 CONDITIONAL TYPE OF AGE – IS THE CONDITION MET?
            conditionMet =
                conditionalSkipEndAgeDate > conditionalSkipReferenceDate &&
                    conditionalSkipReferenceDate >= conditionalSkipBeginAgeDate;
          }
          break;
        case 'Completed Series':
          {
            final container = ProviderContainer();

            /// TABLE 6-7 CONDITIONAL TYPE OF COMPLETED SERIES – IS THE CONDITION MET?
            conditionMet =
                container.read(seriesGroupCompleteProvider)[targetDisease]
                        ?[condition.seriesGroups] ??
                    false;
          }
          break;
        case 'Interval':
          {
            if (targetDose == 0) {
              conditionMet = false;
            } else {
              /// If we can't find a date to compare to, then we assume this
              /// skip condition doesn't apply, and we set the compare date
              /// to maximum
              final conditionalSkipIntervalDate = lastCompleted!.dateGiven
                  .changeIfNotNullElseMax(condition.interval);

              /// The reference date we're going to use to check if this skip condition
              /// actually DOES apply
              final conditionalSkipReferenceDate = evalDate;

              /// Reference TABLE 6-8 CONDITIONAL TYPE OF INTERVAL – IS THE CONDITION MET?
              conditionMet =
                  conditionalSkipReferenceDate >= conditionalSkipIntervalDate;
            }
          }
          break;
        case 'Vaccine Count by Age':
          {
            /// Dates we need for calculations
            final conditionalSkipBeginAgeDate =
                dob.changeIfNotNullElseMin(condition.beginAge);
            final conditionalSkipEndAgeDate =
                dob.changeIfNotNullElseMax(condition.beginAge);

            /// Total count
            int totalCount = 0;

            /// Vaccine Types are just a string that are separated by a semi-
            /// colon, so we split the string, trim the space,and then try and
            /// parse it into an int (cvx code) so we can compare it
            final types = condition.vaccineTypes
                    ?.split(';')
                    .map((e) => int.tryParse(e.trim()) ?? -1)
                    .toList() ??
                [];

            /// Just to deal with any edge cases
            types.retainWhere((element) => element != -1);

            /// Look through all of the doses we've already evaluated
            for (final dose in evaluatedDoses) {
              /// If the Cvx code is one of the allowed types for this
              /// conditional skip
              if (types.contains(dose.cvx)) {
                /// If we're counting ANY doses, or we're only counding Valid
                /// doses and this is a Valid dose
                if (condition.doseType == DoseType.total ||
                    (condition.doseType == DoseType.valid &&
                        dose.evalStatus == 'Valid')) {
                  /// If on or after the conditional skip begin age date and
                  /// before the conditional skip end age date OR on or after
                  /// the conditional skip start date and before conditional
                  /// skip end date
                  if (conditionalSkipEndAgeDate > dose.dateGiven &&
                      dose.dateGiven >= conditionalSkipBeginAgeDate) {
                    totalCount++;
                  }
                }
              }
            }
            if (condition.doseCountLogic != null &&
                condition.doseCount != null &&
                int.tryParse(condition.doseCount!) != null) {
              if (condition.doseCountLogic!.toLowerCase().contains('greater')) {
                conditionMet = totalCount > int.parse(condition.doseCount!);
              } else if (condition.doseCountLogic!
                  .toLowerCase()
                  .contains('less')) {
                conditionMet = totalCount < int.parse(condition.doseCount!);
              } else if (condition.doseCountLogic!
                  .toLowerCase()
                  .contains('equal')) {
                conditionMet = totalCount == int.parse(condition.doseCount!);
              } else {
                throw 'The Dose Count Logic for $targetDisease, '
                    '${series.seriesName}, Dose $targetDose, '
                    'Set ${set.setID}, Condition ${condition.conditionID} '
                    'is not valid';
              }
            }
          }
          break;
        case 'Vaccine Count by Date':
          {
            final conditionalSkipStartDate = condition.startDate == null
                ? null
                : VaxDate.fromStringMax(condition.startDate!);
            final conditionalSkipEndDate = condition.endDate == null
                ? null
                : VaxDate.fromStringMin(condition.endDate!);

            /// Total count
            int totalCount = 0;

            /// Vaccine Types are just a string that are separated by a semi-
            /// colon, so we split the string, trim the space,and then try and
            /// parse it into an int (cvx code) so we can compare it
            final types = condition.vaccineTypes
                    ?.split(';')
                    .map((e) => int.tryParse(e.trim()) ?? -1)
                    .toList() ??
                [];

            /// Just to deal with any edge cases
            types.retainWhere((element) => element != -1);

            /// Look through all of the doses we've already evaluated
            for (final dose in evaluatedDoses) {
              /// If the Cvx code is one of the allowed types for this
              /// conditional skip
              if (types.contains(dose.cvx)) {
                /// If we're counting ANY doses, or we're only counding Valid
                /// doses and this is a Valid dose
                if (condition.doseType == DoseType.total ||
                    (condition.doseType == DoseType.valid &&
                        dose.evalStatus == 'Valid')) {
                  /// If on or after the conditional skip begin age date and
                  /// before the conditional skip end age date OR on or after
                  /// the conditional skip start date and before conditional
                  /// skip end date
                  if (conditionalSkipStartDate != null &&
                      conditionalSkipEndDate != null &&
                      conditionalSkipEndDate > dose.dateGiven &&
                      dose.dateGiven >= conditionalSkipStartDate) {
                    totalCount++;
                  }
                }
              }
            }
            if (condition.doseCountLogic != null &&
                condition.doseCount != null &&
                int.tryParse(condition.doseCount!) != null) {
              if (condition.doseCountLogic!.toLowerCase().contains('greater')) {
                conditionMet = totalCount > int.parse(condition.doseCount!);
              } else if (condition.doseCountLogic!
                  .toLowerCase()
                  .contains('less')) {
                conditionMet = totalCount < int.parse(condition.doseCount!);
              } else if (condition.doseCountLogic!
                  .toLowerCase()
                  .contains('equal')) {
                conditionMet = totalCount == int.parse(condition.doseCount!);
              } else {
                throw 'The Dose Count Logic for $targetDisease, '
                    '${series.seriesName}, Dose $targetDose, '
                    'Set ${set.setID}, Condition ${condition.conditionID} '
                    'is not valid';
              }
            }
          }
          break;

        default:
          {
            print('$targetDisease : ${series.seriesName}');
          }
          break;
      }

      /// If the condition is NOT met and we're using AND logic, then this set
      /// is NOT met
      if (!conditionMet && andLogic) {
        return false;
      }

      /// Alternatively, if the condition IS met and we are using OR logic, then
      /// the containing set is true
      else if (conditionMet && !andLogic) {
        return true;
      }
    }

    /// If we've made it this far with AND logic it means that there were no
    /// false conditions, therefore the set is true, otherwise it means we're
    /// using OR logic and found no true conditions, so the set is false
    return andLogic ? true : false;
  }

  void determineForecastNeed() {}

  String targetDisease;
  int targetDose = 0;
  Series series;
  List<VaxDose> doses = [];
  List<VaxDose> evaluatedDoses = [];
  Map<int, String> evaluatedTargetDose = {};
  VaxDate assessmentDate;
  VaxDate dob;
  bool isContraindicated = false;
  String seriesStatus = 'Not Complete';
  bool shouldRecieveAnotherDose = true;
  String forecastReason = '';
}
