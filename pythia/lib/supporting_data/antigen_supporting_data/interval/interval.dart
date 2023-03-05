import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../pythia.dart';

part 'interval.freezed.dart';
part 'interval.g.dart';

@freezed
class Interval with _$Interval {
  Interval._();
  factory Interval({
    String? fromPrevious,
    int? fromTargetDose,
    List<String>? fromMostRecent,
    ObservationCode? fromRelevantObs,
    String? absMinInt,
    String? minInt,
    String? earliestRecInt,
    String? latestRecInt,
    String? intervalPriority,
    String? effectiveDate,
    String? cessationDate,
  }) = _Interval;

  factory Interval.fromJson(Map<String, dynamic> json) =>
      _$IntervalFromJson(json);
}
