import 'package:freezed_annotation/freezed_annotation.dart';

part 'vax_observations.freezed.dart';
part 'vax_observations.g.dart';

@freezed
class VaxObservations with _$VaxObservations {
  VaxObservations._();
  factory VaxObservations({
    List<VaxObservation>? observation,
  }) = _VaxObservations;

  factory VaxObservations.fromJson(Map<String, dynamic> json) =>
      _$VaxObservationsFromJson(json);
}

@freezed
class VaxObservation with _$VaxObservation {
  VaxObservation._();
  factory VaxObservation({
    String? observationCode,
    String? observationTitle,
    String? group,
    String? indicationText,
    String? contraindicationText,
    String? clarifyingText,
    CodedValues? codedValues,
  }) = _VaxObservation;

  factory VaxObservation.fromJson(Map<String, dynamic> json) =>
      _$VaxObservationFromJson(json);
}

@freezed
class CodedValues with _$CodedValues {
  CodedValues._();
  factory CodedValues({
    List<CodedValue>? codedValue,
  }) = _CodedValues;

  factory CodedValues.fromJson(Map<String, dynamic> json) =>
      _$CodedValuesFromJson(json);
}

@freezed
class CodedValue with _$CodedValue {
  CodedValue._();
  factory CodedValue({
    String? code,
    String? codeSystem,
    String? text,
  }) = _CodedValue;

  factory CodedValue.fromJson(Map<String, dynamic> json) =>
      _$CodedValueFromJson(json);
}
