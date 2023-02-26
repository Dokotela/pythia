import '../pythia.dart';

class VaxGroup {
  VaxGroup({
    required this.targetDisease,
    required this.vaccineGroup,
    required this.vaccineGroupName,
    required this.series,
    required this.assessmentDate,
    required this.dob,
  });

  void newSeries(Series newSeries) => series.add(VaxSeries(
      targetDisease: targetDisease,
      series: newSeries,
      assessmentDate: assessmentDate,
      dob: dob));

  void newDose(VaxDose dose) =>
      series.forEach((element) => element.doses.add(dose));

  void evaluate() {
    series.forEach((element) => element.evaluate());
  }

  String targetDisease;
  String vaccineGroup;
  String vaccineGroupName;
  List<VaxSeries> series;
  VaxDate assessmentDate;
  VaxDate dob;
}
