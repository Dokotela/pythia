// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData ebola = AntigenSupportingData.fromJson({
  "targetDisease": "Ebola",
  "vaccineGroup": "Ebola",
  "contraindications": {
    "vaccineGroup": {
      "contraindication": [
        {
          "observationCode": "080",
          "observationTitle": "Adverse reaction to vaccine component",
          "contraindicationText":
              "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
        },
        {
          "observationCode": "123",
          "observationTitle":
              "Severe allergic reaction after previous dose of ebola",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of ebola vaccine."
        },
        {
          "observationCode": "124",
          "observationTitle": "Severe allergic reaction to rice protein",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction to rice protein."
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Ebola Risk 1-dose series",
      "targetDisease": "Ebola",
      "vaccineGroup": "Ebola",
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "No",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "minAgeToStart": "18 years"
      },
      "indication": [
        {
          "observationCode": {
            "text": "Ebola virus outbreak response",
            "code": "182"
          },
          "description":
              "Administer to persons responding to an outbreak of Ebola Virus Disease.",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Health care personnel at federally designated Ebola treatement center in U.S.",
            "code": "183"
          },
          "description":
              "Administer to persons working as health care personnel at federally designated Ebola treatement centers in the Unied States",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Laboratorians or other staff at biosafety level 4 facilities in U.S.",
            "code": "184"
          },
          "description":
              "Administer to persons working as Laboratorians or other staff at biosafety level 4 facilities in U.S.",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Health care personnel involved in the care and transport of patients with suspected or confirmed Ebola virus disease at Special Pathogen Treatment Centers",
            "code": "212"
          },
          "description":
              "Administer to persons working as Health care personnel involved in the care and transport of patients with suspected or confirmed Ebola virus disease at Special Pathogen Treatment Centers",
          "beginAge": "18 years"
        },
        {
          "observationCode": {
            "text":
                "Laboratorians and support staff members at Laboratory Response Network (LRN) facilities that handle specimens that might contain replication-competent Ebola virus in the United States",
            "code": "213"
          },
          "description":
              "Administer to persons working as Laboratorians and support staff members at Laboratory Response Network (LRN) facilities that handle specimens that might contain replication-competent Ebola virus in the United States",
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
          "preferableVaccine": [
            {
              "vaccineType": "Ebola Zaire vaccine, live",
              "cvx": "204",
              "beginAge": "18 years",
              "volume": "1",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Ebola Zaire vaccine, live",
              "cvx": "204",
              "beginAge": "18 years - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    }
  ]
});
