import 'package:riverpod_annotation/riverpod_annotation.dart';

@riverpod
class ImmEval extends _$ImmEval {
  @override
   build() => VaxPatient(
        assessmentDate: VaxDate(1900, 01, 01),
        patient: Patient(),
        conditions: [],
        immunizations: [],
        observations: [],
        vaxes: Map.fromIterable(
          antigenSupportingDataMap.keys,
          key: (item) => item,
          value: (item) => Vaxes(
            immunizations: [],
            immForEval: [],
            substandard: [],
            series: [],
          ),
        ),
      );