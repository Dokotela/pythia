import '../pythia.dart';

class VaxSeries {
  VaxSeries(
    this.targetDose,
    this.series,
    this.doses,
  );
  int targetDose;
  Series series;
  List<VaxDose> doses;
}
