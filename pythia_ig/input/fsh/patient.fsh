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
