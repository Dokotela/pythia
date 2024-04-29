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
* valueCode from Gender (required)

// Bind the Gender to custom valueset
ValueSet: Gender
Id: gender-values
Title: "Gender Value Set"
* #female "Female"
* #male "Male"
* #transgender "Transgender"
* #unknown "Unknown"

// Apply extensions to the VaxPatient
* extension contains AssessmentDate named assessmentDate 0..1
* extension contains GenderExtension named extendedGender 0..1

// Contained resources for immunizations, conditions, and observations
* contained only Resource
* contained ResourceType contains [Immunization, Condition, AllergyIntolerance, Observation] 0..*

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
    IndicationText named indication 0..1,
    ContraindicationText named contraindication 0..1,
    ClarifyingText named clarification 0..1

// Define a simple valueset for observation codes
ValueSet: VaxObservationCodes
Id: vax-observation-codes
Title: "Vaccination Observation Codes"
* #obs1 "Observation Code 1"
* #obs2 "Observation Code 2"

// Extensions for textual clarifications
Extension: IndicationText
Id: indication-text
Description: "Text indicating why the vaccine should be administered."
* value[x] only string

Extension: ContraindicationText
Id: contraindication-text
Description: "Text indicating why the vaccine should not be administered."
* value[x] only string

Extension: ClarifyingText
Id: clarifying-text
Description: "Additional clarifications for the vaccination rule."
* value[x] only string
