Profile: HPVPatient
Parent: Patient
Id: hpv-patient
Title: "HPV Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    CN 1..1 and
    PN 0..1 MS and
    NRC 0..1 MS
* identifier[CN].value 1..1
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/cn"

* identifier[PN] ^definition =
    "reason(s) why this should be supported."
* identifier[PN].value 1..1
  * obeys PN-Passport
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/pn"
* identifier[PN].type.coding.code = #PPN
* identifier[PN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PN].type.coding.display = "Passport number"
* identifier[PN].type.text = "Patient passport number"

* identifier[NRC] ^definition =
    "reason(s) why this should be supported."
* identifier[NRC].value 1..1
  * obeys NRC-SmartcareID-1
* identifier[NRC].system 1..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name 1..*
* name.family 1..1
* name.given 1..*

* birthDate 1..1
* link 0..*
* link ^definition =
    "reason(s) why this should be supported."
* link.other 1..1
* link.type 1..1
* link.other only Reference(HPVRelatedPerson)

* telecom 0..*
* telecom ^slicing.discriminator.type = #value
* telecom ^slicing.discriminator.path = "system"
* telecom ^slicing.rules = #open
* telecom ^slicing.ordered = false
* telecom ^slicing.description = "Slice based on the type of telecom system."
* telecom contains 
    email 0..* and
    phone 0..*
* telecom ^definition =
    "reason(s) why this should be supported."
* telecom[email].value 1..1
* telecom[email].system = #email
* telecom[phone].value 1..1
* telecom[phone].system  = #phone

* address 0..* MS
* address.city 0..1 MS
* address.line 0..* MS
* address.district 0..1 MS
* address.state 0..1 MS
* address.country 0..1 MS
* address ^definition =
    "reason(s) why this should be supported."

* managingOrganization 0..1 MS
* managingOrganization ^definition =
    "reason(s) why this should be supported."

* extension contains AdministrativeSex named sex 1..1

Profile: HPVRelatedPerson
Parent: RelatedPerson
Id: hpv-related-person
Title: "HPV Related Person"
Description: "This is used to document details of the guardian related to the HPV Patient."
* identifier 0..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on the type of identifier."
* identifier contains
    CN 0..1 MS and
    PN 0..* MS
* identifier[CN].value 1..1
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/cn"
* identifier[PN].value 1..1
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/pn"
* identifier[PN].type.coding.code = #PPN
* identifier[PN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PN].type.coding.display = "Passport number"
* identifier[PN].type.text = "Patient passport number"
* patient 1..1
* patient only Reference(HPVPatient)

Profile: HPVImmunocomprommised
Parent: Observation
Id: hpv-immunocomprommised
Title: "HPV Immunocomprommised"
Description: "This is to document whether the HPV patient has been observed to be immunocomprommised."
* status = #final
* code = $SCT#370388006
* code.text = "Immunocompromised"
* subject 1..1
* encounter 1..1
* effectiveDateTime 1..1
* valueBoolean 1..1
* performer 1..*

Profile: HPVEncounter
Parent: TargetFacilityEncounter
Id: hpv-encounter
Title: "HPV Encounter"
Description: "This is to document the patient visit at the facility related to HPV."
* serviceProvider 0..1 MS
* serviceProvider ^definition =
  "reason(s) why this should be supported."

Profile: HPVImmunization
Parent: Immunization
Id: hpv-immunization
Title: "HPV Immunization"
Description: "Records the vaccine administered to the patient."
* status 1..1
* vaccineCode 1..1
* patient 1..1
* encounter 0..1 MS
* encounter ^definition =
    "reason(s) why this should be supported."
* occurrenceDateTime 1..1
* vaccineCode = $SCT#836374004
* performer.actor 1..1
* protocolApplied.doseNumber 1..1
* extension contains HPVPatientVaccinationRegistrationDate named HPVRD 0..1 MS
* extension[HPVRD] ^definition =
    "reason(s) why this should be supported."
* extension contains HPVVaccineBatchNumber named HVBN 0..1 MS