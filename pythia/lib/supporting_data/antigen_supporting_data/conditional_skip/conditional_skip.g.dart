// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_skip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConditionalSkip _$$_ConditionalSkipFromJson(Map<String, dynamic> json) =>
    _$_ConditionalSkip(
      context: $enumDecodeNullable(_$SkipContextEnumMap, json['context']),
      setLogic: $enumDecodeNullable(_$SetLogicEnumMap, json['setLogic']),
      set_: (json['set'] as List<dynamic>?)
          ?.map((e) => VaxSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConditionalSkipToJson(_$_ConditionalSkip instance) =>
    <String, dynamic>{
      'context': _$SkipContextEnumMap[instance.context],
      'setLogic': _$SetLogicEnumMap[instance.setLogic],
      'set': instance.set_,
    };

const _$SkipContextEnumMap = {
  SkipContext.evaluation: 'Evaluation',
  SkipContext.forecast: 'Forecast',
  SkipContext.both: 'Both',
};

const _$SetLogicEnumMap = {
  SetLogic.and: 'AND',
  SetLogic.or: 'OR',
};
