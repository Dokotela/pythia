ValueSet: VaccineObservationCodes
Id: vaccine-observation-codes
Title: "Vaccine Observation Codes"
Description: "A value set that includes IIS observation codes with mappings to SNOMED CT, CDC PHIN VADS, and CVX codes where applicable."

* $001 "Patient seeks protection" from IIS
  * Description = "Administer to persons seeking protection."

* $002 "Undergoing elective splenectomy" from IIS
  * Description = "Administer to persons who are undergoing elective splenectomy if they have not previously received the vaccine."
  * ClarifyingText = "Vaccination 14 or more days before splenectomy is suggested"

* $003 "Immunocompromised" from IIS
  * ContraindicationText = "Do not vaccinate if the patient is immunocompromised."
  * SNOMED = #370388006 "Patient Immunocompromised"
  * CDCPHINVS = "370388006" "Immunocompromised"

* $004 "Recipient of a hematopoietic stem cell transplant" from IIS
  * Description = "Administer to recipients of a hematopoietic stem cell transplant [HSCT] 6 to 12 months after a successful transplant, regardless of vaccination history."
  * SNOMED = #234336002 "Hemopoietic stem cell transplant [procedure]"
  * CDCPHINVS = "234336002" "Hematopoietic Stem Cell Transplantation"

* $005 "Hepatitis C virus infection" from IIS
  * Description = "Administer to persons with a hepatitis C virus infection."
  * SNOMED = #50711007 "Viral hepatitis type C [disorder]"
  * CDCPHINVS = "50711007" "Hepatitis C"

* $006 "Receives clotting factor concentrates" from IIS
  * Description = "Administer to persons who receive clotting factor concentrates."

* $007 "Pregnant" from IIS
  * Description = "Administer to persons who are pregnant."
  * ContraindicationText = "Do not vaccinate if the patient is pregnant."
  * SNOMED = #77386006 "Patient currently pregnant [finding]"
  * SNOMED += #102874004 "Possible pregnancy [finding]"
  * SNOMED += #255409004 "Pregnant woman [person]"

* $008 "Travel to an area of active cholera transmission" from IIS
  * Description = "Administer to travelers from the United States traveling to an area of active cholera transmission."
  * ClarifyingText = "An area of active cholera transmission is defined as a province, state, or other administrative subdivision within a country with endemic or epidemic cholera caused by toxigenic V. cholerae O1 and includes areas with cholera activity within the last year that are prone to recurrence of cholera epidemics; it does not include areas where only rare imported or sporadic cases have been reported."

* $009 "Breastfeeding" from IIS
  * ContraindicationText = "Do not vaccinate if the patient is breastfeeding."
  * SNOMED = #413712001 "Breastfeeding [mother] [observable entity]"
  * CDCPHINVS = "413712001" "Breastfeeding"
