class VaccineGroupContraindications {
  VaccineGroupContraindications({this.contraindication});

  final List<GroupContraindication>? contraindication;

  factory VaccineGroupContraindications.fromJson(Map<String, dynamic> json) {
    return VaccineGroupContraindications(
      contraindication: (json['contraindication'] as List<dynamic>?)
          ?.map(
              (e) => GroupContraindication.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  VaccineGroupContraindications copyWith({
    List<GroupContraindication>? contraindication,
  }) {
    return VaccineGroupContraindications(
      contraindication: contraindication ?? this.contraindication,
    );
  }

  List<int>? get codesAsInt {
    if (contraindication == null) {
      return null;
    } else {
      final List<int> codes = contraindication!
          .map((GroupContraindication e) => e.codeAsInt ?? -1)
          .toList();
      codes.removeWhere((int element) => element == -1);
      return codes;
    }
  }
}

class GroupContraindication {
  GroupContraindication({
    this.observationCode,
    this.observationTitle,
    this.contraindicationText,
    this.contraindicationGuidance,
    this.beginAge,
    this.endAge,
  });

  final String? observationCode;
  final String? observationTitle;
  final String? contraindicationText;
  final String? contraindicationGuidance;
  final String? beginAge;
  final String? endAge;

  factory GroupContraindication.fromJson(Map<String, dynamic> json) {
    return GroupContraindication(
      observationCode: json['observationCode'] as String?,
      observationTitle: json['observationTitle'] as String?,
      contraindicationText: json['contraindicationText'] as String?,
      contraindicationGuidance: json['contraindicationGuidance'] as String?,
      beginAge: json['beginAge'] as String?,
      endAge: json['endAge'] as String?,
    );
  }

  int? get codeAsInt =>
      observationCode == null ? null : int.tryParse(observationCode!);
}
