// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Series _$$_SeriesFromJson(Map<String, dynamic> json) => _$_Series(
      seriesName: json['seriesName'] as String?,
      targetDisease:
          $enumDecodeNullable(_$TargetDiseaseEnumMap, json['targetDisease']),
      vaccineGroup:
          $enumDecodeNullable(_$VaccineGroupNameEnumMap, json['vaccineGroup']),
      seriesAdminGuidance: (json['seriesAdminGuidance'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      seriesType: $enumDecodeNullable(_$SeriesTypeEnumMap, json['seriesType']),
      equivalentSeriesGroups: $enumDecodeNullable(
          _$EquivalentSeriesGroupsEnumMap, json['equivalentSeriesGroups']),
      requiredGender: (json['requiredGender'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GenderEnumMap, e))
          .toList(),
      selectSeries: json['selectSeries'] == null
          ? null
          : SelectSeries.fromJson(json['selectSeries'] as Map<String, dynamic>),
      indication: (json['indication'] as List<dynamic>?)
          ?.map((e) => Indication.fromJson(e as Map<String, dynamic>))
          .toList(),
      seriesDose: (json['seriesDose'] as List<dynamic>?)
          ?.map((e) => SeriesDose.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeriesToJson(_$_Series instance) => <String, dynamic>{
      'seriesName': instance.seriesName,
      'targetDisease': _$TargetDiseaseEnumMap[instance.targetDisease],
      'vaccineGroup': _$VaccineGroupNameEnumMap[instance.vaccineGroup],
      'seriesAdminGuidance': instance.seriesAdminGuidance,
      'seriesType': _$SeriesTypeEnumMap[instance.seriesType],
      'equivalentSeriesGroups':
          _$EquivalentSeriesGroupsEnumMap[instance.equivalentSeriesGroups],
      'requiredGender':
          instance.requiredGender?.map((e) => _$GenderEnumMap[e]!).toList(),
      'selectSeries': instance.selectSeries,
      'indication': instance.indication,
      'seriesDose': instance.seriesDose,
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

const _$SeriesTypeEnumMap = {
  SeriesType.standard: 'Standard',
  SeriesType.risk: 'Risk',
};

const _$EquivalentSeriesGroupsEnumMap = {
  EquivalentSeriesGroups.group1: '1',
  EquivalentSeriesGroups.group2: '2',
  EquivalentSeriesGroups.none: '',
};

const _$GenderEnumMap = {
  Gender.female: 'Female',
  Gender.transgender: 'Transgender',
  Gender.unknown: 'Unknown',
  Gender.male: 'Male',
};
