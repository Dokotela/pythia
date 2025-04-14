class Vaccine {
  Vaccine({
    this.vaccineType,
    this.cvx,
    this.beginAge,
    this.endAge,
    this.tradeName,
    this.mvx,
    this.volume,
    this.forecastVaccineType,
  });

  final String? vaccineType;
  final String? cvx;
  final String? beginAge;
  final String? endAge;
  final String? tradeName;
  final String? mvx;
  final String? volume;
  final String? forecastVaccineType;

  factory Vaccine.fromJson(Map<String, dynamic> json) {
    return Vaccine(
      vaccineType: json['vaccineType'] as String?,
      cvx: json['cvx'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
      tradeName: json['tradeName'] as String?,
      mvx: json['mvx'] as String?,
      volume: json['volume'] as String?,
      forecastVaccineType: json['forecastVaccineType'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'vaccineType': vaccineType,
      'cvx': cvx,
      'beginAge': beginAge,
      'endAge': endAge,
      'tradeName': tradeName,
      'mvx': mvx,
      'volume': volume,
      'forecastVaccineType': forecastVaccineType,
    };
  }

  // Example helper getter
  int? get cvxAsInt => cvx == null ? null : int.tryParse(cvx!);
}
