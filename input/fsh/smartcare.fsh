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

* address.district 0..1 MS
* address.district ^definition =
    "reason(s) why this should be supported."

* extension contains BornInZambia named BIZ 1..1
* extension contains IsEstimatedDateOfBirth named IsEstimatedDOB 0..1 MS
* extension[IsEstimatedDOB] ^definition =
    "reason(s) why this should be supported."
* extension contains EducationLevelAttained named EduLevelAttained 0..1 MS
* extension[EduLevelAttained] ^definition =
    "reason(s) why this should be supported."