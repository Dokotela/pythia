import '../pythia.dart';

class VaxAntigen {
  VaxAntigen({
    required this.targetDisease,
    required this.vaccineGroupName,
    required this.pastDoses,
    required this.series,
  });

  void newDose(VaxDose dose) {
    /// For each dose appropriate for this antigen, we add it to the complete
    /// list of doses
    pastDoses.add(dose);

    /// If the evalStatus is null (meaning it has a CVX code, an administered
    /// date, is not expired, and is not subpotent, we had it to the list of
    /// vaccines that we should evaluate)
    if (dose.evalStatus == null) {
      series.forEach((element) {
        element.doses.add(dose);
      });
    }
  }

  void evaluate() {
    series.forEach((element) => element.evaluate());
  }

  String targetDisease;
  String vaccineGroupName;
  List<VaxDose> pastDoses;
  List<VaxSeries> series;
}
