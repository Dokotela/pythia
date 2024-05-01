import 'dart:io';

import 'package:pythia/pythia.dart';

Future<void> main() async {
  final VaxObservations? observations = scheduleSupportingData.observations;
  String snomedEntries = '';
  String cvxEntries = '';
  String phinvadsEntries = '';
  for (final observation in observations?.observation ?? <VaxObservation>[]) {
    if (observation.codedValues != null) {
      for (final CodedValue codedValue
          in observation.codedValues?.codedValue ?? <CodedValue>[]) {
        if (codedValue.codeSystem == 'SNOMED') {
          snomedEntries += '    // ${codedValue.text}\n';
          snomedEntries +=
              "    '${codedValue.code}': ('${observation.observationCode}', 'http://fhirfli.dev/fhir/ig/pythia/CodeSystem/vaccine-observation-codes'),\n";
        } else if (codedValue.codeSystem == 'CVX') {
          cvxEntries += '    // ${codedValue.text}\n';
          cvxEntries +=
              "    '${codedValue.code}': ('${observation.observationCode}', 'http://fhirfli.dev/fhir/ig/pythia/CodeSystem/vaccine-observation-codes'),\n";
        } else if (codedValue.codeSystem == 'CDCPHINVS') {
          phinvadsEntries += '    // ${codedValue.text}\n';
          phinvadsEntries +=
              "    '${codedValue.code}': ('${observation.observationCode}', 'http://fhirfli.dev/fhir/ig/pythia/CodeSystem/vaccine-observation-codes'),\n";
        }
      }
    }
  }
  entries += "    'http://snomed.info/sct': {\n";
  entries += snomedEntries;
  entries += '    },\n';
  entries += "    'http://hl7.org/fhir/sid/cvx': {\n";
  entries += cvxEntries;
  entries += '    },\n';
  entries += "    'http://phinvads.cdc.gov': {\n";
  entries += phinvadsEntries;
  entries += '    }\n';
  entries += '  };\n\n';
  entries += fileEnd;
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
  src -> tgt.onsetDateTime = src.effectiveDateTime;
  src -> tgt.onsetPeriod = src.effectivePeriod;
  src -> tgt.onsetDateTime = src.effectiveInstant;
}

group MapFromCondition(source src : sourceCondition, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
  src -> tgt.onsetDateTime = src.onsetDateTime;
  src -> tgt.onsetAge = src.onsetAge;
  src -> tgt.onsetPeriod = src.onsetPeriod;
  src -> tgt.onsetRange = src.onsetRange;
  src -> tgt.onsetString = src.onsetString;
  src -> tgt.abatementDateTime = src.abatementDateTime;
  src -> tgt.abatementAge = src.abatementAge;
  src -> tgt.abatementPeriod = src.abatementPeriod;
  src -> tgt.abatementRange = src.abatementRange;
  src -> tgt.abatementString = src.abatementString;
} 

group MapFromProcedure(source src : sourceProcedure, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
  src -> tgt.onsetDateTime = src.performedDateTime;
  src -> tgt.onsetAge = src.performedAge;
  src -> tgt.onsetPeriod = src.performedPeriod;
  src -> tgt.onsetRange = src.performedRange;
  src -> tgt.onsetString = src.performedString;
}

group MapFromImmunization(source src : sourceImmunization, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.code.coding, tgt);
  src -> tgt.onsetDateTime = src.occurrenceDateTime;
  src -> tgt.onsetString = src.occurrenceString;
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
  src -> tgt.onsetDateTime = src.authoredOn;
}

group MapFromMedicationAdministration(source src : sourceMedicationAdministration, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
  src -> tgt.onsetDateTime = src.effectiveDateTime;
  src -> tgt.onsetPeriod = src.effectivePeriod;
}

group MapFromMedicationDispense(source src : sourceMedicationDispense, target tgt : targetCondition) {
  src -> tgt.status = 'active';
  ApplyCommonMappings(src.medicationCodeableConcept.coding, tgt);
  src -> tgt.onsetDateTime = src.whenHandedOver;
}


function createCode(codeValue : string, systemValue : string) -> Coding {
  Coding {
    system = systemValue,
    code = codeValue
  }
}

function ApplyCommonMappings(sourceCodings : List<Coding>, targetCondition : targetCondition) {
  // Define a map of source system codes to target codes and systems
  const mappings = {
''';

const fileEnd = '''
  // Process each coding in the sourceCodings list
  sourceCodings.forEach((coding) => {
    if (mappings[coding.system] && mappings[coding.system][coding.code]) {
      const [targetCode, targetSystem] = mappings[coding.system][coding.code];
      if (targetCode && targetSystem) {
        // Create a new Coding for the target Condition
        tgt.code = createCode(targetCode, targetSystem);
      }
    }
  });
}

function createCode(codeValue : string, systemValue : string) -> Coding {
  return Coding {
    system = systemValue,
    code = codeValue
  };
}''';
