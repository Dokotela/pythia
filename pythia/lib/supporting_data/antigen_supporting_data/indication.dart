import 'observation_code.dart';

class Indication {
  Indication({
    this.observationCode,
    this.description,
    this.beginAge,
    this.endAge,
    this.guidance,
  });

  final ObservationCode? observationCode;
  final String? description;
  final String? beginAge;
  final String? endAge;
  final String? guidance;

  factory Indication.fromJson(Map<String, dynamic> json) {
    return Indication(
      observationCode: json['observationCode'] == null
          ? null
          : ObservationCode.fromJson(
              json['observationCode'] as Map<String, dynamic>),
      description: json['description'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
      guidance: json['guidance'] as String?,
    );
  }
}
