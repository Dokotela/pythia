import '../pythia.dart';

class VaxAntigen {
  VaxAntigen._({
    required this.targetDisease,
    required this.vaccineGroupName,
    required this.pastDoses,
    required this.groups,
  });

  factory VaxAntigen.fromSeries({
    required List<Series> series,
    required Gender gender,
    required List<VaxObservation> observations,
    required VaxDate dob,
    required VaxDate assessmentDate,
  }) {
    final Map<String, VaxGroup> groups = <String, VaxGroup>{};
    relevantSeries(gender, series, observations, dob, assessmentDate)
        .forEach((element) {
      final nextGroup = element.selectSeries?.seriesGroup ?? 'none';
      if (!groups.keys.contains(nextGroup)) {
        groups[nextGroup] = VaxGroup(
          targetDisease: series.first.targetDisease!,
          vaccineGroup: nextGroup,
          vaccineGroupName:
              series.first.vaccineGroup ?? series.first.targetDisease!,
          series: [],
          assessmentDate: assessmentDate,
          dob: dob,
        );
      }
      groups[nextGroup]!.newSeries(element);
    });

    return VaxAntigen._(
      targetDisease: series.first.targetDisease!,
      vaccineGroupName:
          series.first.vaccineGroup ?? series.first.targetDisease!,
      pastDoses: [],
      groups: groups,
    );
  }

  void newDose(VaxDose dose) {
    /// For each dose appropriate for this antigen, we add it to the complete
    /// list of doses
    pastDoses.add(dose);

    /// If the evalStatus is null (meaning it has a CVX code, an administered
    /// date, is not expired, and is not subpotent, we had it to the list of
    /// vaccines that we should evaluate)
    if (dose.evalStatus == null) {
      for (final key in groups.keys) {
        groups[key]!.newDose(dose);
      }
    }
  }

  void evaluate() {
    for (final key in groups.keys) {
      groups[key]!.evaluate();
    }
  }

  String targetDisease;
  String vaccineGroupName;
  List<VaxDose> pastDoses;
  Map<String, VaxGroup> groups;
}
