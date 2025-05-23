// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData covid19 = AntigenSupportingData.fromJson(
{
    "targetDisease": "COVID-19",
    "vaccineGroup": "COVID-19",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "122",
                    "observationTitle": "Severe allergic reaction after previous dose of COVID-19",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of COVID-19 vaccine."
                },
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                }
            ]
        },
        "vaccine": {
            "contraindication": [
                {
                    "observationCode": "187",
                    "observationTitle": "Allergic reaction to polysorbate 80",
                    "contraindicationText": "Do not vaccinate if the patient has had an immediate allergic reaction of any severity to polysorbate 80.",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313"
                        }
                    ]
                },
                {
                    "observationCode": "188",
                    "observationTitle": "Known allergy to Polyethylene glycol [PEG]",
                    "contraindicationText": "Do not vaccinate if the patient has known allergy to Polyethylene glycol [PEG].",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312"
                        }
                    ]
                },
                {
                    "observationCode": "209",
                    "observationTitle": "History of thrombosis with thrombocytopenia following the Janssen COVID-19 Vaccine or any other adenovirus-vectored COVID-19 vaccines",
                    "contraindicationText": "Do not administer the Janssen COVID-19 vaccine to individuals with a history of thrombosis with thrombocytopenia following the Janssen COVID-19 vaccine or any other adenovirus-vectored COVID-19 vaccines (e.g., AstraZeneca's COVID-19 vaccine which is not authorized or approved in the United States)",
                    "contraindicatedVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212"
                        }
                    ]
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "COVID-19 start at 6 mo - 4 yrs Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "maxAgeToStart": "5 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "8 weeks",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient is 5 years of age and at least 8 weeks from previous dose.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "5 years"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Interval",
                                            "interval": "8 weeks"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if the patient has received a complete 2-dose series of Pfizer vaccine",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Age",
                                            "beginAge": "0 days",
                                            "doseCount": "1",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "208; 217; 218; 300; 301"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Target Dose is not needed if the patient has received a 5 year or older Pfizer vaccine on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date and Age",
                                            "startDate": "2024-08-22",
                                            "beginAge": "5 years",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "309; 310"
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "3",
                                    "setDescription": "Target Dose is not needed if patient is 5 years of age and at least 8 weeks from previous dose.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "5 years"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Interval",
                                            "interval": "8 weeks"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if a 5 year old has received at least one dose on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date and Age",
                                            "startDate": "2024-08-22",
                                            "beginAge": "5 years",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Target Dose is not needed if at least 3 doses were administered under 5 years of age with at least one on or after 8/22/2024",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "endAge": "5 years",
                                            "doseCount": "2",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 start at 6 mo - 4 yrs Moderna series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "2",
                "maxAgeToStart": "5 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "8 weeks",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if patient is 5 years of age and at least 8 weeks from previous dose.",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "beginAge": "5 years"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Interval",
                                            "interval": "8 weeks"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after two doses have been administered with at least one on or after 8/22/2024",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Age",
                                            "doseCount": "1",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 start at 5 years+ series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "People ages 65 years and older, vaccinated under the routine schedule, are recommended to receive 2 doses of any 2024-2025 COVID-19 vaccine (i.e., Moderna, Novavax, or Pfizer-BioNTech) separated by 6 months (minimum interval 2 months) regardless of vaccination.",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "5 years",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "308; 309; 310; 311; 312; 313",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose can be skipped if patient received Jansen under 18 years of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "endAge": "18 years",
                                            "doseCount": "0",
                                            "doseType": "Total",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "212"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "5 years",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "308; 309; 310; 311; 312; 313",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "cessationDate": "2024-02-28"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "308; 309; 310; 311; 312; 313",
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months",
                            "effectiveDate": "2024-02-29",
                            "cessationDate": "2024-08-21"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "65 years - 4 days",
                            "minAge": "65 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed for persons under 65 years of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "endAge": "65 years"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 12 yrs+ Novavax series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "People ages 65 years and older and who are unvaccinated who initiate vaccination with 2024-2025 Novavax COVID-19 vaccine are recommended to receive 2 doses of Novavax followed by a third dose of any COVID-19 vaccine 6 months (minimum interval 2 months) later.",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "12 years - 4 days",
                            "minAge": "12 years",
                            "earliestRecAge": "12 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 212; 213; 217; 218; 219; 221; 308; 309; 310; 311; 312; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "3 weeks - 4 days",
                            "minInt": "3 weeks",
                            "earliestRecInt": "3 weeks",
                            "latestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 months - 4 days",
                            "minInt": "4 months",
                            "earliestRecInt": "4 months",
                            "cessationDate": "2024-08-21"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2024-08-22"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one or more doses have been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "65 years - 4 days",
                            "minAge": "65 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed for persons under 65 years of age",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Age",
                                            "endAge": "65 years"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 start at 6 mo - 4 yrs mixed product series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "5",
                "maxAgeToStart": "5 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "8 weeks",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "OR",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if the patient has received a 5 year or older vaccine on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date and Age",
                                            "startDate": "2024-08-22",
                                            "beginAge": "5 years",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "309; 310; 311; 312; 313"
                                        }
                                    ]
                                },
                                {
                                    "setID": "2",
                                    "setDescription": "Target Dose is not needed if the patient received one Novavax and one Moderna",
                                    "conditionLogic": "AND",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Age",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "313"
                                        },
                                        {
                                            "conditionID": "2",
                                            "conditionType": "Vaccine Count By Age",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "311; 312"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "0 days",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 Novavax early start series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "6",
                "maxAgeToStart": "12 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "5 years",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 212; 213; 217; 218; 219; 221; 308; 309; 310; 311; 312; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "4 weeks - 4 days",
                            "minInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 Novavax off label series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesType": "Standard",
            "equivalentSeriesGroups": "2",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Standard",
                "seriesGroup": "1",
                "seriesPriority": "A",
                "seriesPreference": "7",
                "maxAgeToStart": "12 years"
            },
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "12 years",
                            "maxAge": "12 years"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "6 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "minAge": "12 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "3 weeks - 4 days",
                            "minInt": "3 weeks"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "6 months - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised start at 6 mo - 4 yrs Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "Yes",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "1",
                "maxAgeToStart": "5 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "6 months",
                    "endAge": "9 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "6 months",
                    "endAge": "9 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "maxAge": "5 years",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "maxAge": "5 years",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "219",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25",
                            "cessationDate": "2023-04-30"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2023-05-01"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
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
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised start at 5 yrs+ Pfizer series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "2"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "5 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "5 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "5 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "5 years",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 221; 227; 228",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2023-04-19"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "21 days - 4 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "219",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 230; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised 6 mo+ Moderna series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "3"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "6 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 221; 227; 228",
                            "absMinInt": "24 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "208; 210; 211; 212; 213; 217; 218; 219; 300; 301; 302; 308; 309; 310; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
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
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised 18 yrs+ Janssen series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "4"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "18 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "18 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "18 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 213; 217; 218; 219; 221; 227; 228; 229; 230; 300; 301; 302; 308; 309; 310; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 213; 217; 218; 219; 221; 227; 228; 229; 230; 300; 301; 302; 308; 309; 310; 311; 312; 313; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-06-19"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised 12 yrs+ Novavax series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "5"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "12 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "12 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "12 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "12 years - 4 days",
                            "minAge": "12 years",
                            "earliestRecAge": "12 years"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "3 weeks",
                            "earliestRecInt": "3 weeks",
                            "cessationDate": "2022-07-19"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "3 weeks - 4 days",
                            "minInt": "3 weeks",
                            "earliestRecInt": "3 weeks",
                            "effectiveDate": "2022-07-20"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 221; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised start at 6 mo - 4 yrs mixed product series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "6",
                "maxAgeToStart": "5 years"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "6 months",
                    "endAge": "9 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "6 months",
                    "endAge": "9 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "6 months",
                    "endAge": "9 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        },
                        {
                            "absMinAge": "6 months - 4 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "effectiveDate": "2023-09-12"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2024-01-18"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "219",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25",
                            "cessationDate": "2023-04-30"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2023-05-01"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "6 months",
                            "earliestRecAge": "6 months",
                            "cessationDate": "2023-09-11"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
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
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "6 months",
                            "endAge": "5 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised start at 5 yrs+ mixed product series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "7"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "5 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "5 years",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "5 years"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "5 years"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "5 years",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "7 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "219",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 3 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "219",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "5 months",
                            "earliestRecInt": "5 months",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised WHO-authorized series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "Additional clinical considerations including boosting strategies for persons vaccinated outside the U.S. can be found here: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us-appendix.html",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "No",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "8"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "6 months"
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
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "4 weeks",
                            "earliestRecInt": "4 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, vector-nr, rS-ChAdOx1, PF, 0.5 mL",
                            "cvx": "210",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (COVAXIN)",
                            "cvx": "502",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 VVnr Non-US Vaccine (CONVIDECIA), CanSino Biological Inc./Beijing Institute of Biotechnology",
                            "cvx": "506",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (BIBP, Sinopharm)",
                            "cvx": "510",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 IV Non-US Vaccine (CoronaVac, Sinovac)",
                            "cvx": "511",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Both",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed if the patient received a 1-dose series",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count by Age",
                                            "beginAge": "0 days",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "506"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 219; 221; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
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
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        },
        {
            "seriesName": "COVID-19 risk immunocompromised 18 yrs+ Medicago clinical trial series",
            "targetDisease": "COVID-19",
            "vaccineGroup": "COVID-19",
            "seriesAdminGuidance": [
                "COVID-19 vaccine doses from the same manufacturer should be administered whenever recommended. For more information regarding interchangeability of COVID-19 vaccines please visit: https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#Interchangeability",
                "If clinical trial participants have questions about whether they should receive an additional and/or booster dose outside of the clinical trial, they should consult with their healthcare provider. Clinical trial participants who did not receive all the recommended doses, or who received other vaccines not listed above, should consult with their healthcare provider to determine if they should receive an FDA-approved or FDA-authorized COVID-19 vaccine series.",
                "Unvaccinated persons should receive a multidose initial series with an age-appropriate 2024-2025 COVID-19 vaccine and 1 dose of a 2024-2025 COVID-19 vaccine 6 months (minimum interval 2 months) after completing the initial series. Persons who previously completed an initial series should receive 2 doses of an age-appropriate 2024-2025 COVID-19 vaccine, spaced 6 months (minimum interval 2 months) apart. May receive additional age-appropriate 2024-2025 COVID-19 vaccine doses under shared clinical decision-making",
                "For people who have a history of myocarditis with MIS-C or MIS-A, see https://www.cdc.gov/vaccines/covid-19/clinical-considerations/interim-considerations-us.html#covid19-vaccination-misc-misa"
            ],
            "seriesType": "Risk",
            "selectSeries": {
                "defaultSeries": "No",
                "productPath": "Yes",
                "seriesGroupName": "Increased Risk",
                "seriesGroup": "2",
                "seriesPriority": "A",
                "seriesPreference": "9"
            },
            "indication": [
                {
                    "observationCode": {
                        "text": "Recipient of a hematopoietic stem cell transplant",
                        "code": "004"
                    },
                    "description": "Administer to recipients of a hematopoietic stem cell transplant [HSCT] within 2 years of successful transplantation.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                        "code": "145"
                    },
                    "description": "Administer to persons who have severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                        "code": "147"
                    },
                    "description": "Administer to persons who have complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                        "code": "148"
                    },
                    "description": "Administer to persons who have partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                        "code": "153"
                    },
                    "description": "Administer to persons who have a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency).",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "HIV/AIDS - Severely immunocompromised",
                        "code": "154"
                    },
                    "description": "Administer to persons who have HIV/AIDS and are severely immunocompromised [See the CDC general recommendations for a definition of \"severely immunocompromised\"].",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Solid organ transplantation",
                        "code": "157"
                    },
                    "description": "Administer to persons who have received a solid organ transplant.",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Immunosuppressive therapy",
                        "code": "158"
                    },
                    "description": "Administer to persons who are undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Radiation therapy",
                        "code": "159"
                    },
                    "description": "Administer to persons who are undergoing radiation therapy.",
                    "beginAge": "6 months",
                    "guidance": "When immunocompromising therapy is being planned, vaccination should be completed at least 2 weeks before initiation or resumption of therapy."
                },
                {
                    "observationCode": {
                        "text": "Active treatment for solid tumors",
                        "code": "189"
                    },
                    "description": "Administer to persons receiving active treatment for solid tumors",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Active treatment for hematologic malignancies",
                        "code": "190"
                    },
                    "description": "Administer to persons receiving active treatment for hematologic malignancies",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Receipt of CAR-T-cell therapy",
                        "code": "191"
                    },
                    "description": "Administer to persons receiving CAR-T-cell therapy",
                    "beginAge": "6 months"
                },
                {
                    "observationCode": {
                        "text": "Islet transplantation",
                        "code": "268"
                    },
                    "description": "Administer to persons who have received an islet transplant.",
                    "beginAge": "6 months"
                }
            ],
            "seriesDose": [
                {
                    "doseNumber": "Dose 1",
                    "age": [
                        {
                            "absMinAge": "18 years - 4 days",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 212; 213; 217; 219; 221; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 2",
                    "age": [
                        {
                            "absMinAge": "18 years",
                            "minAge": "18 years",
                            "earliestRecAge": "18 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 208; 210; 211; 212; 213; 217; 219; 221; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "21 days",
                            "earliestRecInt": "21 days"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years",
                            "volume": "0.5",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19 VLP Non-US Vaccine (Medicago, Covifenz)",
                            "cvx": "512",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 3",
                    "age": [
                        {
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "210; 211; 212; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "latestRecInt": "42 days",
                            "cessationDate": "2021-10-24"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "28 days - 4 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days",
                            "effectiveDate": "2021-10-25"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "13 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 4",
                    "age": [
                        {
                            "absMinAge": "0 days",
                            "minAge": "5 years",
                            "earliestRecAge": "5 years"
                        }
                    ],
                    "interval": [
                        {
                            "fromPrevious": "N",
                            "fromMostRecent": "207; 210; 211; 212; 213; 219; 221; 227; 228; 500; 501; 502; 503; 504; 505; 506; 507; 508; 509; 510; 511; 512; 513; 514; 515; 516; 517",
                            "absMinInt": "0 days",
                            "minInt": "28 days",
                            "earliestRecInt": "28 days"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "0 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "cessationDate": "2022-06-18"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "12 weeks - 4 days",
                            "minInt": "12 weeks",
                            "earliestRecInt": "12 weeks",
                            "effectiveDate": "2022-06-19",
                            "cessationDate": "2022-09-01"
                        },
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks",
                            "effectiveDate": "2022-09-02"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "5 years",
                            "endAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "6 months",
                            "endAge": "12 years",
                            "volume": "0.25",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 100 mcg/0.5 mL dose",
                            "cvx": "207",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose",
                            "cvx": "208",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 vaccine, Subunit, rS-nanoparticle+Matrix-M1 Adjuvant, PF, 0.5 mL",
                            "cvx": "211",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, vector non-replicating, recombinant spike protein-Ad26, preservative free, 0.5 mL",
                            "cvx": "212",
                            "beginAge": "18 years - 4 days"
                        },
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 30 mcg/0.3 mL dose, tris-sucrose",
                            "cvx": "217",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 10 mcg/0.2 mL dose, tris-sucrose",
                            "cvx": "218",
                            "beginAge": "0 days",
                            "endAge": "18 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL dose",
                            "cvx": "221",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, Pediatric 50 mcg/0.5 mL dose",
                            "cvx": "227",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, pediatric 25 mcg/0.25 mL dose",
                            "cvx": "228",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 50 mcg/0.5 mL or 25mcg/0.25 mL dose",
                            "cvx": "229",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL",
                            "cvx": "230",
                            "beginAge": "0 days",
                            "endAge": "6 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 30 mcg/0.3 mL dose",
                            "cvx": "300",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 10 mcg/0.2 mL dose",
                            "cvx": "301",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, bivalent, PF, 3 mcg/0.2 mL dose",
                            "cvx": "302",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308",
                            "beginAge": "0 days",
                            "endAge": "5 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311",
                            "beginAge": "0 days",
                            "endAge": "12 years"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Spikevax Bivalent), Moderna",
                            "cvx": "519",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19 mRNA, bivalent, original/Omicron BA.1 Non-US Vaccine Product (Comirnaty Bivalent), Pfizer-BioNTech",
                            "cvx": "520",
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
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 5",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "6 months"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "recurringDose": "No",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                },
                {
                    "doseNumber": "Dose 6",
                    "interval": [
                        {
                            "fromPrevious": "Y",
                            "absMinInt": "8 weeks - 4 days",
                            "minInt": "8 weeks",
                            "earliestRecInt": "8 weeks"
                        }
                    ],
                    "preferableVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "12 years",
                            "volume": "0.3",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "12 years",
                            "volume": "0.5",
                            "forecastVaccineType": "Y"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "SARS-COV-2 (COVID-19) vaccine, Unspecified Formulation",
                            "cvx": "213",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 30 mcg/0.3 mL",
                            "cvx": "309",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 50 mcg/0.5 mL",
                            "cvx": "312",
                            "beginAge": "0 days"
                        },
                        {
                            "vaccineType": "COVID-19, subunit, rS-nanoparticle, adjuvanted, PF, 5 mcg/0.5 mL",
                            "cvx": "313",
                            "beginAge": "0 days"
                        }
                    ],
                    "inadvertentVaccine": [
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 3 mcg/0.3 mL",
                            "cvx": "308"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, tris-sucrose, 10 mcg/0.3 mL",
                            "cvx": "310"
                        },
                        {
                            "vaccineType": "COVID-19, mRNA, LNP-S, PF, 25 mcg/0.25 mL",
                            "cvx": "311"
                        }
                    ],
                    "conditionalSkip": [
                        {
                            "context": "Forecast",
                            "setLogic": "n/a",
                            "set": [
                                {
                                    "setID": "1",
                                    "setDescription": "Target Dose is not needed after one dose has been administered on or after 8/22/2024",
                                    "condition": [
                                        {
                                            "conditionID": "1",
                                            "conditionType": "Vaccine Count By Date",
                                            "startDate": "2024-08-22",
                                            "doseCount": "0",
                                            "doseType": "Valid",
                                            "doseCountLogic": "greater than",
                                            "vaccineTypes": "213; 308; 309; 310; 311; 312; 313"
                                        }
                                    ]
                                }
                            ]
                        }
                    ],
                    "recurringDose": "Yes",
                    "seasonalRecommendation": {
                        "startDate": "2024-08-22"
                    }
                }
            ]
        }
    ]
});
