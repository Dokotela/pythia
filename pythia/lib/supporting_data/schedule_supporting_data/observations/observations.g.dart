// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Observations _$$_ObservationsFromJson(Map<String, dynamic> json) =>
    _$_Observations(
      observation: (json['observation'] as List<dynamic>?)
          ?.map((e) => Observation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ObservationsToJson(_$_Observations instance) =>
    <String, dynamic>{
      'observation': instance.observation,
    };

_$_Observation _$$_ObservationFromJson(Map<String, dynamic> json) =>
    _$_Observation(
      observationCode: json['observationCode'] as int?,
      observationTitle: json['observationTitle'] as String?,
      group: json['group'] as String?,
      indicationText: json['indicationText'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      clarifyingText: json['clarifyingText'] as String?,
      codedValues: json['codedValues'] == null
          ? null
          : CodedValues.fromJson(json['codedValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ObservationToJson(_$_Observation instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'observationTitle': instance.observationTitle,
      'group': instance.group,
      'indicationText': instance.indicationText,
      'contraindicationText': instance.contraindicationText,
      'clarifyingText': instance.clarifyingText,
      'codedValues': instance.codedValues,
    };

_$_CodedValues _$$_CodedValuesFromJson(Map<String, dynamic> json) =>
    _$_CodedValues(
      codedValue: (json['codedValue'] as List<dynamic>?)
          ?.map((e) => CodedValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CodedValuesToJson(_$_CodedValues instance) =>
    <String, dynamic>{
      'codedValue': instance.codedValue,
    };

_$_CodedValue _$$_CodedValueFromJson(Map<String, dynamic> json) =>
    _$_CodedValue(
      code: json['code'] as String?,
      codeSystem: json['codeSystem'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_CodedValueToJson(_$_CodedValue instance) =>
    <String, dynamic>{
      'code': instance.code,
      'codeSystem': instance.codeSystem,
      'text': instance.text,
    };
