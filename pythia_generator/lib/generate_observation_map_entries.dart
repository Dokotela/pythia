import 'dart:io';

import 'package:pythia/pythia.dart';

Future<void> main() async {
  final VaxObservations? observations = scheduleSupportingData.observations;
  for (final observation in observations?.observation ?? <VaxObservation>[]) {
    if (observation.codedValues != null) {
      for (final CodedValue codedValue
          in observation.codedValues?.codedValue ?? <CodedValue>[]) {
        final url = codedValue.codeSystem == 'SNOMED'
            ? 'http://snomed.info/sct'
            : codedValue.codeSystem == 'CVX'
                ? 'http://hl7.org/fhir/sid/cvx'
                : 'http://phinvads.cdc.gov';
        entries += '  // ${codedValue.text}\n';
        entries +=
            "  src.code.coding.where(system = '$url', code = '${codedValue.code}') -> tgt.code = createCode('${observation.observationCode}', 'http://fhirfli.dev/fhir/ig/pythia/CodeSystem/vaccine-observation-codes');\n\n";
      }
    }
  }
  entries += '}';
  await File('lib/generated_files/vaccine_observation_codes_map.map')
      .writeAsString(entries);
}

String entries = '''
map "http://fhirfli.dev/fhir/ig/pythia/StructureMap/map-vaccine-codes" = "MapVaccineCodes"

uses "Observation" as sourceObservation
uses "Condition" as sourceCondition
uses "Procedure" as sourceProcedure
uses "Immunization" as sourceImmunization
uses "Medication" as sourceMedication
uses "MedicationStatement" as sourceMedicationStatement
uses "MedicationRequest" as sourceMedicationRequest
uses "MedicationAdministration" as sourceMedicationAdministration
uses "MedicationDispense" as sourceMedicationDispense
uses "Condition" as targetCondition

group MapToVaccineConditionObservation(source src : any, target tgt : targetCondition) {
  src.type -> {
    case 'Observation': MapFromObservation(src as sourceObservation, tgt);
    case 'Condition': MapFromCondition(src as sourceCondition, tgt);
    case 'Procedure': MapFromProcedure(src as sourceProcedure, tgt);
    case 'Immunization': MapFromImmunization(src as sourceImmunization, tgt);
    case 'Medication': MapFromMedication(src as sourceMedication, tgt);
    case 'MedicationStatement': MapFromMedicationStatement(src as sourceMedicationStatement, tgt);
    case 'MedicationRequest': MapFromMedicationRequest(src as sourceMedicationRequest, tgt);
    case 'MedicationAdministration': MapFromMedicationAdministration(src as sourceMedicationAdministration, tgt);
    case 'MedicationDispense': MapFromMedicationDispense(src as sourceMedicationDispense, tgt);
  }
}

group MapFromObservation(source src : sourceObservation, target tgt : targetCondition) {
    src -> tgt.status = 'active';
    ApplyCommonMappings(src.code.coding, tgt);
}

group MapFromCondition(source src : sourceCondition, target tgt : targetCondition) {
src -> tgt.status = 'active';
ApplyCommonMappings(src.code.coding, tgt);
} 

group MapFromProcedure(source src : sourceProcedure, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
}

group MapFromImmunization(source src : sourceImmunization, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
}

group MapFromMedication(source src : sourceMedication, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
}

// What about medicationReference?
group MapFromMedicationStatement(source src : sourceMedicationStatement, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
}

group MapFromMedicationRequest(source src : sourceMedicationRequest, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
}

group MapFromMedicationAdministration(source src : sourceMedicationAdministration, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
}

group MapFromMedicationDispense(source src : sourceMedicationDispense, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
}


function createCode(codeValue : string, systemValue : string) -> Coding {
  Coding {
    system = systemValue,
    code = codeValue
  }
}

function ApplyCommonMappings(sourceCoding : Coding, targetCondition : targetCondition) {
''';
