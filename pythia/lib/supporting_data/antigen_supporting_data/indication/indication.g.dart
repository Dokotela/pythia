// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IndicationImpl _$$IndicationImplFromJson(Map<String, dynamic> json) =>
    _$IndicationImpl(
      observationCode: json['observationCode'] == null
          ? null
          : ObservationCode.fromJson(
              json['observationCode'] as Map<String, dynamic>),
      description: json['description'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
      guidance: json['guidance'] as String?,
    );

Map<String, dynamic> _$$IndicationImplToJson(_$IndicationImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observationCode', instance.observationCode?.toJson());
  writeNotNull('description', instance.description);
  writeNotNull('beginAge', instance.beginAge);
  writeNotNull('endAge', instance.endAge);
  writeNotNull('guidance', instance.guidance);
  return val;
}
