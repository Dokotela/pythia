// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineContraindications _$$_VaccineContraindicationsFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineContraindications(
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map((e) =>
              VaccineContraindication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineContraindicationsToJson(
        _$_VaccineContraindications instance) =>
    <String, dynamic>{
      'contraindication': instance.contraindication,
    };

_$_VaccineContraindication _$$_VaccineContraindicationFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineContraindication(
      observationCode: json['observationCode'] as int?,
      observationTitle: json['observationTitle'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      contraindicationGuidance: json['contraindicationGuidance'] as String?,
      contraindicatedVaccine: (json['contraindicatedVaccine'] as List<dynamic>?)
          ?.map((e) => Vaccine.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineContraindicationToJson(
        _$_VaccineContraindication instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'observationTitle': instance.observationTitle,
      'contraindicationText': instance.contraindicationText,
      'contraindicationGuidance': instance.contraindicationGuidance,
      'contraindicatedVaccine': instance.contraindicatedVaccine,
    };
