Invariant: NUPIN-SmartcareID-1
Description: "Only letters, special characters (dash) and numbers are allowed. For example: 1001-XXGB0-12345-5, 5010-010-12345-5"
Expression: "$this.matches('[0-9A-Za-z]{1,4}-[0-9A-Za-z]{1,5}-[0-9]{1,5}-[0-9]{1}')"
Severity: #error

Invariant: NRC-SmartcareID-1
Description: "Only special characters (forward slash) and numbers are allowed. For example: 999999/99/9"
Expression: "$this.matches('[0-9]{1,6}/[0-9]{1,2}/[0-9]{1}')"
Severity: #error

Invariant: PatientName-Smartcare-1
Description: "If name.use is NOT nickname then name.family SHALL be present."
Expression: "use.exists() and use != 'nickname' implies family.exists()"
Severity: #error

Profile: ImmunizationPatient
Parent: Patient
Id: immunization-patient
Title: "Patient Profile for Immunizations"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NUPIN 1..1 and
    NRC 0..1 MS

* identifier[NUPIN].value 1..1
  * obeys NUPIN-SmartcareID-1
* identifier[NUPIN].system 1..1
* identifier[NUPIN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nupin"

* identifier[NRC] ^definition =
    "reason(s) why this should be supported."
* identifier[NRC].value 1..1
  * obeys NRC-SmartcareID-1
* identifier[NRC].system 1..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name 1..*
  * obeys PatientName-Smartcare-1
* name.given 1..*
* name.family 0..1 MS
* name.family ^definition =
    "reason(s) why this should be supported."
* name.use 1..1
/** name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "use"
* name ^slicing.rules = #open
* name ^slicing.ordered = false
* name ^slicing.description = "Slice based on the type of identifier."
* name contains
    otherName 1..1 and
    nickname 0..1 MS

* name[otherName].given 1..*
* name[otherName].family 1..1
* name[otherName].use 1..1
* name[otherName].use from HumanNameCodes (required)

* name[nickname] ^definition =
    "reason(s) why this should be supported."
* name[nickname].given 1..*
* name[nickname].use 1..1
* name[nickname].use = #nickname*/

* birthDate 1..1
* birthDate.extension contains patient-birthTime named birthTime 0..1 MS
* birthDate.extension[birthTime] ^definition =
    "reason(s) why this should be supported."
* birthDate.extension contains IsEstimatedDateOfBirth named IsEstimatedDOB 0..1 MS
* birthDate.extension[IsEstimatedDOB] ^definition =
    "reason(s) why this should be supported."

* address.district 0..1 MS
* address.district ^definition =
    "reason(s) why this should be supported."

* extension contains BornInZambia named bornInZambia 1..1
* extension contains patient-religion named religion 0..1 MS
* extension[religion] ^definition =
    "reason(s) why this should be supported."
* extension[religion].valueCodeableConcept.text 1..1

* extension contains AdministrativeSex named sex 1..1

* maritalStatus 0..1 MS
* maritalStatus ^definition =
    "reason(s) why this should be supported."
* link 0..* MS
* link ^definition =
    "reason(s) why this should be supported."
* link.other only Reference(SpouseRelatedPerson or GuardianRelatedPerson or PatientMotherRelatedPerson or PatientFatherRelatedPerson or RelativeRelatedPerson or ChiefAtBirthRelatedPerson)
* contact 0..* MS
* contact ^definition =
    "reason(s) why this should be supported."
* contact.name.given 0..1 MS
* contact.name.given ^definition =
    "reason(s) why this should be supported."
* contact.name.family 0..1 MS
* contact.name.family ^definition =
    "reason(s) why this should be supported."
* managingOrganization 0..1 MS
* managingOrganization ^definition =
    "reason(s) why this should be supported."
* managingOrganization only Reference(ServiceProvider)

Profile: RelationToPatient
Parent: RelatedPerson
Id: relation-to-patient
Title: "Generic Relation to Patient"
Description: "This profile acts as a base profile from which more specific RelatedPerson profiles can be derived."
* identifier 0..* MS
* identifier ^definition =
    "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    NRC 0..1 MS

* identifier[NRC] ^definition =
    "reason(s) why this should be supported."
* identifier[NRC].value 1..1
  * obeys NRC-SmartcareID-1
* identifier[NRC].system 1..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-immunizations/identifier/relative-nrc"

* patient 1..1
* patient only Reference(ImmunizationPatient)
* name 0..* MS
* name ^definition =
    "reason(s) why this should be supported."
* name.given 0..1 MS
* name.given ^definition =
    "reason(s) why this should be supported."
* name.family 0..1 MS
* name.family ^definition =
    "reason(s) why this should be supported."
* name.use 1..1

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice based on the type of telecom."
* telecom contains
    phone 0..1 MS

* telecom[phone] ^definition =
    "reason(s) why this should be supported."
* telecom[phone].value 1..1
* telecom[phone].system 1..1
* telecom[phone].system = #phone

Profile: SpouseRelatedPerson
Parent: RelationToPatient
Id: spouse-relation-to-patient
Title: "Spouse Relation to Patient"
Description: "The husband or wife, considered in relation to the patient."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#SPS
//* relationship from VSSpouseRelationCodes (required)
* name.given 1..1
* name.family 1..1

Profile: GuardianRelatedPerson
Parent: RelationToPatient
Id: guardian-relation-to-patient
Title: "Guardian Relation to Patient"
Description: "A guardian to the patient."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#GUARD
* name.given 1..1
* name.family 1..1

Profile: PatientEducationalLevelObservation
Parent: GenericObservation
Id: patient-educational-level
Title: "Highest education level attained"
Description: "A patient's highest education level attained"
* code = $LNC#LL5338-0
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* valueCodeableConcept 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept from VSProprietaryEducationLevelAttained (required)

Profile: TargetFacilityEncounter
Parent: Encounter
Id: target-facility-encounter
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status 1..1
* class 1..1
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject 1..1
* actualPeriod 1..1

Profile: GenericObservation
Parent: Observation
Id: generic-social-history-observation-profile
Title: "Generic Social History Observation Profile"
Description: "This profile acts as a base profile from which more specific social history observation profiles can be derived."
* status 1..1
* code 1..1
* category 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* subject 1..1
* subject only Reference(ImmunizationPatient)
* performer 0..*
* performer ^definition =
  "reason(s) why this should be supported."

Profile: SpouseOccupationObservation
Parent: GenericObservation
Id: spouse-occupation
Title: "Spouse Occupation"
Description: "Records the current occupation for the spouse"
* code = $SCT#447057006
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* valueCodeableConcept 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept from PHVS_Occupation_CDC_ONET-SOC2010_ODH (extensible)

Profile: GuardianOccupationObservation
Parent: GenericObservation
Id: guardian-occupation
Title: "Guardian Occupation"
Description: "Records the current occupation for the guardian"
* code = $LNC#11341-5
* effectivePeriod 0..1 MS
* effectivePeriod ^definition =
  "reason(s) why this should be supported."
* valueCodeableConcept 1..1
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept from PHVS_Occupation_CDC_ONET-SOC2010_ODH (extensible)

Profile: DatePatientFirstMarriedObservation
Parent: Observation
Id: date-patient-first-married
Title: "Patient's Date of First Marriage"
Description: "Records the date when the patient was first married"
* status 1..1
* code 1..1
* code = $SCT#365581002
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* category 1..1
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* subject 1..1
* subject only Reference(ImmunizationPatient)
* performer 0..*
* performer ^definition =
  "reason(s) why this should be supported."
* valueDateTime 1..1
* value[x] only dateTime

Profile: PatientMotherRelatedPerson
Parent: RelationToPatient
Id: mother-relation-to-patient
Title: "Mother Relation to Patient"
Description: "The patient's mother."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#MTH
* name.given 1..1
* name.family 1..1

Profile: PatientFatherRelatedPerson
Parent: RelationToPatient
Id: father-relation-to-patient
Title: "Father Relation to Patient"
Description: "The patient's father."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#FTH
* name.given 1..1

Profile: RelativeRelatedPerson
Parent: RelationToPatient
Id: relative-relation-to-patient
Title: "Relative Relation to Patient"
Description: "The patient's relative."
* relationship 1..1
* relationship = $PARENT_RELATIONSHIP_CODES#FAMMEMB

Profile: ChiefAtBirthRelatedPerson
Parent: RelationToPatient
Id: chief-at-birth-relation-to-patient
Title: "Chief at Birth"
Description: "Patient's chief at birth."
* relationship 1..1
* relationship = $SCT#303119007
* name.family 1..1

Profile: PatientHomeLanguageObservation
Parent: GenericObservation
Id: patient-home-language
Title: "Patient's Home Language"
Description: "Records the home language for the patient"
* code = $SCT#224076006
* effectiveDateTime 0..1 MS
* effectiveDateTime ^definition =
  "reason(s) why this should be supported."
* value[x] only CodeableConcept
* valueCodeableConcept.text 1..1
* valueCodeableConcept 1..1
* valueCodeableConcept from VSHomeLanguage (extensible)

Profile: MedicalInsurance
Parent: Coverage
Id: medical-insurance
Title: "Insurance or Medical Plan"
Description: "Insurance or medical plan details"
* status 1..1
* kind 1..1
* kind = #insurance
* beneficiary only Reference(ImmunizationPatient)
* subscriberId 1..1
* subscriberId.value 1..1
* subscriberId.system 1..1
* subscriberId.system = "http://openhie.org/fhir/zambia-immunizations/identifier/beneficiary-insurance-id"
* policyHolder 1..1
* policyHolder only Reference(MedicalInsuranceCompany)

Profile: MedicalInsuranceCompany
Parent: Organization
Id: medical-insurance-company
Title: "Medical Insurance Company"
Description: "A company that provides insurance to its subscribers that may include healthcare related policies."
* identifier 0..*
* identifier ^definition =
  "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 0..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/medical-insurance-company"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Medical insurance company identifier"
* type 1..1
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #ins
* name 1..1

Profile: ServiceProvider
Parent: Organization
Id: healthcare-service-provider
Title: "Healthcare Service Provider"
Description: "An organization that provides healthcare services."
* identifier 0..*
* identifier ^definition =
  "reason(s) why this should be supported."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    XX 0..1
* identifier[XX].value 1..1
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/healthcare-service-provider"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Healthcare service provider identifier"
* type 1..1
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov
* name 1..1

Profile: Vaccines
Parent: Immunization
Id: Vaccines
Title: "Vaccine Administration"
Description: "Records the vaccine administered to the patient."
* status 1..1
* vaccineCode 1..1
* vaccineCode from VSVaccines (extensible)
* patient 1..1
* patient only Reference(ImmunizationPatient)
* occurrenceDateTime 1..1
* occurrenceDateTime only dateTime
* encounter 1..1
* encounter only Reference(TargetFacilityEncounter)
* protocolApplied.doseNumber