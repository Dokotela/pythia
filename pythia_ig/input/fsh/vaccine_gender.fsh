ValueSet: VaccineGender
Id: vaccine-gender
Title: "Vaccine Gender"
Description: "A value set that groups detailed genders from SNOMED CT and LOINC into broader categories (male, female, transgender, other) for use in vaccine predictions."

// Male
* http://snomed.info/sct#446151000124109 "Male" // SNOMED CT URI
* http://loinc.org#LA22878-5 "Male"             // LOINC URI

// Female
* http://snomed.info/sct#446141000124107 "Female" // SNOMED CT URI
* http://loinc.org#LA22879-3 "Female"             // LOINC URI

// Transgender and Non-Conforming
* http://snomed.info/sct#407376001 "Transgender"      // SNOMED CT URI
* http://snomed.info/sct#407377005 "Transgender"      // SNOMED CT URI
* http://snomed.info/sct#33791000087105 "Transgender" // SNOMED CT URI
* http://snomed.info/sct#446131000124102 "Transgender" // SNOMED CT URI
* http://loinc.org#LA22880-1 "Transgender"            // LOINC URI
* http://loinc.org#LA22881-9 "Transgender"            // LOINC URI
* http://loinc.org#LA22882-7 "Transgender"            // LOINC URI

// Other (including Other, Unknown, Asked but declined)
* http://hl7.org/fhir/v3/NullFlavor#OTH "Other"                 // NullFlavor URI
* http://hl7.org/fhir/v3/NullFlavor#UNK "Other"                 // NullFlavor URI
* http://hl7.org/fhir/valueset-data-absent-reason#asked-declined "Other" // DataAbsentReason URI
* http://loinc.org#LA46-8 "Other"                               // LOINC URI
* http://loinc.org#LA20384-6 "Other"                            // LOINC URI
