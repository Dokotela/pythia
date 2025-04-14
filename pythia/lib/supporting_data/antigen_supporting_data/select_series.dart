import '../../pythia.dart';

class SelectSeries {
  SelectSeries({
    this.defaultSeries,
    this.productPath,
    this.seriesGroupName,
    this.seriesGroup,
    this.seriesPriority,
    this.seriesPreference,
    this.minAgeToStart,
    this.maxAgeToStart,
  });

  final Binary? defaultSeries; 
  final Binary? productPath; 
  final String? seriesGroupName;
  final String? seriesGroup;
  final SeriesPriority? seriesPriority; 
  final SeriesPreference? seriesPreference; 
  final String? minAgeToStart;
  final String? maxAgeToStart;

  factory SelectSeries.fromJson(Map<String, dynamic> json) {
    return SelectSeries(
      defaultSeries: json['defaultSeries'] == null
          ? null
          : Binary.fromJson(json['defaultSeries'] as Map<String, dynamic>),
      productPath: json['productPath'] == null
          ? null
          : Binary.fromJson(json['productPath'] as Map<String, dynamic>),
      seriesGroupName: json['seriesGroupName'] as String?,
      seriesGroup: json['seriesGroup'] as String?,
      seriesPriority: json['seriesPriority'] == null
          ? null
          : SeriesPriority.fromJson(
              json['seriesPriority'] as Map<String, dynamic>),
      seriesPreference: json['seriesPreference'] == null
          ? null
          : SeriesPreference.fromJson(
              json['seriesPreference'] as Map<String, dynamic>),
      minAgeToStart: json['minAgeToStart'] as String?,
      maxAgeToStart: json['maxAgeToStart'] as String?,
    );
  }
}
