import 'package:fhir/r4.dart';

String? cvxFromImmunization(Immunization immunization) {
  final cvxIndex = immunization.vaccineCode.coding?.indexWhere((element) =>
      element.system == FhirUri('http://hl7.org/fhir/sid/cvx') &&
      element.code != null);
  if (cvxIndex == null || cvxIndex == -1) {
    return null;
  } else {
    return immunization.vaccineCode.coding![cvxIndex].code!.toString();
  }
}
