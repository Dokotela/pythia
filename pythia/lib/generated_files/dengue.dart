// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData dengue = AntigenSupportingData.fromJson({
  "targetDisease": "Dengue",
  "vaccineGroup": "Dengue",
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
          "observationCode": "145",
          "observationTitle":
              "B-lymphocyte [humoral] - Severe antibody deficiencies",
          "contraindicationText":
              "Do not vaccinate if the patient has severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency)."
        },
        {
          "observationCode": "146",
          "observationTitle":
              "B-lymphocyte [humoral] - Less severe antibody deficiencies",
          "contraindicationText":
              "Do not vaccinate if the patient has less severe B-lymphocyte (humoral) - antibody deficiencies (e.g., selective IgA deficiency and IgG subclass deficiency)."
        },
        {
          "observationCode": "147",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - Complete defects",
          "contraindicationText":
              "Do not vaccinate if the patient has complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome)."
        },
        {
          "observationCode": "148",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - Partial defects",
          "contraindicationText":
              "Do not vaccinate if the patient has partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia)."
        },
        {
          "observationCode": "150",
          "observationTitle":
              "T-lymphocyte [cell-mediated and humoral] - interferon-gamma or interferon-alpha",
          "contraindicationText":
              "Do not vaccinate if the patient has cell-mediated or humoral T-lymphocyte defects related to interferon-gamma or interferon-alpha"
        },
        {
          "observationCode": "153",
          "observationTitle":
              "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
          "contraindicationText":
              "Do not vaccinate if the patient has a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency)."
        },
        {
          "observationCode": "154",
          "observationTitle": "HIV/AIDS - severely immunocompromised",
          "contraindicationText":
              'Do not vaccinate if the patient has HIV/AIDS and is severely immunocompromised (See the CDC general recommendations for a definition of "severely immunocompromised").'
        },
        {
          "observationCode": "156",
          "observationTitle": "Generalized malignant neoplasm",
          "contraindicationText":
              "Do not vaccinate if the patient has generalized malignant neoplasm."
        },
        {
          "observationCode": "157",
          "observationTitle": "Transplantation",
          "contraindicationText":
              "Do not vaccinate if the patient received a transplant."
        },
        {
          "observationCode": "158",
          "observationTitle": "Immunosuppressive therapy",
          "contraindicationText":
              "Do not vaccinate if the patient is undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies. "
        },
        {
          "observationCode": "159",
          "observationTitle": "Radiation therapy",
          "contraindicationText":
              "Do not vaccinate if the patient is undergoing radiation therapy."
        },
        {
          "observationCode": "210",
          "observationTitle":
              "Severe allergic reaction after previous dose of Dengue vaccine",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Dengue vaccine."
        },
        {
          "observationCode": "243",
          "observationTitle":
              "Lack of laboratory confirmation of a previous Dengue infection",
          "contraindicationText":
              "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Dengue vaccine."
        }
      ]
    }
  },
  "series": [
    {
      "seriesName": "Risk 3-dose series",
      "targetDisease": "Dengue",
      "vaccineGroup": "Dengue",
      "seriesAdminGuidance": [
        "Administer to persons with evidence of previous dengue infection and living in areas where dengue is endemic. Evidence of previous dengue infection, such as confirmation with previous laboratory-confirmed infection or a highly specific serodiagnostic test, will be required among eligible children before vaccination."
      ],
      "seriesType": "Risk",
      "selectSeries": {
        "defaultSeries": "Yes",
        "productPath": "No",
        "seriesGroupName": "Increased Risk",
        "seriesGroup": "1",
        "seriesPriority": "A",
        "maxAgeToStart": "17 years"
      },
      "indication": [
        {
          "observationCode": {
            "text":
                "Evidence of previous dengue infection and living in areas where dengue is endemic",
            "code": "211"
          },
          "description":
              "Administer to persons with evidence of previous dengue infection and living in areas where dengue is endemic.",
          "beginAge": "9 years",
          "endAge": "17 years",
          "guidance":
              "Evidence of previous dengue infection, such as confirmation with previous laboratory-confirmed infection or a highly specific serodiagnostic test, will be required among eligible children before vaccination."
        }
      ],
      "seriesDose": [
        {
          "doseNumber": "Dose 1",
          "age": [
            {
              "absMinAge": "9 years - 4 days",
              "minAge": "9 years",
              "earliestRecAge": "9 years",
              "maxAge": "17 years"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years",
              "endAge": "17 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 2",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years",
              "endAge": "17 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years - 4 days"
            }
          ],
          "recurringDose": "No"
        },
        {
          "doseNumber": "Dose 3",
          "preferableInterval": [
            {
              "fromPrevious": "Y",
              "absMinInt": "6 months - 4 days",
              "minInt": "6 months",
              "earliestRecInt": "6 months"
            }
          ],
          "preferableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years",
              "endAge": "17 years",
              "volume": "0.5",
              "forecastVaccineType": "N"
            }
          ],
          "allowableVaccine": [
            {
              "vaccineType": "Dengue Fever",
              "cvx": "56",
              "beginAge": "9 years - 4 days"
            }
          ],
          "recurringDose": "No"
        }
      ]
    }
  ]
});
