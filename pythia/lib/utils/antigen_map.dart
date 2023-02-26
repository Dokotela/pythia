import '../pythia.dart';

Map<String, VaxAntigen> antigenMap(
  List<VaxDose> doses,
  Gender gender,
  List<VaxObservation> observations,
  VaxDate dob,
  VaxDate assessmentDate,
) {
  final agMap = <String, VaxAntigen>{};
  for (final data in antigenSupportingData) {
    if (data.series != null &&
        data.series!.isNotEmpty &&
        data.series!.first.targetDisease != null) {
      agMap[data.series!.first.targetDisease!] = VaxAntigen(
        targetDisease: data.series!.first.targetDisease!,
        vaccineGroupName: data.series!.first.vaccineGroup ??
            data.series!.first.targetDisease!,
        series: relevantSeries(
          gender,
          data.series!,
          observations,
          dob,
          assessmentDate,
        )
            .map((e) => VaxSeries(
                  series: e,
                  assessmentDate: assessmentDate,
                  dob: dob,
                ))
            .toList(),
        pastDoses: [],
      );
    }
  }
  for (final dose in doses) {
    for (final ag in dose.antigens) {
      if (agMap.keys.contains(ag)) {
        agMap[ag]!.newDose(dose);
      }
    }
  }
  return agMap;
}
