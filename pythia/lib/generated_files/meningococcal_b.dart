// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData meningococcalB = AntigenSupportingData.fromJson({
  "targetDisease": "Meningococcal B",
  "vaccineGroup": "Meningococcal B",
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationCode": "116",
          "observationTitle":
              "Severe allergic reaction after previous dose of Meningococcal B",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Meningococcal B vaccine."
        },
        {
          "observationCode": "080",
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        }
      ]
    },
    "vaccine": {
      "contraindication": [
        {
          "observationCode": "118",
          "observationTitle": "Severe allergic reaction to tetanus toxoid",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction to tetanus toxoid.",
          "contraindicatedVaccine": [
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316"
            }
          ]
        }
      ]
    }
  },
  "series": [
    {
      "seriesName":
          "Meningococcal B risk 2-dose series MenB-4C Patient Seeks Protection",
      "targetDisease": "Meningococcal B",
      "vaccineGroup": "Meningococcal B",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "Yes",
        "seriesGroupName": "Patient Seeks Protection",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "minAgeToStart": "16 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Patient seeks protection",
            "code": "001"
          },
          "description": "Administer to persons seeking protection.",
          "beginAge": "16 years",
          "endAge": "24 years",
          "guidance":
              "ACIP recommends a MenB vaccine series for persons aged 16-23 years on the basis of shared clinical decision-making to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years."
        },
        {
          "observationCode": {
            "text": "Patient seeks Meningococcal B protection",
            "code": "177"
          },
          "description":
              "Administer to persons seeking protection from Meningococcal B.",
          "beginAge": "16 years",
          "endAge": "24 years",
          "guidance":
              "ACIP recommends a MenB vaccine series for persons aged 16-23 years on the basis of shared clinical decision-making to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years."
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "16 years",
              "earliestRecAge": "16 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "tradeName": "Bexsero",
              "mvx": "NOV",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "16 years",
              "earliestRecAge": "16 years"
            }
          ],
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "cessationDate": "2017-05-18"
            },
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "effectiveDate": "2017-05-19"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "tradeName": "Bexsero",
              "mvx": "NOV",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Meningococcal B risk 2-dose series MenB-FHbp",
      "targetDisease": "Meningococcal B",
      "vaccineGroup": "Meningococcal B",
      "seriesAdminGuidance": [
        "A 2-dose series for MenB-FHbp (Trumenba) which is used only for healthy adolescents and young adults who are not at increased risk for meningococcal B disease.",
        "Penbraya (MenABCWY - Pfizer) may be used when both MenACWY and MenB are indicated at the same visit."
      ],
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "Yes",
        "seriesGroupName": "Patient Seeks Protection",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "minAgeToStart": "16 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Patient seeks protection",
            "code": "001"
          },
          "description": "Administer to persons seeking protection.",
          "beginAge": "16 years",
          "endAge": "24 years",
          "guidance":
              "ACIP recommends a MenB vaccine series for persons aged 16-23 years on the basis of shared clinical decision-making to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years."
        },
        {
          "observationCode": {
            "text": "Patient seeks Meningococcal B protection",
            "code": "177"
          },
          "description":
              "Administer to persons seeking protection from Meningococcal B.",
          "beginAge": "16 years",
          "endAge": "24 years",
          "guidance":
              "ACIP recommends a MenB vaccine series for persons aged 16-23 years on the basis of shared clinical decision-making to provide short-term protection against most strains of serogroup B meningococcal disease. The preferred age for MenB vaccination is 16-18 years."
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "16 years",
              "earliestRecAge": "16 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "tradeName": "Trumenba",
              "mvx": "PFR",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years",
              "endAge": "26 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years - 4 days"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "16 years",
              "earliestRecAge": "16 years"
            }
          ],
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "4 months - 4 days",
              "minInt": "4 months",
              "earliestRecInt": "4 months"
            },
            {
              "fromPrevious": "N",
              "fromTargetDose": 1,
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "tradeName": "Trumenba",
              "mvx": "PFR",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "No"
        }
      ]
    },
    {
      "seriesName": "Meningococcal B risk 2-dose series MenB-4C Increased Risk",
      "targetDisease": "Meningococcal B",
      "vaccineGroup": "Meningococcal B",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "Yes",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "2",
        "seriesPriority": "A",
        "minAgeToStart": "10 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Undergoing elective splenectomy",
            "code": "002"
          },
          "description":
              "Administered to persons who are undergoing elective splenectomy if they have not previously received Meningococcal B vaccine.",
          "beginAge": "10 years",
          "guidance":
              "Vaccination 14 or more days before splenectomy is suggested."
        },
        {
          "observationCode": {
            "text":
                "Microbiologists routinely exposed to Neisseria meningitidis",
            "code": "050"
          },
          "description":
              "Administer to microbiologists routinely exposed to isolates of Neisseria meningitidis.",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Persons at risk during an outbreak",
            "code": "070"
          },
          "description":
              "Administer to persons identified as at increased risk because of a serogroup B meningococcal disease outbreak",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Persistent complement, properdin, or factor B deficiency",
            "code": "151"
          },
          "description":
              "Administer to persons who have persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab (Soliris).",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Anatomical or functional asplenia",
            "code": "160"
          },
          "description":
              "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
          "beginAge": "10 years"
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "10 years",
              "earliestRecAge": "10 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "tradeName": "Bexsero",
              "mvx": "NOV",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "cessationDate": "2017-05-18"
            },
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "effectiveDate": "2017-05-19"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "tradeName": "Bexsero",
              "mvx": "NOV",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 3",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "1 years - 4 days",
              "minInt": "1 year",
              "earliestRecInt": "1 year"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 4",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "2 years - 4 days",
              "minInt": "2 years",
              "earliestRecInt": "2 years",
              "latestRecInt": "4 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, OMV",
              "cvx": "163",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            }
          ],
          "recurringDose": "Yes"
        }
      ]
    },
    {
      "seriesName":
          "Meningococcal B risk 3-dose series MenB-FHbp Increased Risk",
      "targetDisease": "Meningococcal B",
      "vaccineGroup": "Meningococcal B",
      "seriesAdminGuidance": [
        "Penbraya (MenABCWY - Pfizer) may be used when both MenACWY and MenB are indicated at the same visit."
      ],
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "Yes",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "2",
        "seriesPriority": "A",
        "minAgeToStart": "10 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Undergoing elective splenectomy",
            "code": "002"
          },
          "description":
              "Administered to persons who are undergoing elective splenectomy if they have not previously received Meningococcal B vaccine.",
          "beginAge": "10 years",
          "guidance":
              "Vaccination 14 or more days before splenectomy is suggested."
        },
        {
          "observationCode": {
            "text":
                "Microbiologists routinely exposed to Neisseria meningitidis",
            "code": "050"
          },
          "description":
              "Administer to microbiologists routinely exposed to isolates of Neisseria meningitidis.",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Persons at risk during an outbreak",
            "code": "070"
          },
          "description":
              "Administer to persons identified as at increased risk because of a serogroup B meningococcal disease outbreak",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Persistent complement, properdin, or factor B deficiency",
            "code": "151"
          },
          "description":
              "Administer to persons 10 years or older with persistent complement component deficiencies, including inherited or chronic deficiencies in C3, C5-9, properdin, factor D, factor H, or who are taking eculizumab (Soliris).",
          "beginAge": "10 years"
        },
        {
          "observationCode": {
            "text": "Anatomical or functional asplenia",
            "code": "160"
          },
          "description":
              "Administer to persons with anatomic or functional asplenia, including sickle cell disease.",
          "beginAge": "10 years"
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "10 years - 4 days",
              "minAge": "10 years",
              "earliestRecAge": "10 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "tradeName": "Trumenba",
              "mvx": "PFR",
              "volume": "0.5",
              "forecastVaccineType": "N"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years",
              "endAge": "26 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years - 4 days"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "latestRecInt": "8 weeks",
              "cessationDate": "2017-05-18"
            },
            {
              "fromPrevious": "Y",
              "absMinInt": "4 weeks - 4 days",
              "minInt": "4 weeks",
              "earliestRecInt": "4 weeks",
              "latestRecInt": "8 weeks",
              "effectiveDate": "2017-05-19"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "tradeName": "Trumenba",
              "mvx": "PFR",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years"
            }
          ],
          "conditionalSkip": [
            {
              "context": "Evaluation",
              "setLogic": "n/a",
              "set": [
                {
                  "setID": "1",
                  "setDescription":
                      "Dose is not required once 6 months has passed since the previous dose",
                  "condition": [
                    {
                      "conditionID": "1",
                      "conditionType": "Interval",
                      "interval": "6 months",
                      "doseCountLogic": "n/a"
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
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "0 days",
              "minInt": "4 months",
              "earliestRecInt": "4 months",
              "cessationDate": "2017-05-18"
            },
            {
              "fromPrevious": "Y",
              "absMinInt": "4 months - 4 days",
              "minInt": "4 months",
              "earliestRecInt": "4 months",
              "effectiveDate": "2017-05-19"
            },
            {
              "fromPrevious": "N",
              "fromTargetDose": 1,
              "absMinInt": "0 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "tradeName": "Trumenba",
              "mvx": "PFR",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years",
              "endAge": "26 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 4",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "1 years - 4 days",
              "minInt": "1 year",
              "earliestRecInt": "1 year"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years",
              "endAge": "26 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 5",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "2 years - 4 days",
              "minInt": "2 years",
              "earliestRecInt": "2 years",
              "latestRecInt": "4 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years",
              "endAge": "26 years",
              "volume": "0.5",
              "forecastVaccineType": "Y"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "meningococcal B, recombinant",
              "cvx": "162",
              "beginAge": "10 years"
            },
            {
              "vaccineType": "meningococcal B, unspecified",
              "cvx": "164",
              "beginAge": "10 years"
            },
            {
              "vaccineType":
                  "meningococcal polysaccharide (MenACWY-TT conjugate), (MenB), PF",
              "cvx": "316",
              "beginAge": "10 years - 4 days",
              "endAge": "26 years"
            }
          ],
          "recurringDose": "Yes"
        }
      ]
    }
  ]
});
