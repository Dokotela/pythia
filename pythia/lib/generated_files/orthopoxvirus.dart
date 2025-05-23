// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData orthopoxvirus = AntigenSupportingData.fromJson(
{
    "targetDisease": "Orthopoxvirus",
    "vaccineGroup": "Orthopoxvirus",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationCode": "223",
                    "observationTitle": "Severe allergic reaction after previous dose of orthopoxvirus vaccine",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of vaccinia vaccine."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationCode": "224",
                    "observationTitle": "History or presence of atopic dermatitis",
                    "contraindicationText": "Do not vaccinate if the patient has history or presence of atopic dermatitis.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "225",
                    "observationTitle": "Household contact with history or presence of atopic dermatitis",
                    "contraindicationText": "Do not vaccinate if potential vaccinee has a household contact with history or presence of atopic dermatitis. Household contacts include persons with prolonged intimate contact with the potential vaccinee (e.g., sexual contacts) and others who might have direct contact with the vaccination site or with potentially contaminated materials (e.g., dressings or clothing).",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "226",
                    "observationTitle": "Active exfoliative skin conditions",
                    "contraindicationText": "Do not vaccinate if the patient has active exfoliative skin conditions.",
                    "contraindicationGuidance": "Conditions include eczema, burns, impetigo, varicella-zoster, herpes, severe acne, severe diaper dermatitis with extensive areas of denuded skin, psoriasis, or Darier disease (keratosis follicularis).",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "227",
                    "observationTitle": "Household contact with active exfoliative skin conditions",
                    "contraindicationText": "Do not vaccinate if potential vaccinee has a household contact with active exfoliative skin conditions. Household contacts include persons with prolonged intimate contact with the potential vaccinee (e.g., sexual contacts) and others who might have direct contact with the vaccination site or with potentially contaminated materials (e.g., dressings or clothing).",
                    "contraindicationGuidance": "Conditions include eczema, burns, impetigo, varicella-zoster, herpes, severe acne, severe diaper dermatitis with extensive areas of denuded skin, psoriasis, or Darier disease (keratosis follicularis).",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "003",
                    "observationTitle": "Immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient is immunocompromised.",
                    "contraindicationGuidance": "Conditions include HIV; AIDS; leukemia; lymphoma; generalized malignancy; solid organ transplantation; therapy with alkylating agents, antimetabolites, radiation, tumor necrosis factor inhibitors, or high-dose corticosteroids; being a recipient of a hematopoietic stem cell transplant less than 24 months ago or greater than 24 months ago but with graft-versus-host disease or disease relapse; or having autoimmune disease with immunodeficiency as a clinical component.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "073",
                    "observationTitle": "Household and close contacts of immunocompromised persons",
                    "contraindicationText": "Do not vaccinate if potential vaccinee has a household contact who is immunocompromised. Household contacts include persons with prolonged intimate contact with the potential vaccinee (e.g., sexual contacts) and others who might have direct contact with the vaccination site or with potentially contaminated materials (e.g., dressings or clothing).",
                    "contraindicationGuidance": "Conditions include HIV; AIDS; leukemia; lymphoma; generalized malignancy; solid organ transplantation; therapy with alkylating agents, antimetabolites, radiation, tumor necrosis factor inhibitors, or high-dose corticosteroids; being a recipient of a hematopoietic stem cell transplant less than 24 months ago or greater than 24 months ago but with graft-versus-host disease or disease relapse; or having autoimmune disease with immunodeficiency as a clinical component.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "007",
                    "observationTitle": "Pregnant",
                    "contraindicationText": "Do not vaccinate if the patient is pregnant.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "228",
                    "observationTitle": "Household contact is pregnant",
                    "contraindicationText": "Do not vaccinate if the potential vaccinee has a household contacct who is pregnant. Household contacts include persons with prolonged intimate contact with the potential vaccinee (e.g., sexual contacts) and others who might have direct contact with the vaccination site or with potentially contaminated materials (e.g., dressings or clothing).",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "229",
                    "observationTitle": "Age less than 1 year",
                    "contraindicationText": "Do not vaccinate if the patient age is less than 1 year.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "230",
                    "observationTitle": "Household contact who is less than 1 year of age",
                    "contraindicationText": "Do not vaccinate if potential vaccinee has a household contact who is less than 1 year of age. Household contacts include persons with prolonged contact with the potential vaccinee and others who might have direct contact with the vaccination site or with potentially contaminated materials (e.g., dressings or clothing).",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "009",
                    "observationTitle": "Breastfeeding",
                    "contraindicationText": "Do not vaccinate if the patient is breastfeeding.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "016",
                    "observationTitle": "Chronic heart disease",
                    "contraindicationText": "Do not vaccinate persons who have chronic heart disease.",
                    "contraindicationGuidance": "e.g., coronary artery disease or cardiomyopathy",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                },
                {
                    "observationCode": "231",
                    "observationTitle": "3 or more known major cardiac risk factors",
                    "contraindicationText": "Do not vaccinate if the patient has 3 or more known major cardiac risk factors.",
                    "contraindicationGuidance": "Major cardiac risk factors include hypertension, diabetes, hypercholesterolemia, heart disease at age 50 years or younger in a first-degree relative, and smoking.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "vaccinia smallpox",
                            "cvx": "75"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Orthopoxvirus risk more virulent 2-dose series",
            "targetDisease": "Orthopoxvirus",
            "vaccineGroup": "Orthopoxvirus",
            "seriesAdminGuidance": [
                "Persons who previously received ACAM2000 should decide before their next booster dose whether to receive ACAM2000 or JYNNEOS. Persons who transition to receiving JYNNEOS boosters are expected to continue receiving JYNNEOS boosters and to not revert to ACAM2000; in addition, the frequency of booster doses should correspond to the vaccine used for boosters. For example, persons who previously received ACAM2000 every 3 years because of work with more virulent orthopoxviruses might decide to change to JYNNEOS when their next booster dose is due; in these cases, subsequent JYNNEOS booster doses should be administered every 2 years.",
                "Evidence of a take is often used as a marker of successful vaccination after ACAM2000. Because JYNNEOS is a replication-deficient vaccine, vaccination with JYNNEOS does not produce a take",
                "When vaccination is used for prevention of mpox in persons with HIV infection, JYNNEOS is preferred over ACAM2000."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "18 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Research laboratory personnel working with more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                        "code": "232"
                    },
                    "description": "Administer to research laboratory personnel working with more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Clinical laboratory personnel performing diagnostic testing for more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                        "code": "233"
                    },
                    "description": "Administer to clinical laboratory personnel performing diagnostic testing for more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Designated response team members working with more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                        "code": "234"
                    },
                    "description": "Administer to designated response team members working with more virulent orthopoxviruses (e.g., Variola virus or mpox virus)",
                    "beginAge": "18 years",
                    "guidance": "Booster doses are     recommended for response personnel only once an event is identified."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "1 year - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "18 years",
                            "volume": "0.0025",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient received a single dose primary series",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "0 days",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "Greater Than",
                                            "vaccineTypes": "75; 105"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "2 years",
                            "earliestRecInt": "2 years",
                            "latestRecInt": "3 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "18 years",
                            "volume": "0.0025",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        },
        {
            "seriesName": "Orthopoxvirus risk less virulent 2-dose series",
            "targetDisease": "Orthopoxvirus",
            "vaccineGroup": "Orthopoxvirus",
            "seriesAdminGuidance": [
                "Persons who previously received ACAM2000 should decide before their next booster dose whether to receive ACAM2000 or JYNNEOS. Persons who transition to receiving JYNNEOS boosters are expected to continue receiving JYNNEOS boosters and to not revert to ACAM2000.",
                "When vaccination is used for prevention of mpox in persons with HIV infection, JYNNEOS is preferred over ACAM2000."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "18 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Research laboratory personnel working with less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                        "code": "236"
                    },
                    "description": "Administer to research laboratory personnel working with less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Clinical laboratory personnel performing diagnostic testing for less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                        "code": "237"
                    },
                    "description": "Administer to clinical laboratory personnel performing diagnostic testing for less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Designated response team members working with less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                        "code": "238"
                    },
                    "description": "Administer to designated response team members working with less virulent orthopoxviruses (e.g., Vaccinia virus or Cowpox virus)",
                    "beginAge": "18 years",
                    "guidance": "Booster doses are     recommended for response personnel only once an event is identified."
                },
                {
                    "observationCode": {
                        "text": "Healthcare personnel who administer ACAM2000",
                        "code": "239"
                    },
                    "description": "Administer to healthcare personnel who administer ACAM2000",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "1 year - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "18 years",
                            "volume": "0.0025",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient received a single dose primary series",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "0 days",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "Greater Than",
                                            "vaccineTypes": "75; 105"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "10 years",
                            "earliestRecInt": "10 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "18 years",
                            "volume": "0.0025",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "1 year - 4 days"
                        }
                    ],
                    "recurringDose": "Yes"
                }
            ]
        },
        {
            "seriesName": "Orthopoxvirus risk pre-exposure 2-dose series",
            "targetDisease": "Orthopoxvirus",
            "vaccineGroup": "Orthopoxvirus",
            "seriesAdminGuidance": [
                "There is currently no ACIP recommendation for Jynneos use in pregnancy due to lack of safety data in pregnant persons. Pregnant persons with any risk factors may receive Jynneos",
                "Adolescents at risk for mpox may receive Jynneos vaccine before exposure"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "B",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Gay, bisexual, and other men who have sex with men, transgender or nonbinary people who in the past 6 months have had one of the following: \r 1) A new diagnosis of ≥ 1 sexually transmitted disease\r 2)  More than one sex partner\r 3)  Sex at a commercial sex venue\r 4)  Sex in association with a large public event in a geographic area where mpox transmission is occurring",
                        "code": "247"
                    },
                    "description": "Administer to gay, bisexual, and other men who have sex with men, transgender or nonbinary people who in the past 6 months have had one of the following: \r 1) A new diagnosis of ≥ 1 sexually transmitted disease\r 2)  More than one sex partner\r 3)  Sex at a commercial sex venue\r 4)  Sex in association with a large public event in a geographic area where mpox transmission is occurring.",
                    "beginAge": "18 years",
                    "guidance": "Includes persons who anticipate experiencing any of the risk factors."
                },
                {
                    "observationCode": {
                        "text": "Sexual partners of gay, bisexual, and other men who have sex with men, transgender or nonbinary people who in the past 6 months have had one of the following: \r 1) A new diagnosis of ≥ 1 sexually transmitted disease\r 2)  More than one sex partner\r 3)  Sex at a commercial sex venue\r 4)  Sex in association with a large public event in a geographic area where mpox transmission is occurring",
                        "code": "248"
                    },
                    "description": "Administer to sexual partners of gay, bisexual, and other men who have sex with men, transgender or nonbinary people who in the past 6 months have had one of the following: \r 1) A new diagnosis of ≥ 1 sexually transmitted disease\r 2)  More than one sex partner\r 3)  Sex at a commercial sex venue\r 4)  Sex in association with a large public event in a geographic area where mpox transmission is occurring.",
                    "beginAge": "18 years",
                    "guidance": "Includes persons who anticipate experiencing any of the risk factors."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient received a single dose primary series",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "0 days",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "Greater Than",
                                            "vaccineTypes": "75; 105"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "Orthopoxvirus risk post-exposure 2-dose series",
            "targetDisease": "Orthopoxvirus",
            "vaccineGroup": "Orthopoxvirus",
            "seriesAdminGuidance": [
                "CDC recommends initiating vaccination within 4 days following the date of exposure for the best chance to prevent on set of the disease. If initiated between 4 and 14 days following the date of exposure, vaccination might be less effective. Benefits might still outweigh risks when administering more than 14 days after exposure in some clinical situations (e.g., severely immunosuppressed)",
                "JYNNEOS vaccine can be administered through 2 different regimens. Please see https://www.cdc.gov/poxvirus/mpox/clinicians/vaccines/vaccine-considerations.html for more details.",
                "Prior to administration in people younger than age 6 months, clinicians should first contact their jurisdictional health department (https://resources.cste.org/epiafterhours). Jurisdictional health departments can facilitate consultation with CDC if needed.",
                "In response to the current outbreak, vaccines and other medical measures should be given to eligible people who were previously vaccinated against smallpox.",
                "Evidence of a take is often used as a marker of successful vaccination after ACAM2000. Because JYNNEOS is a replication-deficient vaccine, vaccination with JYNNEOS does not produce a take",
                "When vaccination is used for prevention of mpox in persons with HIV infection, JYNNEOS is preferred over ACAM2000."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "1",
                "seriesPriority": "C",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Known exposure to mpox",
                        "code": "241"
                    },
                    "description": "Administer to persons who are known contacts to someone with mpox who are identified by public health authorities",
                    "beginAge": "0 days",
                    "guidance": "People who are known contacts to someone with mpox who are identified by public health authorities, for example via case investigation, contact tracing, or risk exposure assessment"
                },
                {
                    "observationCode": {
                        "text": "Presumed exposure to mpox",
                        "code": "242"
                    },
                    "description": "Administer to persons who have presumed exposure to mpox",
                    "beginAge": "0 days",
                    "guidance": "People who are aware that a recent sex partner within the  past 14 days was diagnosed with mpox. Certain gay, bisexual, or other men who have sex with men, or transgender people who have had any of following within the past 14 days: sex with multiple partners (or group sex); sex at a commercial sex venue; or sex in association with an event, venue, or defined geographic area where mpox transmission is occurring."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "18 years",
                            "volume": "0.0025",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "18 years",
                            "volume": "0.1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "vaccinia - smallpox",
                            "cvx": "75",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox diluted",
                            "cvx": "105",
                            "beginAge": "1 year - 4 days"
                        },
                        {
                            "vaccineType": "vaccinia - smallpox mpox vaccine live, PF",
                            "cvx": "206",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient received a single dose primary series",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "0 days",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "Greater Than",
                                            "vaccineTypes": "75; 105"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});
