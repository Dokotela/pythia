import '../pythia.dart';

Map<String, VaxAntigen> antigenMap() {
  final returnMap = <String, VaxAntigen>{};
  for (final data in antigenSupportingData) {
    if (data.series != null &&
        data.series!.isNotEmpty &&
        data.series!.first.targetDisease != null) {
      returnMap[data.series!.first.targetDisease!] = VaxAntigen(
        targetDisease: data.series!.first.targetDisease!,
        vaccineGroupName: data.series!.first.vaccineGroup ??
            data.series!.first.targetDisease!,
        series: data.series!.map((e) => VaxSeries(0, e, [])).toList(),
        pastDoses: [],
      );
    }
  }
  return returnMap;
}

Map<String, VaxAntigen> antigenMapWithDoses(
  List<VaxDose> doses,
  Map<String, VaxAntigen> agMap,
) {
  for (final dose in doses) {
    for (final ag in dose.antigens) {
      agMap[ag]!.newDose(dose);
    }
  }
  return agMap;
}
