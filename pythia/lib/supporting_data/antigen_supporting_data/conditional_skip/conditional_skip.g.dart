// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conditional_skip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConditionalSkipImpl _$$ConditionalSkipImplFromJson(
        Map<String, dynamic> json) =>
    _$ConditionalSkipImpl(
      context: $enumDecodeNullable(_$SkipContextEnumMap, json['context']),
      setLogic: json['setLogic'] as String?,
      set_: (json['set'] as List<dynamic>?)
          ?.map((e) => VaxSet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ConditionalSkipImplToJson(
    _$ConditionalSkipImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('context', instance.context?.toJson());
  writeNotNull('setLogic', instance.setLogic);
  writeNotNull('set', instance.set_?.map((e) => e.toJson()).toList());
  return val;
}

const _$SkipContextEnumMap = {
  SkipContext.evaluation: 'Evaluation',
  SkipContext.forecast: 'Forecast',
  SkipContext.both: 'Both',
};
