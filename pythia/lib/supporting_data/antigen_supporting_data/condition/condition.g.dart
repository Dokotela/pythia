// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Condition _$$_ConditionFromJson(Map<String, dynamic> json) => _$_Condition(
      conditionID: json['conditionID'] as String?,
      conditionType:
          $enumDecodeNullable(_$ConditionTypeEnumMap, json['conditionType']),
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
      interval: json['interval'] as String?,
      doseCount: json['doseCount'] as String?,
      doseType: $enumDecodeNullable(_$DoseTypeEnumMap, json['doseType']),
      doseCountLogic:
          $enumDecodeNullable(_$DoseCountLogicEnumMap, json['doseCountLogic']),
      vaccineTypes: json['vaccineTypes'] as String?,
      seriesGroups: json['seriesGroups'] as String?,
    );

Map<String, dynamic> _$$_ConditionToJson(_$_Condition instance) =>
    <String, dynamic>{
      'conditionID': instance.conditionID,
      'conditionType': _$ConditionTypeEnumMap[instance.conditionType],
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'beginAge': instance.beginAge,
      'endAge': instance.endAge,
      'interval': instance.interval,
      'doseCount': instance.doseCount,
      'doseType': _$DoseTypeEnumMap[instance.doseType],
      'doseCountLogic': _$DoseCountLogicEnumMap[instance.doseCountLogic],
      'vaccineTypes': instance.vaccineTypes,
      'seriesGroups': instance.seriesGroups,
    };

const _$ConditionTypeEnumMap = {
  ConditionType.age: 'Age',
  ConditionType.countByAge: 'Vaccine Count by Age',
  ConditionType.interval: 'Interval',
  ConditionType.countByDate: 'Vaccine Count by Date',
  ConditionType.completedSeries: 'Completed Series',
};

const _$DoseTypeEnumMap = {
  DoseType.total: 'Total',
  DoseType.valid: 'Valid',
  DoseType.none: '',
};

const _$DoseCountLogicEnumMap = {
  DoseCountLogic.none: '',
  DoseCountLogic.greaterThan: 'greater than',
  DoseCountLogic.equalTo: 'equal to',
};
