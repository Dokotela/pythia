// Define the VaxPatient profile that extends the base Patient resource
Profile: VaxPatient
Parent: Patient
Id: vax-patient
Title: "Vaccination Patient"
Description: "A profile that extends the base FHIR Patient resource to include detailed vaccination-related information."

// Define extensions for additional dates and attributes not typically in Patient
Extension: AssessmentDate
Id: assessment-date
Description: "The date on which the vaccination assessment was made."
* value[x] only dateTime

Extension: GenderExtension
Id: gender-extension
Description: "An extension to provide detailed information on gender, including non-binary and transgender options."
* value[x] only code
* valueCode from GenderValueSet (required)

// Apply extensions to the VaxPatient
* extension contains AssessmentDate named assessmentDate 0..1
* extension contains GenderExtension named extendedGender 0..1

// Define specific observations related to vaccinations
Profile: VaxObservation
Parent: Observation
Id: vax-observation
Title: "Vaccination Observation"
Description: "Observation items specifically for vaccination details and related clinical considerations."
* code from VaxObservationCodes (required)
* component only BackboneElement
* component.value[x] only string
* component.extension contains
    IndicationText named indication 0..1
    ContraindicationText named contraindication 0..1
    ClarifyingText named clarification 0..1

// Define a simple ValueSet for observation codes
ValueSet: VaxObservationCodes
Id: vax-observation-codes
Title: "Vaccination Observation Codes"
* #obs1 "Observation Code 1" from http://example.org/fhir/CodeSystem/vax-observations
* #obs2 "Observation Code 2" from http://example.org/fhir/CodeSystem/vax-observations

// Define an instance of a VaxPatient with contained Immunizations
Instance: ExampleVaxPatient
InstanceOf: VaxPatient
Usage: #example
* id = "2013-0034"
* gender = #female
* birthDate = "2020-09-20"
* assessmentDate.valueDateTime = "2024-03-20"
* name.family = "# 6 DTaP before age 4.  Nothing more until Tdap at age 7 even if some are invalid."
* contained += Immunization1
* contained += Immunization2
* contained += Immunization3
* contained += Immunization4
* contained += Immunization5
* contained += Immunization6

// Define contained immunization instances
Instance: Immunization1
InstanceOf: Immunization
Usage: #inline
* id = "dose1"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2020-11-20"

Instance: Immunization2
InstanceOf: Immunization
Usage: #inline
* id = "dose2"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2021-01-20"

Instance: Immunization3
InstanceOf: Immunization
Usage: #inline
* id = "dose3"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2021-03-20"

Instance: Immunization4
InstanceOf: Immunization
Usage: #inline
* id = "dose4"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2022-09-20"

Instance: Immunization5
InstanceOf: Immunization
Usage: #inline
* id = "dose5"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2022-12-20"

Instance: Immunization6
InstanceOf: Immunization
Usage: #inline
* id = "dose6"
* vaccineCode.coding[0].system = "http://hl7.org/fhir/sid/cvx"
* vaccineCode.coding[0].code = "107"
* vaccineCode.coding[0].display = "DTaP, unspecified formulation"
* occurrenceDateTime = "2024-03-20"
