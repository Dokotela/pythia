import 'package:fhir/r4.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'imm_list.g.dart';

@riverpod
class ImmList extends _$ImmList {
  @override
  List<Immunization> build() => <Immunization>[];

  void addImmunizationsFromParameters(Parameters parameters) {
    /// New list of immunizations
    final immunizationList = <Immunization>[];

    /// Look through the parameter list
    for (final parameter in parameters.parameter ?? <ParametersParameter>[]) {
      /// if the parameter contains a resource & it's an Immunization
      if (parameter.resource != null && parameter.resource is Immunization) {
        /// Add it to the list
        immunizationList.add(parameter.resource! as Immunization);
      }
    }
    state = immunizationList;
  }
}
