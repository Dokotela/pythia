import '../pythia.dart';

class VaxAntigen {
  VaxAntigen._({
    required this.targetDisease,
    required this.vaccineGroupName,
    required this.groups,
  });

  factory VaxAntigen.fromSeries({
    required List<Series> series,
    required Gender gender,
    required VaxObservations observations,
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
      groups: groups,
    );
  }

  void newDose(VaxDose dose) {
    for (final key in groups.keys) {
      groups[key]!.newDose(dose);
    }
  }

  void evaluate() {
    for (final key in groups.keys) {
      groups[key]!.evaluate();
    }
  }

  String targetDisease;
  String vaccineGroupName;
  Map<String, VaxGroup> groups;
}
