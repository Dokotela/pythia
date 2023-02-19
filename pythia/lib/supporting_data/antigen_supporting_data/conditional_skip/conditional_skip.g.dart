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

Map<String, dynamic> _$$_ConditionalSkipToJson(_$_ConditionalSkip instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', _$SkipContextEnumMap[instance.context]);
  writeNotNull('setLogic', _$SetLogicEnumMap[instance.setLogic]);
  writeNotNull('set', instance.set_?.map((e) => e.toJson()).toList());
  return val;
}

const _$SkipContextEnumMap = {
  SkipContext.evaluation: 'Evaluation',
  SkipContext.forecast: 'Forecast',
  SkipContext.both: 'Both',
};

const _$SetLogicEnumMap = {
  SetLogic.and: 'AND',
  SetLogic.or: 'OR',
};
