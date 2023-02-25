import '../pythia.dart';

List<Series> relevantSeries(
  Gender gender,
  List<Series> series,
  VaxDate dob,
  VaxDate assessmentDate,
) {
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
      /// Get the list of conditions that the patient has, for Vaccine
      /// Logic these are known as Conditions
      final obsList =
          series.indication?.map((e) => e.observationCode?.code ?? '').toList();

      /// If the obsList is null, the patient doesn't meet requirements for
      /// risk series
      if (obsList == null) {
        return false;
      } else {
        /// Because in the above mapping, we inserted a '' if there are any
        /// nulls, so we remove those
        obsList.retainWhere((e) => e != '');

        /// If that leaves an empty list, there are no applicable conditions
        if (obsList.isEmpty) {
          return false;
        }

        /// Otherwise, we look to see if there is an observation from the
        /// list of the patient's observations, that is also included as
        /// one of the indications for this series
        else {
          final obsIndex = obsList.indexWhere((obsCode) {
            final indicationIndex = series.indication?.indexWhere(
                (indication) =>
                    indication.observationCode?.code != null &&
                    indication.observationCode?.code == indication);
            if (indicationIndex == null || indicationIndex == -1) {
              return false;
            } else {
              return dob.minIfNull(
                          series.indication![indicationIndex].beginAge) <=
                      assessmentDate &&
                  assessmentDate <
                      dob.maxIfNull(series.indication![indicationIndex].endAge);
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
