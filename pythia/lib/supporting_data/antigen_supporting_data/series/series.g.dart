// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SeriesImpl _$$SeriesImplFromJson(Map<String, dynamic> json) => _$SeriesImpl(
      seriesName: json['seriesName'] as String?,
      targetDisease: json['targetDisease'] as String?,
      vaccineGroup: json['vaccineGroup'] as String?,
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

Map<String, dynamic> _$$SeriesImplToJson(_$SeriesImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seriesName', instance.seriesName);
  writeNotNull('targetDisease', instance.targetDisease);
  writeNotNull('vaccineGroup', instance.vaccineGroup);
  writeNotNull('seriesAdminGuidance', instance.seriesAdminGuidance);
  writeNotNull('seriesType', instance.seriesType?.toJson());
  writeNotNull(
      'equivalentSeriesGroups', instance.equivalentSeriesGroups?.toJson());
  writeNotNull('requiredGender',
      instance.requiredGender?.map((e) => e.toJson()).toList());
  writeNotNull('selectSeries', instance.selectSeries?.toJson());
  writeNotNull(
      'indication', instance.indication?.map((e) => e.toJson()).toList());
  writeNotNull(
      'seriesDose', instance.seriesDose?.map((e) => e.toJson()).toList());
  return val;
}

const _$SeriesTypeEnumMap = {
  SeriesType.standard: 'Standard',
  SeriesType.risk: 'Risk',
  SeriesType.evaluationOnly: 'Evaluation Only',
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
