// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Interval _$$_IntervalFromJson(Map<String, dynamic> json) => _$_Interval(
      fromPrevious:
          $enumDecodeNullable(_$FromPreviousEnumMap, json['fromPrevious']),
      fromTargetDose:
          $enumDecodeNullable(_$FromTargetEnumMap, json['fromTargetDose']),
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

Map<String, dynamic> _$$_IntervalToJson(_$_Interval instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fromPrevious', _$FromPreviousEnumMap[instance.fromPrevious]);
  writeNotNull('fromTargetDose', _$FromTargetEnumMap[instance.fromTargetDose]);
  writeNotNull('fromMostRecent', instance.fromMostRecent);
  writeNotNull('fromRelevantObs', instance.fromRelevantObs?.toJson());
  writeNotNull('absMinInt', instance.absMinInt);
  writeNotNull('minInt', instance.minInt);
  writeNotNull('earliestRecInt', instance.earliestRecInt);
  writeNotNull('latestRecInt', instance.latestRecInt);
  writeNotNull('intervalPriority', instance.intervalPriority);
  writeNotNull('effectiveDate', instance.effectiveDate);
  writeNotNull('cessationDate', instance.cessationDate);
  return val;
}

const _$FromPreviousEnumMap = {
  FromPrevious.yes: 'Y',
  FromPrevious.no: 'N',
};

const _$FromTargetEnumMap = {
  FromTarget.dose1: '1',
  FromTarget.dose2: '2',
  FromTarget.na: '',
};