Instance: HPVPatientExample
InstanceOf: HPVPatient
Usage: #example
Title: "HPV Patient Example"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[CN].value = "CN0000000"
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/cn" (exactly)
* identifier[PN].value = "PN0000000"
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/pn" (exactly)
* identifier[PN].type.coding.code = #PPN
* identifier[PN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PN].type.coding.display = "Passport number"
* identifier[PN].type.text = "Patient passport number"

* name.family = "Zinga"
* name.given[0] = "Zam"
* name.given[1] = "Bia"
* name.given[0] = "Dolo"

* birthDate = "2000-01-01"
* link.other = Reference(HPVRelatedPersonExample)
* link.type = #refer

* telecom[email].value = "mail@mail.com"
* telecom[email].system = #email
* telecom[phone].value = "+27821234567"
* telecom[phone].system  = #phone

* address.city = "Ndola"
* address.line[0] = "100"
* address.line[1] = "Zimi Road"
* address.line[2] = "Ndola City"
* address.district = "Ndola District"
* address.state = "Copperbelt Province"
* address.country = "Zambia"

* managingOrganization = Reference(OrganizationExample)
* extension[sex].valueCodeableConcept = $SEX#F

Instance: HPVRelatedPersonExample
InstanceOf: HPVRelatedPerson
Usage: #example
Title: "HPV Related Person Example"
Description: "This is used to document details of the guardian related to the HPV Patient."
* identifier[CN].value = "CN0000000"
* identifier[CN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/cn" (exactly)
* identifier[PN].value = "PN0000000"
* identifier[PN].system = "http://openhie.org/fhir/zambia-immunizations/identifier/pn" (exactly)
* identifier[PN].type.coding.code = #PPN
* identifier[PN].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[PN].type.coding.display = "Passport number"
* identifier[PN].type.text = "Patient passport number"
* patient = Reference(HPVPatientExample)

Instance: HPVImmunocomprommisedExample
InstanceOf: HPVImmunocomprommised
Usage: #example
Title: "HPV Immunocomprommised"
Description: "This is to document whether the HPV patient has been observed to be immunocomprommised."
* status = #final
* code.coding.code = #370388006
* code.coding.system = $SCT
* code.coding.display = "Patient immunocompromised (finding)"
* code.text = "Immunocompromised"
* subject = Reference(HPVPatientExample)
* encounter = Reference(HPVEncounterExample)
* effectiveDateTime = "2024-01-31"
* valueBoolean = true
* performer = Reference(OrganizationExample)

Instance: HPVEncounterExample
InstanceOf: HPVEncounter
Usage: #example
Title: "HPV Encounter Example"
Description: "This is to document the patient visit at the facility related to HPV."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(HPVPatientExample)
* serviceProvider = Reference(OrganizationExample)
* actualPeriod.start = "2024-01-31"
* actualPeriod.end = "2024-01-31"

Instance: HPVImmunizationExample
InstanceOf: HPVImmunization
Usage: #example
Title: "HPV Immunization Example"
Description: "Records the vaccine administered to the patient."
* status = #completed
* occurrenceDateTime = "2024-01-31"
* vaccineCode.coding.code = #836374004
* vaccineCode.coding.system = $SCT
* vaccineCode.coding.display = "Hepatitis B virus antigen-containing vaccine product"
* vaccineCode.text = "Vaccine Name"
* patient = Reference(HPVPatientExample)
* encounter = Reference(HPVEncounterExample)
* performer.actor = Reference(OrganizationExample)
* protocolApplied.doseNumber = "DN0000000"
* extension[HPVPatientVaccinationRegistrationDate].valueDateTime = "2024-01-31"
* extension[HVBN].valueString = "BN0000000"