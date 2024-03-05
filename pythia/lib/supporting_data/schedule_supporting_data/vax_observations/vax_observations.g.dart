// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vax_observations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VaxObservationsImpl _$$VaxObservationsImplFromJson(
        Map<String, dynamic> json) =>
    _$VaxObservationsImpl(
      observation: (json['observation'] as List<dynamic>?)
          ?.map((e) => VaxObservation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VaxObservationsImplToJson(
    _$VaxObservationsImpl instance) {
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

_$VaxObservationImpl _$$VaxObservationImplFromJson(Map<String, dynamic> json) =>
    _$VaxObservationImpl(
      observationCode: json['observationCode'] as String?,
      observationTitle: json['observationTitle'] as String?,
      group: json['group'] as String?,
      indicationText: json['indicationText'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      clarifyingText: json['clarifyingText'] as String?,
      codedValues: json['codedValues'] == null
          ? null
          : CodedValues.fromJson(json['codedValues'] as Map<String, dynamic>),
      period: json['period'] == null
          ? null
          : Period.fromJson(json['period'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$VaxObservationImplToJson(
    _$VaxObservationImpl instance) {
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
  writeNotNull('period', instance.period?.toJson());
  return val;
}

_$CodedValuesImpl _$$CodedValuesImplFromJson(Map<String, dynamic> json) =>
    _$CodedValuesImpl(
      codedValue: (json['codedValue'] as List<dynamic>?)
          ?.map((e) => CodedValue.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CodedValuesImplToJson(_$CodedValuesImpl instance) {
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

_$CodedValueImpl _$$CodedValueImplFromJson(Map<String, dynamic> json) =>
    _$CodedValueImpl(
      code: json['code'] as String?,
      codeSystem: json['codeSystem'] as String?,
      text: json['text'] as String?,
    );

Map<String, dynamic> _$$CodedValueImplToJson(_$CodedValueImpl instance) {
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
