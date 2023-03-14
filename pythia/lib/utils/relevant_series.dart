import '../pythia.dart';

List<Series> relevantSeries(
  Gender gender,
  List<Series> oldSeries,
  VaxObservations patientObservations,
  VaxDate dob,
  VaxDate assessmentDate,
) {
  final series = oldSeries.toList();
  series.retainWhere((element) =>
      element.requiredGender == null ||
      element.requiredGender!.isEmpty ||
      element.requiredGender!.contains(gender));

  /// Keep each series where....
  series.retainWhere((series) {
    /// If it's a Standard or Evaluation Only Series
    if (series.seriesType == 'Standard' ||
        series.seriesType == 'Evaluation Only') {
      return true;
    }

    /// If it's a Risk group
    else if (series.seriesType == 'Risk') {
      /// Get the list of indications for this series
      final indicationList =
          series.indication?.map((e) => e.observationCode?.code ?? '').toList();

      /// If the indicationList is null, it means there are no conditions to
      /// meet (this is probably an error in the rules), but either way,
      /// we don't include this series
      if (indicationList == null) {
        return false;
      } else {
        /// Because in the above mapping, we inserted a '' if there are any
        /// nulls, so we remove those
        indicationList.retainWhere((e) => e != '');

        /// If that leaves an empty list, there are no indications (again,
        /// probably an error and we don't include this series)
        if (indicationList.isEmpty) {
          return false;
        }

        /// Otherwise, we look to see if there is an observation from the
        /// list of the patient's observations, that is also included as
        /// one of the indications for this series
        else {
          final obsIndex = indicationList.indexWhere((obsCode) {
            final indicationIndex = patientObservations.codeIndex(obsCode);
            if (indicationIndex == -1) {
              return false;
            } else {
              return dob.changeIfNotNullElseMin(
                          series.indication![indicationIndex].beginAge) <=
                      assessmentDate &&
                  assessmentDate <
                      dob.changeIfNotNullElseMax(
                          series.indication![indicationIndex].endAge);
            }
          });
          return obsIndex != -1;
        }
      }
    } else {
      return false;
    }
  });

  return series;
}
