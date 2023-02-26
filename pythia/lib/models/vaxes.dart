import '../pythia.dart';

class Vaxes {
  Vaxes({
    required this.immForEval,
    required this.substandard,
    required this.series,
  });

  void newImmunization(String id, bool isSubstandard) {
    if (isSubstandard) {
      substandard.add(id);
    } else {
      immForEval.add(id);
    }
  }

  /// List of all immunizations that can be evaluated, this is, they were not
  /// expired when given, and they are not subpotent, for whatever reason
  final List<String> immForEval;

  /// If they were given after they were expired or are subpotent, they are
  /// not added to the immForEval list, they are instead added to this list
  final List<String> substandard;

  /// This is the list of all of the series for a particular antigen
  final List<Series> series;
}
