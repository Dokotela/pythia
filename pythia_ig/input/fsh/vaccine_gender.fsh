ValueSet: VaccineGender
Id: vaccine-gender
Title: "Vaccine Gender"
Description: "A value set that groups detailed genders from SNOMED CT and LOINC into broader categories (male, female, transgender, other) for use in vaccine predictions."

// Male
* #446151000124109 "Identifies as male gender (SNOMED CT)" from SNOMEDCT "Male"
* #LA22878-5 "Identifies as male gender (LOINC)" from LOINC "Male"

// Female
* #446141000124107 "Identifies as female gender (SNOMED CT)" from SNOMEDCT "Female"
* #LA22879-3 "Identifies as female gender (LOINC)" from LOINC "Female"

// Transgender and Non-Conforming
* #407376001 "Male-to-female transsexual (SNOMED CT)" from SNOMEDCT "Transgender"
* #407377005 "Female-to-male transsexual (SNOMED CT)" from SNOMEDCT "Transgender"
* #33791000087105 "Identifies as nonbinary gender (SNOMED CT)" from SNOMEDCT "Transgender"
* #446131000124102 "Identifies as non-conforming gender (SNOMED CT)" from SNOMEDCT "Transgender"
* #LA22880-1 "Female-to-male transsexual (LOINC)" from LOINC "Transgender"
* #LA22881-9 "Male-to-female transsexual (LOINC)" from LOINC "Transgender"
* #LA22882-7 "Identifies as non-conforming gender (LOINC)" from LOINC "Transgender"

// Other (including Other, Unknown, Asked but declined)
* #OTH "Other" from NullFlavor "Other"
* #UNK "Unknown" from NullFlavor "Other"
* #asked-declined "Asked But Declined" from DataAbsentReason "Other"
* #LA46-8 "Other (LOINC)" from LOINC "Other"
* #LA20384-6 "Asked but unknown (LOINC)" from LOINC "Other"
