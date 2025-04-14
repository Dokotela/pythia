class VaxAge {
  VaxAge({
    this.absMinAge,
    this.minAge,
    this.earliestRecAge,
    this.latestRecAge,
    this.maxAge,
    this.effectiveDate,
    this.cessationDate,
  });

  final String? absMinAge;
  final String? minAge;
  final String? earliestRecAge;
  final String? latestRecAge;
  final String? maxAge;
  final String? effectiveDate;
  final String? cessationDate;

  factory VaxAge.fromJson(Map<String, dynamic> json) {
    return VaxAge(
      absMinAge: json['absMinAge'] as String?,
      minAge: json['minAge'] as String?,
      earliestRecAge: json['earliestRecAge'] as String?,
      latestRecAge: json['latestRecAge'] as String?,
      maxAge: json['maxAge'] as String?,
      effectiveDate: json['effectiveDate'] as String?,
      cessationDate: json['cessationDate'] as String?,
    );
  }
}
