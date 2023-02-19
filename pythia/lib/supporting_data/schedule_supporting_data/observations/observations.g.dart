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

Map<String, dynamic> _$$_ObservationsToJson(_$_Observations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'observation', instance.observation?.map((e) => e.toJson()).toList());
  return val;
}

_$_Observation _$$_ObservationFromJson(Map<String, dynamic> json) =>
    _$_Observation(
      observationCode: json['observationCode'] as String?,
      observationTitle: json['observationTitle'] as String?,
      group: json['group'] as String?,
      indicationText: json['indicationText'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      clarifyingText: json['clarifyingText'] as String?,
      codedValues: json['codedValues'] == null
          ? null
          : CodedValues.fromJson(json['codedValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ObservationToJson(_$_Observation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('observationCode', instance.observationCode);
  writeNotNull('observationTitle', instance.observationTitle);
  writeNotNull('group', instance.group);
  writeNotNull('indicationText', instance.indicationText);
  writeNotNull('contraindicationText', instance.contraindicationText);
  writeNotNull('clarifyingText', instance.clarifyingText);
  writeNotNull('codedValues', instance.codedValues?.toJson());
  return val;
}

_$_CodedValues _$$_CodedValuesFromJson(Map<String, dynamic> json) =>
    _$_CodedValues(
      codedValue: (json['codedValue'] as List<dynamic>?)
          ?.map((e) => CodedValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CodedValuesToJson(_$_CodedValues instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'codedValue', instance.codedValue?.map((e) => e.toJson()).toList());
  return val;
}

_$_CodedValue _$$_CodedValueFromJson(Map<String, dynamic> json) =>
    _$_CodedValue(
      code: json['code'] as String?,
      codeSystem: json['codeSystem'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$_CodedValueToJson(_$_CodedValue instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('codeSystem', instance.codeSystem);
  writeNotNull('text', instance.text);
  return val;
}
