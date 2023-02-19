// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vaccine_group_contraindications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VaccineGroupContraindications _$$_VaccineGroupContraindicationsFromJson(
        Map<String, dynamic> json) =>
    _$_VaccineGroupContraindications(
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map(
              (e) => GroupContraindication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VaccineGroupContraindicationsToJson(
        _$_VaccineGroupContraindications instance) =>
    <String, dynamic>{
      'contraindication': instance.contraindication,
    };

_$_GroupContraindication _$$_GroupContraindicationFromJson(
        Map<String, dynamic> json) =>
    _$_GroupContraindication(
      observationCode: json['observationCode'] as int?,
      observationTitle: json['observationTitle'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      contraindicationGuidance: json['contraindicationGuidance'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
    );

Map<String, dynamic> _$$_GroupContraindicationToJson(
        _$_GroupContraindication instance) =>
    <String, dynamic>{
      'observationCode': instance.observationCode,
      'observationTitle': instance.observationTitle,
      'contraindicationText': instance.contraindicationText,
      'contraindicationGuidance': instance.contraindicationGuidance,
      'beginAge': instance.beginAge,
      'endAge': instance.endAge,
    };
