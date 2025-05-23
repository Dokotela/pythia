// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData rsv = AntigenSupportingData.fromJson(
{
    "targetDisease": "RSV",
    "vaccineGroup": "RSV",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationCode": "244",
                    "observationTitle": "Severe allergic reaction after previous dose of RSV vaccine",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of RSV vaccine."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "RSV 1-dose series",
            "targetDisease": "RSV",
            "vaccineGroup": "RSV",
            "seriesAdminGuidance": [
                "Except in rare circumstances, nirsevimab is not needed for most infants younger than age 8 months who are born 14 or more days after their mother received Pfizer/Abrysvo or Moderna/Mresvia RSV vaccine.",
                "The infant should receive nirsevimab younger than 8 months if the pregnant person received an RSV vaccine, but encountered any one of the following issues. The dose was administered in the incorrect route/site, was of lower than recommended volume, was administered before 24 weeks gestation, was not the Pfizer/Abrysvo or Moderna/Mresvia product, had preparation errors prior to administration, or had storage issues.",
                "RSVPreF3 (GSK, Arexvy), RSVpreF (Pfizer, Abrysvo), and mRNA-1345 (Moderna, Mresvia)  vaccines are not licensed for infants and young children."
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days",
                            "maxAge": "8 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-10-01",
                        "endDate": "2025-03-31"
                    }
                }
            ]
        },
        {
            "seriesName": "RSV risk under 20 months series",
            "targetDisease": "RSV",
            "vaccineGroup": "RSV",
            "seriesAdminGuidance": [
                "Except in rare circumstances, nirsevimab is not needed for most infants younger than age 8 months who are born 14 or more days after their mother received Pfizer/Abrysvo or Moderna/Mresvia RSV vaccine.",
                "The infant should receive nirsevimab younger than 8 months if the pregnant person received an RSV vaccine, but encountered any one of the following issues. The dose was administered in the incorrect route/site, was of lower than recommended volume, was administered before 24 weeks gestation, was not the Pfizer/Abrysvo or Moderna/Mresvia product, had preparation errors prior to administration, or had storage issues.",
                "ACIP recommends 1 dose of nirsevimab (200 mg, administered as two 100 mg injections given at the same time at different injection sites) for infants and children aged 8-19 months who are at increased risk for severe RSV disease and entering their second RSV season",
                "RSVPreF3 (GSK, Arexvy), RSVpreF (Pfizer, Abrysvo), and mRNA-1345 (Moderna, Mresvia)  vaccines are not licensed for infants and young children."
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Chronic Lung Disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease",
                    "beginAge": "0 days",
                    "endAge": "20 months",
                    "guidance": "Children with chronic lung disease of prematurity who required medical support (chronic corticosteroid therapy, diuretic therapy, or supplemental oxygen) any time during the 6-month period before the start of the second RSV season"
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "0 days",
                    "endAge": "20 months",
                    "guidance": "Children with cystic fibrosis who have either manifestations of severe lung disease (previous hospitalization for pulmonary exacerbation in the first year of life or abnormalities on chest imaging that persist when stable) or weight-for-length less than the 10th percentile"
                },
                {
                    "observationCode": {
                        "text": "American Indian or Alaskan Native",
                        "code": "245"
                    },
                    "description": "Administer to American Indian or Alaskan Native persons",
                    "beginAge": "0 days",
                    "endAge": "20 months"
                },
                {
                    "observationCode": {
                        "text": "Severe immunocompromise",
                        "code": "246"
                    },
                    "description": "Administer to persons with severe immunocompromise",
                    "beginAge": "0 days",
                    "endAge": "20 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "0 days",
                            "earliestRecAge": "0 days",
                            "maxAge": "20 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after the patient turns 8 months old",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "8 months"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-10-01",
                        "endDate": "2025-03-31"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "maxAge": "20 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not needed if the patient has received a dose during the current season",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Date",
                                            "startDate": "2024-07-01",
                                            "endDate": "2025-06-30",
                                            "doseCount": "1",
                                            "doseType": "Valid",
                                            "doseCountLogic": "equal to",
                                            "vaccineTypes": "304; 306; 307; 315"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-10-01",
                        "endDate": "2025-03-31"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "maxAge": "20 months"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "earliestRecInt": "0 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315",
                            "beginAge": "0 days",
                            "endAge": "24 months"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Evaluation",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not needed if the patient is under 8 months of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "endAge": "8 months"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Dose is not needed if patient is 8 months or older and received a dose under 8 months this season.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "8 months"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Vaccine Count by Date and Age",
                                            "startDate": "2024-07-01",
                                            "endDate": "2025-06-30",
                                            "endAge": "8 months",
                                            "doseCount": "1",
                                            "doseType": "Valid",
                                            "doseCountLogic": "equal to",
                                            "vaccineTypes": "304; 306; 307; 315"
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "context": "Forecast",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "3",
                                    "setDescription": "Dose is not needed if the patient is under 8 months of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "endAge": "8 months"
                                        }
                                    ]
                                },
                                {
                                    "setID": "4",
                                    "setDescription": "Second 100 mg injection is not needed if patient is 8 months or older and the first 100 mg injection was not administered.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "8 months"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "8 months",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "equal to",
                                            "vaccineTypes": "304; 307; 315"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-10-01",
                        "endDate": "2025-03-31"
                    }
                }
            ]
        },
        {
            "seriesName": "RSV risk pregnant 1-dose series",
            "targetDisease": "RSV",
            "vaccineGroup": "RSV",
            "seriesAdminGuidance": [
                "Either maternal RSV vaccination with Pfizer/Abrysvo or use of nirsevimab in the infant is recommended to prevent RSV lower respiratory tract infection, but administration of both products is not needed for most infants. At this time, a pregnant person who receives Abrysvo during one pregnancy is not recommended to receive Abrysvo during a subsequent pregnancy. ACIP will make decisions concerning revaccination as more data become available.",
                "RSVPreF3 (GSK, Arexvy) is licensed for adults 50 years and older. mRNA-1345 (Moderna, Mresvia) is licensed for adults 60 years and older. These vaccines are not licensed for pregnant people.",
                "The infant should receive nirsevimab younger than 8 months if the pregnant person received an RSV vaccine, but encountered any one of the following issues. The dose was administered in the incorrect route/site, was of lower than recommended volume, was administered before 24 weeks gestation, was not the Pfizer/Abrysvo or Moderna/Mresvia product, had preparation errors prior to administration, or had storage issues."
            ],
            "seriesType": "Risk",
            "equivalentSeriesGroups": "3",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Pregnant",
                        "code": "007"
                    },
                    "description": "Administer to persons who are pregnant.",
                    "guidance": "Pregnant persons should receive 1 dose of RSVpreF (Pfizer, Abrysvo) vaccine during 32 through 36 weeks gestation starting 1-2 months prior to the anticipated beginning of the RSV season and ending 1-2 months prior to the anticipated end of the season. RSVpreF vaccine (Abrysvo, Pfizer) is currently approved and recommended for administration as a single dose. Sufficient evidence does not exist at this time to determine the need for additional doses in subsequent pregnancies."
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromRelevantObs": {
                                "text": "Onset of pregnancy",
                                "code": "170"
                            },
                            "minInt": "32 weeks",
                            "earliestRecInt": "32 weeks",
                            "latestRecInt": "37 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Dose is not recommended to be repeated if Arexvy or Mresvia were administered.",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-07-01",
                                            "endDate": "2025-06-30",
                                            "doseCount": "0",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "303; 326"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-09-01",
                        "endDate": "2025-01-31"
                    }
                }
            ]
        },
        {
            "seriesName": "RSV risk 60-74 years 1-dose series",
            "targetDisease": "RSV",
            "vaccineGroup": "RSV",
            "seriesAdminGuidance": [
                "CDC recommends a single dose of RSV vaccine for persons with other chronic medical conditions or risk factors that a healthcare provider determines would increase the risk of severe disease due to respiratory infection, including from respiratory syncytial virus (e.g., frailty, situations in which healthcare providers have concern for presence of undiagnosed chronic medical conditions, residence in a remote or rural community where transportation of patients with severe RSV disease for escalation of medical care is challenging)"
            ],
            "seriesType": "Risk",
            "equivalentSeriesGroups": "3",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Chronic liver disease",
                        "code": "015"
                    },
                    "description": "Administer to persons who have chronic liver disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes cirrhosis"
                },
                {
                    "observationCode": {
                        "text": "Chronic heart disease",
                        "code": "016"
                    },
                    "description": "Administer to persons who have chronic heart disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes congestive heart failure and cardiomyopathies, excluding isolated hypertension"
                },
                {
                    "observationCode": {
                        "text": "Chronic lung disease",
                        "code": "017"
                    },
                    "description": "Administer to persons who have chronic lung disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes chronic obstructive pulmonary disease [COPD], emphysema, asthma, interstitial lung disease, cystic fibrosis"
                },
                {
                    "observationCode": {
                        "text": "Asthma",
                        "code": "027"
                    },
                    "description": "Administer to persons who have asthma.",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "End stage renal disease",
                        "code": "114"
                    },
                    "description": "Administer to persons with end stage renal disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes dependence on hemodialysis or other renal replacement therapy"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisole and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Interstitial lung disease",
                        "code": "199"
                    },
                    "description": "Administer to persons with interstitial lung disease",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Having damaged or scarred lung tissue such as interstitial lung disease"
                },
                {
                    "observationCode": {
                        "text": "Cystic fibrosis",
                        "code": "200"
                    },
                    "description": "Administer to persons with cystic fibrosis",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Thalassemia",
                        "code": "205"
                    },
                    "description": "Administer to persons with thalassemia",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Chronic obstructive pulmonary disease",
                        "code": "214"
                    },
                    "description": "Administer to persons with chronic obstructive pulmonary disease",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Emphysema",
                        "code": "215"
                    },
                    "description": "Administer to persons with emphysema",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Chronic cardiovascular disease",
                        "code": "254"
                    },
                    "description": "Administer to persons with chronic cardiovascular disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes heart failure, coronary artery disease, congenital heart disease, excluding isolated hypertension"
                },
                {
                    "observationCode": {
                        "text": "Diabetes mellitus complicated by chronic kidney disease",
                        "code": "256"
                    },
                    "description": "Administer to persons diabetes mellitus complicated by chronic kidney disease",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Severe obesity",
                        "code": "257"
                    },
                    "description": "Administer to persons with severe obesity",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Chronic hematologic disorders",
                        "code": "258"
                    },
                    "description": "Administer to persons with chronic hematologic disorders.",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes sickle cell disease and thalassemia."
                },
                {
                    "observationCode": {
                        "text": "Sickle cell disease",
                        "code": "259"
                    },
                    "description": "Administer to persons with sickle cell disease.",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Neurologic or neuromuscular conditions causing impaired airway clearance or respiratory muscle weakness",
                        "code": "260"
                    },
                    "description": "Administer to persons with neurologic or neuromuscular conditions causing impaired airway clearance or respiratory muscle weakness",
                    "beginAge": "60 years",
                    "endAge": "75 years",
                    "guidance": "Includes poststroke dysphagia, amyotrophic lateral sclerosis, muscular dystrophy; excluding history of stroke without impaired airway clearance"
                },
                {
                    "observationCode": {
                        "text": "Resident of a nursing home",
                        "code": "261"
                    },
                    "description": "Administer to persons who reside in a nursing home",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Frailty",
                        "code": "262"
                    },
                    "description": "Administer to persons who are frail",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes mellitus complicated by neuropathy",
                        "code": "263"
                    },
                    "description": "Administer to persons with diabetes mellitus complicated by neuropathy",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes mellitus complicated by retinopathy",
                        "code": "264"
                    },
                    "description": "Administer to persons with diabetes mellitus complicated by retinopathy",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes mellitus complicated by end-organ damage",
                        "code": "265"
                    },
                    "description": "Administer to persons with diabetes mellitus complicated by end-organ damage",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes requiring treatment with insulin",
                        "code": "266"
                    },
                    "description": "Administer to persons with diabetes requiring treatment with insulin",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Diabetes requiring treatment with sodium-glucose cotransporter-2 (SGLT2) inhibitor",
                        "code": "267"
                    },
                    "description": "Administer to persons with diabetes requiring treatment with sodium-glucose cotransporter-2 (SGLT2) inhibitor",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received a islet transplant.",
                    "beginAge": "60 years",
                    "endAge": "75 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "minAge": "60 years",
                            "earliestRecAge": "60 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        },
        {
            "seriesName": "RSV 75 years+ 1-dose series",
            "targetDisease": "RSV",
            "vaccineGroup": "RSV",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "No",
                "seriesGroupName": "Standard 75+",
                "seriesGroup": "3",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "minAgeToStart": "50 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "minAge": "75 years",
                            "earliestRecAge": "75 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326",
                            "beginAge": "60 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "RSV, recombinant, protein subunit RSVpreF, adjuvant reconstituted, 0.5 mL, PF",
                            "cvx": "303",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV), unspecified",
                            "cvx": "304",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "RSV, bivalent, protein subunit RSVpreF, diluent reconstituted, 0.5 mL, PF",
                            "cvx": "305",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) vaccine, unspecified",
                            "cvx": "314",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "RSV, mRNA, injectable, PF",
                            "cvx": "326",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 0.5 mL, neonate to 24 months",
                            "cvx": "306"
                        },
                        {
                            "vaccineType": "RSV, mAb, nirsevimab-alip, 1.0 mL, neonate to 24 months",
                            "cvx": "307"
                        },
                        {
                            "vaccineType": "Respiratory syncytial virus (RSV) monoclonal antibody (MAB), unspecified",
                            "cvx": "315"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});
