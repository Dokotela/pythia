import '../../pythia.dart';

class Series {
  Series({
    this.seriesName,
    this.targetDisease,
    this.vaccineGroup,
    this.seriesAdminGuidance,
    this.seriesType,
    this.equivalentSeriesGroups,
    this.requiredGender,
    this.selectSeries,
    this.indication,
    this.seriesDose,
  });

  final String? seriesName;
  final String? targetDisease;
  final String? vaccineGroup;
  final List<String>? seriesAdminGuidance;
  final SeriesType? seriesType;
  final EquivalentSeriesGroups? equivalentSeriesGroups;
  final List<Gender>? requiredGender;
  final SelectSeries? selectSeries;
  final List<Indication>? indication;
  final List<SeriesDose>? seriesDose;

  factory Series.fromJson(Map<String, dynamic> json) {
    return Series(
      seriesName: json['seriesName'] as String?,
      targetDisease: json['targetDisease'] as String?,
      vaccineGroup: json['vaccineGroup'] as String?,
      seriesAdminGuidance: (json['seriesAdminGuidance'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      seriesType: json['seriesType'] == null
          ? null
          : SeriesType.fromJson(json['seriesType'] as Map<String, dynamic>),
      equivalentSeriesGroups: json['equivalentSeriesGroups'] == null
          ? null
          : EquivalentSeriesGroups.fromJson(
              json['equivalentSeriesGroups'] as Map<String, dynamic>),
      requiredGender: (json['requiredGender'] as List<dynamic>?)
          ?.map((e) => Gender.fromJson(e as Map<String, dynamic>))
          .whereType<Gender>()
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
  }

  Series copyWith({
    String? seriesName,
    String? targetDisease,
    String? vaccineGroup,
    List<String>? seriesAdminGuidance,
    SeriesType? seriesType,
    EquivalentSeriesGroups? equivalentSeriesGroups,
    List<Gender>? requiredGender,
    SelectSeries? selectSeries,
    List<Indication>? indication,
    List<SeriesDose>? seriesDose,
  }) {
    return Series(
      seriesName: seriesName ?? this.seriesName,
      targetDisease: targetDisease ?? this.targetDisease,
      vaccineGroup: vaccineGroup ?? this.vaccineGroup,
      seriesAdminGuidance: seriesAdminGuidance ?? this.seriesAdminGuidance,
      seriesType: seriesType ?? this.seriesType,
      equivalentSeriesGroups:
          equivalentSeriesGroups ?? this.equivalentSeriesGroups,
      requiredGender: requiredGender ?? this.requiredGender,
      selectSeries: selectSeries ?? this.selectSeries,
      indication: indication ?? this.indication,
      seriesDose: seriesDose ?? this.seriesDose,
    );
  }

  VaxDate maxAgeDate(VaxDate date) => seriesDose?.isNotEmpty == true
      ? seriesDose!.last.maxAgeDate(date)
      : VaxDate.max();
}
