// ignore_for_file: prefer_single_quotes, always_specify_types

import '../pythia.dart';

final AntigenSupportingData chikungunya = AntigenSupportingData.fromJson(
{
    "targetDisease": "Chikungunya",
    "vaccineGroup": "Chikungunya",
    "contraindications": {
        "vaccineGroup": {
            "contraindication": [
                {
                    "observationCode": "080",
                    "observationTitle": "Adverse reaction to vaccine component",
                    "contraindicationText": "Do not vaccinate if the patient has had an adverse reaction to a vaccine component."
                },
                {
                    "observationCode": "145",
                    "observationTitle": "B-lymphocyte [humoral] - Severe antibody deficiencies",
                    "contraindicationText": "Do not vaccinate if the patient has severe B-lymphocyte (humoral) - antibody deficiencies (e.g., X-linked agammaglobulinemia and common variable immunodeficiency)."
                },
                {
                    "observationCode": "146",
                    "observationTitle": "B-lymphocyte [humoral] - Less severe antibody deficiencies",
                    "contraindicationText": "Do not vaccinate if the patient has less severe B-lymphocyte (humoral) - antibody deficiencies (e.g., selective IgA deficiency and IgG subclass deficiency)."
                },
                {
                    "observationCode": "147",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Complete defects",
                    "contraindicationText": "Do not vaccinate if the patient has complete cell-mediated or humoral T-lymphocyte defects (e.g., severe combined immunodeficiency [SCID] disease, complete DiGeorge syndrome)."
                },
                {
                    "observationCode": "148",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - Partial defects",
                    "contraindicationText": "Do not vaccinate if the patient has partial cell-mediated or humoral T-lymphocyte defects (e.g., most patients with DiGeorge syndrome, Wiskott-Aldrich syndrome, ataxia- telangiectasia)."
                },
                {
                    "observationCode": "150",
                    "observationTitle": "T-lymphocyte [cell-mediated and humoral] - interferon-gamma or interferon-alpha",
                    "contraindicationText": "Do not vaccinate if the patient has cell-mediated or humoral T-lymphocyte defects related to interferon-gamma or interferon-alpha"
                },
                {
                    "observationCode": "153",
                    "observationTitle": "Phagocytic function - Leukocyte adhesion defect, and myeloperoxidase deficiency",
                    "contraindicationText": "Do not vaccinate if the patient has a phagocytic function defect (e.g. leukocyte adhesion defect and myeloperoxidase deficiency)."
                },
                {
                    "observationCode": "154",
                    "observationTitle": "HIV/AIDS - severely immunocompromised",
                    "contraindicationText": "Do not vaccinate if the patient has HIV/AIDS and is severely immunocompromised (See the CDC general recommendations for a definition of \"severely immunocompromised\")."
                },
                {
                    "observationCode": "156",
                    "observationTitle": "Generalized malignant neoplasm",
                    "contraindicationText": "Do not vaccinate if the patient has generalized malignant neoplasm."
                },
                {
                    "observationCode": "157",
                    "observationTitle": "Sold organ transplantation",
                    "contraindicationText": "Do not vaccinate if the patient received a solid organ transplant.",
                    "contraindicationGuidance": "Certain immunosuppressive medications are administered to prevent solid organ transplant rejection. Live vaccines should be withheld for 2 months following discontinuation of anti-rejection therapies in patients with a solid organ transplant."
                },
                {
                    "observationCode": "158",
                    "observationTitle": "Immunosuppressive therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing immunosuppressive therapy. Immunosuppressive medications include those given to prevent solid organ transplant rejection, human immune mediators like interleukins and colony-stimulating factors, immune modulators like levamisol and BCG bladder-tumor therapy, and medicines like tumor necrosis factor alpha inhibitors and anti-B cell antibodies."
                },
                {
                    "observationCode": "159",
                    "observationTitle": "Radiation therapy",
                    "contraindicationText": "Do not vaccinate if the patient is undergoing radiation therapy."
                },
                {
                    "observationCode": "270",
                    "observationTitle": "Severe allergic reaction after previous dose of Chikungunya vaccine",
                    "contraindicationText": "Do not vaccinate if the patient has had a severe allergic reaction after a previous dose of Chikungunya vaccine."
                }
            ]
        }
    },
    "series": [
        {
            "seriesName": "Chikungunya Risk 1-dose series",
            "targetDisease": "Chikungunya",
            "vaccineGroup": "Chikungunya",
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
                        "text": "Traveling to a country or territory where there is a chikungunya outbreak",
                        "code": "271"
                    },
                    "description": "Administer to persons traveling to a country or territory where there is a chikungunya outbreak",
                    "beginAge": "18 years",
                    "guidance": "Areas at risk for Chikungunya: https://www.cdc.gov/chikungunya/data-maps/index.html"
                },
                {
                    "observationCode": {
                        "text": "Traveling to a country or territory without an outbreak but with evidence of chikungunya virus transmission among humans within the last 5 years",
                        "code": "272"
                    },
                    "description": "Persons traveling to a country or territory without an outbreak but with evidence of chikungunya virus transmission among humans within the last 5 years may consider vaccination",
                    "beginAge": "18 years",
                    "guidance": "Vaccination may be considered for persons aged greater than 65 years, particularly those with underlying medical conditions, who are likely to have at least moderate exposure to mosquitoes OR Persons staying for a cumulative period of 6 months or more"
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
                            "vaccineType": "Chikungunya live attenuated vaccine, 0.5 mL, PF",
                            "cvx": "317",
                            "beginAge": "18 years",
                            "volume": "1",
                            "forecastVaccineType": "N"
                        }
                    ],
                    "allowableVaccine": [
                        {
                            "vaccineType": "Chikungunya live attenuated vaccine, 0.5 mL, PF",
                            "cvx": "317",
                            "beginAge": "18 years - 4 days"
                        }
                    ],
                    "recurringDose": "No"
                }
            ]
        }
    ]
});
