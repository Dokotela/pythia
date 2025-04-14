class Exclusion {
  Exclusion({
    this.exclusionCode,
    this.exclusionTitle,
  });

  final String? exclusionCode;
  final String? exclusionTitle;

  factory Exclusion.fromJson(Map<String, dynamic> json) {
    return Exclusion(
      exclusionCode: json['exclusionCode'] as String?,
      exclusionTitle: json['exclusionTitle'] as String?,
    );
  }
}
