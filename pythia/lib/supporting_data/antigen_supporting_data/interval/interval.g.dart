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

Map<String, dynamic> _$$_IntervalToJson(_$_Interval instance) =>
    <String, dynamic>{
      'fromPrevious': _$FromPreviousEnumMap[instance.fromPrevious],
      'fromTargetDose': _$FromTargetEnumMap[instance.fromTargetDose],
      'fromMostRecent': instance.fromMostRecent,
      'fromRelevantObs': instance.fromRelevantObs,
      'absMinInt': instance.absMinInt,
      'minInt': instance.minInt,
      'earliestRecInt': instance.earliestRecInt,
      'latestRecInt': instance.latestRecInt,
      'intervalPriority': instance.intervalPriority,
      'effectiveDate': instance.effectiveDate,
      'cessationDate': instance.cessationDate,
    };

const _$FromPreviousEnumMap = {
  FromPrevious.yes: 'Y',
  FromPrevious.no: 'N',
};

const _$FromTargetEnumMap = {
  FromTarget.dose1: '1',
  FromTarget.dose2: '2',
  FromTarget.na: '',
};
