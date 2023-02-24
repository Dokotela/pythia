import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pythia.dart';

part 'assessment_date.g.dart';

@riverpod
class AssessmentDate extends _$AssessmentDate {
  @override
  VaxDate build() => VaxDate.now();

  void fromParameters(Parameters parameters) {
    final index = parameters.parameter?.indexWhere((element) =>
        element.name == 'assessmentDate' &&
        element.valueDate != null &&
        element.valueDate!.isValid);
    if (index != null && index != -1) {
      state =
          VaxDate.fromDateTime(parameters.parameter![index].valueDate!.value!);
    }
  }
}
