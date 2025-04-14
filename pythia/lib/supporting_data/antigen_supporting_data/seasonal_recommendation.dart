class SeasonalRecommendation {
  SeasonalRecommendation({
    this.startDate,
    this.endDate,
  });

  final String? startDate;
  final String? endDate;

  factory SeasonalRecommendation.fromJson(Map<String, dynamic> json) {
    return SeasonalRecommendation(
      startDate: json['startDate'] as String?,
      endDate: json['endDate'] as String?,
    );
  }
}
