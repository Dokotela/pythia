class ObservationCode {
  ObservationCode({
    this.text,
    this.code,
  });

  final String? text;
  final String? code;

  factory ObservationCode.fromJson(Map<String, dynamic> json) {
    return ObservationCode(
      text: json['text'] as String?,
      code: json['code'] as String?,
    );
  }

  int? get codeAsInt => code == null ? null : int.tryParse(code!);
}
