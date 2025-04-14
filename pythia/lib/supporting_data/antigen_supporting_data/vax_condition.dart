import '../../pythia.dart';

class VaxCondition {
  VaxCondition({
    this.conditionID,
    this.conditionType,
    this.startDate,
    this.endDate,
    this.beginAge,
    this.endAge,
    this.interval,
    this.doseCount,
    this.doseType,
    this.doseCountLogic,
    this.vaccineTypes,
    this.seriesGroups,
  });

  final String? conditionID;
  final String? conditionType;
  final String? startDate;
  final String? endDate;
  final String? beginAge;
  final String? endAge;
  final String? interval;
  final String? doseCount;
  final DoseType? doseType;
  final String? doseCountLogic;
  final String? vaccineTypes;
  final String? seriesGroups;

  factory VaxCondition.fromJson(Map<String, dynamic> json) {
    return VaxCondition(
      conditionID: json['conditionID'] as String?,
      conditionType: json['conditionType'] as String?,
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
      interval: json['interval'] as String?,
      doseCount: json['doseCount'] as String?,
      doseType: json['doseType'] == null
          ? null
          : DoseType.fromJson(json['doseType'] as Map<String, dynamic>),
      doseCountLogic: json['doseCountLogic'] as String?,
      vaccineTypes: json['vaccineTypes'] as String?,
      seriesGroups: json['seriesGroups'] as String?,
    );
  }
}
