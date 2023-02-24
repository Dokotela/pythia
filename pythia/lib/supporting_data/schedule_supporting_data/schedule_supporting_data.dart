import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_supporting_data.freezed.dart';
part 'schedule_supporting_data.g.dart';

@freezed
class ScheduleSupportingData with _$ScheduleSupportingData {
  ScheduleSupportingData._();
  factory ScheduleSupportingData({
    LiveVirusConflicts? liveVirusConflicts,
    VaccineGroups? vaccineGroups,
    VaccineGroupToAntigenMap? vaccineGroupToAntigenMap,
    CvxToAntigenMap? cvxToAntigenMap,
    VaxObservations? observations,
  }) = _ScheduleSupportingData;

  factory ScheduleSupportingData.fromJson(Map<String, dynamic> json) =>
      _$ScheduleSupportingDataFromJson(json);
}
