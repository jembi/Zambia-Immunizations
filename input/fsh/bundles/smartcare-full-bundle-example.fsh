Instance: Smartcare
InstanceOf: SmartcareFullBundle
Usage: #example
Title: "Smartcare Bundle"
Description: "A bundle containing all Smartcare FHIR resources."
* type = #transaction
* timestamp = "2024-02-18T09:30:00+02:00"

* entry[SmartcareImmunizationPatient][+].fullUrl = "http://hapi-fhir:8080/Patient/SmartcareImmunizationPatientExample"
* entry[SmartcareImmunizationPatient][=].resource = SmartcareImmunizationPatientExample
* entry[SmartcareImmunizationPatient][=].request.method = #PUT
* entry[SmartcareImmunizationPatient][=].request.url = "Patient/SmartcareImmunizationPatientExample"

* entry[SpouseRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/SpouseRelatedPersonExample"
* entry[SpouseRelatedPerson][=].resource = SpouseRelatedPersonExample
* entry[SpouseRelatedPerson][=].request.method = #PUT
* entry[SpouseRelatedPerson][=].request.url = "RelatedPerson/SpouseRelatedPersonExample"

* entry[PatientEducationalLevelObservation][+].fullUrl = "http://hapi-fhir:8080/Observation/PatientEducationalLevelObservationExample"
* entry[PatientEducationalLevelObservation][=].resource = PatientEducationalLevelObservationExample
* entry[PatientEducationalLevelObservation][=].request.method = #PUT
* entry[PatientEducationalLevelObservation][=].request.url = "Observation/PatientEducationalLevelObservationExample"

* entry[TargetFacilityEncounter][+].fullUrl = "http://hapi-fhir:8080/Encounter/SmartcareTargetFacilityEncounterExample"
* entry[TargetFacilityEncounter][=].resource = SmartcareTargetFacilityEncounterExample
* entry[TargetFacilityEncounter][=].request.method = #PUT
* entry[TargetFacilityEncounter][=].request.url = "Encounter/SmartcareTargetFacilityEncounterExample"

* entry[ChiefAtBirthRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/ChiefAtBirthRelatedPersonExample"
* entry[ChiefAtBirthRelatedPerson][=].resource = ChiefAtBirthRelatedPersonExample
* entry[ChiefAtBirthRelatedPerson][=].request.method = #PUT
* entry[ChiefAtBirthRelatedPerson][=].request.url = "RelatedPerson/ChiefAtBirthRelatedPersonExample"

* entry[DatePatientFirstMarriedObservation][+].fullUrl = "http://hapi-fhir:8080/Observation/DatePatientFirstMarriedObservationExample"
* entry[DatePatientFirstMarriedObservation][=].resource = DatePatientFirstMarriedObservationExample
* entry[DatePatientFirstMarriedObservation][=].request.method = #PUT
* entry[DatePatientFirstMarriedObservation][=].request.url = "Observation/DatePatientFirstMarriedObservationExample"

* entry[PatientFatherRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/PatientFatherRelatedPersonExample"
* entry[PatientFatherRelatedPerson][=].resource = PatientFatherRelatedPersonExample
* entry[PatientFatherRelatedPerson][=].request.method = #PUT
* entry[PatientFatherRelatedPerson][=].request.url = "RelatedPerson/PatientFatherRelatedPersonExample"

* entry[GuardianOccupationObservation][+].fullUrl = "http://hapi-fhir:8080/Observation/GuardianOccupationObservationExample"
* entry[GuardianOccupationObservation][=].resource = GuardianOccupationObservationExample
* entry[GuardianOccupationObservation][=].request.method = #PUT
* entry[GuardianOccupationObservation][=].request.url = "Observation/GuardianOccupationObservationExample"

* entry[GuardianRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/SmartcareGuardianRelatedPersonExample"
* entry[GuardianRelatedPerson][=].resource = SmartcareGuardianRelatedPersonExample
* entry[GuardianRelatedPerson][=].request.method = #PUT
* entry[GuardianRelatedPerson][=].request.url = "RelatedPerson/SmartcareGuardianRelatedPersonExample"

* entry[PatientMotherRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/PatientMotherRelatedPersonExample"
* entry[PatientMotherRelatedPerson][=].resource = PatientMotherRelatedPersonExample
* entry[PatientMotherRelatedPerson][=].request.method = #PUT
* entry[PatientMotherRelatedPerson][=].request.url = "RelatedPerson/PatientMotherRelatedPersonExample"

* entry[RelationToPatient][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/RelationToPatientExample"
* entry[RelationToPatient][=].resource = RelationToPatientExample
* entry[RelationToPatient][=].request.method = #PUT
* entry[RelationToPatient][=].request.url = "RelatedPerson/RelationToPatientExample"

* entry[RelativeRelatedPerson][+].fullUrl = "http://hapi-fhir:8080/RelatedPerson/RelativeRelatedPersonExample"
* entry[RelativeRelatedPerson][=].resource = RelativeRelatedPersonExample
* entry[RelativeRelatedPerson][=].request.method = #PUT
* entry[RelativeRelatedPerson][=].request.url = "RelatedPerson/RelativeRelatedPersonExample"

* entry[SpouseOccupationObservation][+].fullUrl = "http://hapi-fhir:8080/Observation/SpouseOccupationObservationExample"
* entry[SpouseOccupationObservation][=].resource = SpouseOccupationObservationExample
* entry[SpouseOccupationObservation][=].request.method = #PUT
* entry[SpouseOccupationObservation][=].request.url = "Observation/SpouseOccupationObservationExample"

* entry[PatientHomeLanguageObservation][+].fullUrl = "http://hapi-fhir:8080/Observation/PatientHomeLanguageObservationExample"
* entry[PatientHomeLanguageObservation][=].resource = PatientHomeLanguageObservationExample
* entry[PatientHomeLanguageObservation][=].request.method = #PUT
* entry[PatientHomeLanguageObservation][=].request.url = "Observation/PatientHomeLanguageObservationExample"

* entry[MedicalInsuranceCompany][+].fullUrl = "http://hapi-fhir:8080/Organization/MedicalInsuranceCompanyExample"
* entry[MedicalInsuranceCompany][=].resource = MedicalInsuranceCompanyExample
* entry[MedicalInsuranceCompany][=].request.method = #PUT
* entry[MedicalInsuranceCompany][=].request.url = "Organization/MedicalInsuranceCompanyExample"

* entry[MedicalInsurance][+].fullUrl = "http://hapi-fhir:8080/Coverage/MedicalInsuranceExample"
* entry[MedicalInsurance][=].resource = MedicalInsuranceExample
* entry[MedicalInsurance][=].request.method = #PUT
* entry[MedicalInsurance][=].request.url = "Coverage/MedicalInsuranceExample"

* entry[Vaccines][+].fullUrl = "http://hapi-fhir:8080/Immunization/VaccinesExample"
* entry[Vaccines][=].resource = VaccinesExample
* entry[Vaccines][=].request.method = #PUT
* entry[Vaccines][=].request.url = "Immunization/VaccinesExample"