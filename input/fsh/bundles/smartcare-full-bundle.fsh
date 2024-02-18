Profile: SmartcareFullBundle
Parent: Bundle
Id: smartcare-full-bundle
Title: "Smartcare Full Bundle"
Description: "This bundle contains all of the Smartcare resources."
* type 1..1
* type = #transaction
* timestamp 1..1
* entry 1..*
* entry.fullUrl 1..1
* entry.resource 1..1
* entry.request 1..1
* entry ^definition =
  "reason(s, reason why this should be supported.) why this should be supported."
* entry ^slicing.discriminator[+].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^slicing.description = "An entry resource included in Smartcare's full document bundle resource."
* entry contains
    SmartcareImmunizationPatient 1..1 and
    TargetFacilityEncounter 1..1 and
    SpouseRelatedPerson 0..1 MS and
    ChiefAtBirthRelatedPerson 0..1 MS and
    GuardianRelatedPerson 0..1 MS and
    PatientMotherRelatedPerson 0..1 MS and
    RelationToPatient 0..1 MS and
    RelativeRelatedPerson 0..1 MS and
    PatientFatherRelatedPerson 0..1 MS and
    PatientEducationalLevelObservation 0..1 MS and
    DatePatientFirstMarriedObservation 0..1 MS and
    GuardianOccupationObservation 0..1 MS and
    SpouseOccupationObservation 0..1 MS and
    PatientHomeLanguageObservation 0..1 MS and
    MedicalInsuranceCompany 0..1 MS and
    MedicalInsurance 0..1 MS and
    Vaccines 1..1

* insert BundleEntry(SmartcareImmunizationPatient, SmartcareImmunizationPatient, reason why this should be supported.)
* insert BundleEntry(TargetFacilityEncounter, TargetFacilityEncounter, reason why this should be supported.)
* insert BundleEntry(SpouseRelatedPerson, SpouseRelatedPerson, reason why this should be supported.)
* insert BundleEntry(ChiefAtBirthRelatedPerson, ChiefAtBirthRelatedPerson, reason why this should be supported.)
* insert BundleEntry(GuardianRelatedPerson, GuardianRelatedPerson, reason why this should be supported.)
* insert BundleEntry(PatientMotherRelatedPerson, PatientMotherRelatedPerson, reason why this should be supported.)
* insert BundleEntry(RelationToPatient, RelationToPatient, reason why this should be supported.)
* insert BundleEntry(RelativeRelatedPerson, RelativeRelatedPerson, reason why this should be supported.)
* insert BundleEntry(PatientFatherRelatedPerson, PatientFatherRelatedPerson, reason why this should be supported.)
* insert BundleEntry(PatientEducationalLevelObservation, PatientEducationalLevelObservation, reason why this should be supported.)
* insert BundleEntry(DatePatientFirstMarriedObservation, DatePatientFirstMarriedObservation, reason why this should be supported.)
* insert BundleEntry(GuardianOccupationObservation, GuardianOccupationObservation, reason why this should be supported.)
* insert BundleEntry(SpouseOccupationObservation, SpouseOccupationObservation, reason why this should be supported.)
* insert BundleEntry(PatientHomeLanguageObservation, PatientHomeLanguageObservation, reason why this should be supported.)
* insert BundleEntry(MedicalInsuranceCompany, MedicalInsuranceCompany, reason why this should be supported.)
* insert BundleEntry(MedicalInsurance, MedicalInsurance, reason why this should be supported.)
* insert BundleEntry(Vaccines, Vaccines, reason why this should be supported.)