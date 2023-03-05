import '../pythia.dart';

Map<String, VaxAntigen> antigenMap(
  List<VaxDose> doses,
  Gender gender,
  VaxObservations observations,
  VaxDate dob,
  VaxDate assessmentDate,
) {
  final agMap = <String, VaxAntigen>{};
  for (final data in antigenSupportingData) {
    if (data.series != null &&
        data.series!.isNotEmpty &&
        data.series!.first.targetDisease != null) {
      agMap[data.series!.first.targetDisease!] = VaxAntigen.fromSeries(
        series: data.series!,
        gender: gender,
        observations: observations,
        dob: dob,
        assessmentDate: assessmentDate,
      );
    }
  }
  for (final dose in doses) {
    for (final ag in dose.antigens) {
      if (agMap.keys.contains(ag)) {
        dose.targetDisease = ag;
        agMap[ag]!.newDose(dose);
      }
    }
  }
  return agMap;
}
