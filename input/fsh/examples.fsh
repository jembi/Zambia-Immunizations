Instance: ImmunizationPatientExample
InstanceOf: ImmunizationPatient
Usage: #example
Title: "Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[NUPIN][+].value = "12-999-22-2338"
* identifier[NUPIN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/nupin"
* identifier[NRC][+].value = "12-999-22-2338"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/nrc"
* name[+].use = #official
* name[=].family = "Smith"
* name[=].given[+] = "Jane"
* name[=].given[+] = "Maria"
* gender = #female
* birthDate = "1990-12-12"
* birthDate.extension[birthTime].valueDateTime = "1983-05-22T16:40:17+02:00"
* birthDate.extension[IsEstimatedDOB].valueBoolean = false
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
//* maritalStatus.extension[DateFirstMarried].valueDateTime = "2001-11-10T12:05:17+02:00"
* extension[BIZ].valueBoolean = true
* link[+].other = Reference(SpouseRelatedPersonExample)
* link[=].type = #seealso

Instance: SpouseRelatedPersonExample
InstanceOf: SpouseRelatedPerson
Usage: #example
Title: "Spouse Related to Patient"
Description: "The husband or wife, considered in relation to the patient."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].family = "Jones"
* name[=].given[+] = "Mike"
* telecom[+][phone].system = #phone
* telecom[=][phone].value = "+27821234567"
* relationship = $SCT#127850001

Instance: PatientEducationalLevelObservationExample
InstanceOf: PatientEducationalLevelObservation
Usage: #example
Title: "Highest education level attained"
Description: "A patient's highest education level attained"
* status = #final
* code = $LNC#LL5338-0
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueCodeableConcept = $LNC#LA42-7
* valueCodeableConcept.text = "Graduate degree"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: TargetFacilityEncounterExample
InstanceOf: TargetFacilityEncounter
Usage: #example
Title: "Target Facility Encounter" 
Description: "Represents the current facility at which the patient is receiving health services."
* status = #completed
* class.coding.code = #AMB
* class.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* subject = Reference(ImmunizationPatientExample)
* actualPeriod.start = "2022-12-01"
* actualPeriod.end = "2023-01-20"

Instance: OrganizationExample
InstanceOf: ServiceProvider
Usage: #example
Title: "Organization"
Description: "Organization providing health related services."
* name = "Some Health Facility"