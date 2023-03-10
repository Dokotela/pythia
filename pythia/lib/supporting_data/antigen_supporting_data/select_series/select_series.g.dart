// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SelectSeries _$$_SelectSeriesFromJson(Map<String, dynamic> json) =>
    _$_SelectSeries(
      defaultSeries:
          $enumDecodeNullable(_$BinaryEnumMap, json['defaultSeries']),
      productPath: $enumDecodeNullable(_$BinaryEnumMap, json['productPath']),
      seriesGroupName: json['seriesGroupName'] as String?,
      seriesGroup: json['seriesGroup'] as String?,
      seriesPriority:
          $enumDecodeNullable(_$SeriesPriorityEnumMap, json['seriesPriority']),
      seriesPreference: $enumDecodeNullable(
          _$SeriesPreferenceEnumMap, json['seriesPreference']),
      minAgeToStart: json['minAgeToStart'] as String?,
      maxAgeToStart: json['maxAgeToStart'] as String?,
    );

Map<String, dynamic> _$$_SelectSeriesToJson(_$_SelectSeries instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultSeries', _$BinaryEnumMap[instance.defaultSeries]);
  writeNotNull('productPath', _$BinaryEnumMap[instance.productPath]);
  writeNotNull('seriesGroupName', instance.seriesGroupName);
  writeNotNull('seriesGroup', instance.seriesGroup);
  writeNotNull(
      'seriesPriority', _$SeriesPriorityEnumMap[instance.seriesPriority]);
  writeNotNull(
      'seriesPreference', _$SeriesPreferenceEnumMap[instance.seriesPreference]);
  writeNotNull('minAgeToStart', instance.minAgeToStart);
  writeNotNull('maxAgeToStart', instance.maxAgeToStart);
  return val;
}

const _$BinaryEnumMap = {
  Binary.yes: 'Yes',
  Binary.no: 'No',
  Binary.na: '',
};

const _$SeriesPriorityEnumMap = {
  SeriesPriority.a: 'A',
  SeriesPriority.b: 'B',
  SeriesPriority.c: 'C',
  SeriesPriority.d: 'D',
  SeriesPriority.e: 'E',
};

const _$SeriesPreferenceEnumMap = {
  SeriesPreference.one: '1',
  SeriesPreference.two: '2',
  SeriesPreference.three: '3',
  SeriesPreference.four: '4',
  SeriesPreference.five: '5',
  SeriesPreference.six: '6',
  SeriesPreference.none: '',
};
