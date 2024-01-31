Invariant: NUPIN-NRC-SmartcareID-1
Description: "Only letters, special characters (dash) and numbers are allowed."
Expression: "$this.matches('[A-Za-z0-9-]*')"
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
  * obeys NUPIN-NRC-SmartcareID-1
* identifier[NUPIN].system 1..1
* identifier[NUPIN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/nupin"

* identifier[NRC] ^definition =
    "reason(s) why this should be supported."
* identifier[NRC].value 1..1
  * obeys NUPIN-NRC-SmartcareID-1
* identifier[NRC].system 1..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-immunizations/identifier/nrc"

* name 1..*
* name.given 1..*
* name.family 1..1
* name.use 1..1

* gender 1..1
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

* extension contains BornInZambia named BIZ 1..1
* extension contains EducationLevelAttained named EduLevelAttained 0..1 MS
* extension[EduLevelAttained] ^definition =
    "reason(s) why this should be supported."

* maritalStatus 0..1 MS
* maritalStatus.coding 1..1
* maritalStatus.coding.code 1..1
* maritalStatus.coding.system 1..1
* maritalStatus ^definition =
    "reason(s) why this should be supported."
* maritalStatus.extension contains DateOfFirstMarriage named DateFirstMarried 0..1 MS
* maritalStatus.extension[DateFirstMarried] ^definition =
    "reason(s) why this should be supported."
* link 1..*
* link.other only Reference(SpouseRelatedPerson)

Profile: SpouseRelatedPerson
Parent: RelatedPerson
Id: spouse
Title: "Spouse"
Description: "The husband or wife, considered in relation to the patient."
* patient 1..1
* patient only Reference(ImmunizationPatient)
* name 1..*
* name.given 1..1
* name.family 1..1
* name.use 1..1

* telecom 1..*
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

Profile: EducationalLevelObservation
Parent: Observation
Id: educational-level
Title: "Patient's highest education level attained"
Description: ""
* status 1..1
* code 1..1
* category 1..1
* category.coding.code 1..1
* category.coding.code = #social-history
* category.coding.system 1..1
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject 1..1
* focus 1..1
* focus only Reference(SpouseRelatedPerson)