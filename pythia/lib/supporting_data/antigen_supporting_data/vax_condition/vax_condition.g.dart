// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_condition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaxCondition _$$_VaxConditionFromJson(Map<String, dynamic> json) =>
    _$_VaxCondition(
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

Map<String, dynamic> _$$_VaxConditionToJson(_$_VaxCondition instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('conditionID', instance.conditionID);
  writeNotNull('conditionType', _$ConditionTypeEnumMap[instance.conditionType]);
  writeNotNull('startDate', instance.startDate);
  writeNotNull('endDate', instance.endDate);
  writeNotNull('beginAge', instance.beginAge);
  writeNotNull('endAge', instance.endAge);
  writeNotNull('interval', instance.interval);
  writeNotNull('doseCount', instance.doseCount);
  writeNotNull('doseType', _$DoseTypeEnumMap[instance.doseType]);
  writeNotNull(
      'doseCountLogic', _$DoseCountLogicEnumMap[instance.doseCountLogic]);
  writeNotNull('vaccineTypes', instance.vaccineTypes);
  writeNotNull('seriesGroups', instance.seriesGroups);
  return val;
}

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