import 'package:fhir/r4.dart';
import 'package:pythia/forecast/forecast.dart';

Future<void> main() async {
  await forecastFromParameters(testParameters);
}

final testParameters = Parameters.fromJson({
  "resourceType": "Parameters",
  "id": "parameters-in-example",
  "parameter": [
    {"name": "assessmentDate", "valueDate": "2020-06-02"},
    {
      "name": "patient",
      "resource": {
        "resourceType": "Patient",
        "id": "ImmDSPatientExample",
        "identifier": [
          {
            "type": {
              "coding": [
                {
                  "system": "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code": "MR"
                }
              ]
            },
            "system": "http://www.acme.com/identifiers/patient",
            "value": "1234"
          }
        ],
        "name": [
          {
            "family": "Wellington",
            "given": ["Gene"]
          }
        ],
        "gender": "male",
        "birthDate": "2020-04-28"
      }
    },
    {
      "name": "immunization",
      "resource": {
        "resourceType": "Immunization",
        "id": "ImmDSImmunizationExample",
        "status": "completed",
        "vaccineCode": {
          "coding": [
            {
              "system": "http://hl7.org/fhir/sid/cvx",
              "code": "08",
              "display": "Hep B, adolescent or pediatric"
            }
          ]
        },
        "patient": {"reference": "Patient/ImmDSPatientExample"},
        "occurrenceDateTime": "2020-04-28",
        "primarySource": true
      }
    }
  ]
});
