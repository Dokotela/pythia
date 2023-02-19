// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'antigen_supporting_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AntigenSupportingData _$$_AntigenSupportingDataFromJson(
        Map<String, dynamic> json) =>
    _$_AntigenSupportingData(
      targetDisease:
          $enumDecodeNullable(_$TargetDiseaseEnumMap, json['targetDisease']),
      vaccineGroup:
          $enumDecodeNullable(_$VaccineGroupNameEnumMap, json['vaccineGroup']),
      immunity: json['immunity'] == null
          ? null
          : Immunity.fromJson(json['immunity'] as Map<String, dynamic>),
      contraindications: json['contraindications'] == null
          ? null
          : Contraindications.fromJson(
              json['contraindications'] as Map<String, dynamic>),
      series: (json['series'] as List<dynamic>?)
          ?.map((e) => Series.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AntigenSupportingDataToJson(
        _$_AntigenSupportingData instance) =>
    <String, dynamic>{
      'targetDisease': _$TargetDiseaseEnumMap[instance.targetDisease],
      'vaccineGroup': _$VaccineGroupNameEnumMap[instance.vaccineGroup],
      'immunity': instance.immunity,
      'contraindications': instance.contraindications,
      'series': instance.series,
    };

const _$TargetDiseaseEnumMap = {
  TargetDisease.cholera: 'Cholera',
  TargetDisease.covid_19: 'COVID-19',
  TargetDisease.diptheria: 'Diphtheria',
  TargetDisease.ebola: 'Ebola',
  TargetDisease.hepA: 'HepA',
  TargetDisease.hepB: 'HepB',
  TargetDisease.hib: 'Hib',
  TargetDisease.hpv: 'HPV',
  TargetDisease.influenza: 'Influenza',
  TargetDisease.japaneseEncephalitis: 'Japanese Encephalitis',
  TargetDisease.meningococcal: 'Meningococcal',
  TargetDisease.meningococcalB: 'Meningococcal B',
  TargetDisease.measles: 'Measles',
  TargetDisease.mumps: 'Mumps',
  TargetDisease.pertussis: 'Pertussis',
  TargetDisease.pneumococcal: 'Pneumococcal',
  TargetDisease.polio: 'Polio',
  TargetDisease.rabies: 'Rabies',
  TargetDisease.rotavirus: 'Rotavirus',
  TargetDisease.rubella: 'Rubella',
  TargetDisease.tetanus: 'Tetanus',
  TargetDisease.tuberculosis: 'Tuberculosis',
  TargetDisease.typhoid: 'Typhoid',
  TargetDisease.varicella: 'Varicella',
  TargetDisease.yellowFever: 'Yellow Fever',
  TargetDisease.zoster: 'Zoster',
};

const _$VaccineGroupNameEnumMap = {
  VaccineGroupName.cholera: 'Cholera',
  VaccineGroupName.covid_19: 'COVID-19',
  VaccineGroupName.dtap_tdap_td: 'DTaP/Tdap/Td',
  VaccineGroupName.ebola: 'Ebola',
  VaccineGroupName.hepA: 'HepA',
  VaccineGroupName.hepB: 'HepB',
  VaccineGroupName.hib: 'Hib',
  VaccineGroupName.hpv: 'HPV',
  VaccineGroupName.influenza: 'Influenza',
  VaccineGroupName.japaneseEncephalitis: 'Japanese Encephalitis',
  VaccineGroupName.meningococcal: 'Meningococcal',
  VaccineGroupName.meningococcalB: 'Meningococcal B',
  VaccineGroupName.mmr: 'MMR',
  VaccineGroupName.pneumococcal: 'Pneumococcal',
  VaccineGroupName.polio: 'Polio',
  VaccineGroupName.rabies: 'Rabies',
  VaccineGroupName.rotavirus: 'Rotavirus',
  VaccineGroupName.typhoid: 'Typhoid',
  VaccineGroupName.varicella: 'Varicella',
  VaccineGroupName.yellowFever: 'Yellow Fever',
  VaccineGroupName.zoster: 'Zoster',
};
