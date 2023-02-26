import 'package:riverpod/riverpod.dart';

import '../pythia.dart';

class VaxSeries {
  VaxSeries({
    required this.targetDisease,
    required this.series,
    required this.assessmentDate,
    required this.dob,
  });
  String targetDisease;
  int targetDose = 0;
  Map<String, VaxDose> completedTargetDoses = {};
  Series series;
  List<VaxDose> doses = [];
  VaxDate assessmentDate;
  VaxDate dob;
  SkipContext skipContext = SkipContext.evaluation;

  VaxDose? get lastCompleted =>
      completedTargetDoses.isEmpty ? null : completedTargetDoses.values.last;

  void evaluate() {
    for (final seriesDose in series.seriesDose ?? <SeriesDose>[]) {}
  }

  bool canSkip(SeriesDose seriesDose) {
    final skip = false;

    /// Look in the skip conditions
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
        final setLogic = conditionalSkip.setLogic ?? SetLogic.or;
        final conditionSkip = false;
        // for (final condition in conditionalSkip.set_ ?? <VaxSet>[]) {
        //   final conditionLogic = condition.conditionLogic ?? 'OR';
        //   bool conditionIsTrue = true;
        //   if(conditional)
        // }
      }
    }
    return skip;
  }

  bool skipSet() {
    return false;
  }

  bool skipCondition(VaxSet set) {
    /// Check and see if we're using AND or OR logic
    final andLogic = set.conditionLogic == 'AND';

    //     @JsonValue('Age')
    // age,
    // @JsonValue('Vaccine Count by Age')
    // countByAge,
    // @JsonValue('Interval')
    // interval,
    // @JsonValue('Vaccine Count by Date')
    // countByDate,
    // @JsonValue('Completed Series')

    /// Evaluate each condition in the set
    for (final condition in set.condition ?? <VaxCondition>[]) {
      /// The first date the patient was at an appropriate age for this skip
      /// condition to possibly apply
      final conditionalSkipBeginAgeDate = condition.beginAge == null
          ? VaxDate(1900, 01, 01)
          : dob.changeIfNotNull(condition.beginAge);

      /// The last date the patient was at an appropriate age for this skip
      /// condition to possibly apply
      final conditionalSkipEndAgeDate = condition.endAge == null
          ? VaxDate(29990, 12, 31)
          : dob.changeIfNotNull(condition.beginAge);

      /// The reference date we're going to use to check if this skip condition
      /// actually DOES apply
      // TODO(Dokotela) - this needs to be changed for forecasts
      final conditionalSkipReferenceDate = skipContext == SkipContext.evaluation
          ? doses.first.dateGiven
          : VaxDate.now();

      /// Reference TABLE 6-6 CONDITIONAL TYPE OF AGE – IS THE CONDITION MET?
      final isAgeMet =
          conditionalSkipEndAgeDate > conditionalSkipReferenceDate &&
              conditionalSkipReferenceDate >= conditionalSkipBeginAgeDate;

      /// If the age condition is wrong and we're using AND logic, then this
      /// condition is NOT met
      if (!isAgeMet && andLogic) {
        return false;
      } else {
        final container = ProviderContainer();

        final conditionalSkipSeriesGroup =
            container.read(seriesGroupCompleteProvider)[targetDisease]
                ?[condition.seriesGroups];
      }
      // TODO(Dokotela) - should this count from subpar doses too?
      // final conditionalSkipIntervalDate =
      //     lastCompleted?.dateGiven.changeIfNotNull(condition.interval);

// final conditionalSkipEndDate -
// final conditionalSkipDoseType -
// final conditionalSkipDoseCount Logic -
// final conditionalSkipDoseCount -
// final conditionalSkipSeriesGroup
    }
    return false;
  }
}
