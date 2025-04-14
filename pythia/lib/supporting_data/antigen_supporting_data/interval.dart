import '../../pythia.dart';

class Interval {
  Interval({
    this.fromPrevious,
    this.fromTargetDose,
    this.fromMostRecent,
    this.fromRelevantObs,
    this.absMinInt,
    this.minInt,
    this.earliestRecInt,
    this.latestRecInt,
    this.intervalPriority,
    this.effectiveDate,
    this.cessationDate,
  });

  final String? fromPrevious;
  final int? fromTargetDose;
  final String? fromMostRecent;
  final ObservationCode? fromRelevantObs;
  final String? absMinInt;
  final String? minInt;
  final String? earliestRecInt;
  final String? latestRecInt;
  final String? intervalPriority;
  final String? effectiveDate;
  final String? cessationDate;

  factory Interval.fromJson(Map<String, dynamic> json) {
    return Interval(
      fromPrevious: json['fromPrevious'] as String?,
      fromTargetDose: json['fromTargetDose'] as int?,
      fromMostRecent: json['fromMostRecent'] as String?,
      fromRelevantObs: json['fromRelevantObs'] == null
          ? null
          : ObservationCode.fromJson(
              json['fromRelevantObs'] as Map<String, dynamic>),
      absMinInt: json['absMinInt'] as String?,
      minInt: json['minInt'] as String?,
      earliestRecInt: json['earliestRecInt'] as String?,
      latestRecInt: json['latestRecInt'] as String?,
      intervalPriority: json['intervalPriority'] as String?,
      effectiveDate: json['effectiveDate'] as String?,
      cessationDate: json['cessationDate'] as String?,
    );
  }

  List<int>? get mostRecent {
    if (fromMostRecent == null) {
      return null;
    } else {
      final List<int> codes = fromMostRecent!
          .split(';')
          .map((String e) => int.tryParse(e.trim()) ?? -1)
          .toList();
      codes.removeWhere((int element) => element == -1);
      return codes;
    }
  }
}
