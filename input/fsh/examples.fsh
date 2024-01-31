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
* maritalStatus.extension[DateFirstMarried].valueDateTime = "2001-11-10T12:05:17+02:00"
* extension[BIZ].valueBoolean = true
* extension[EducationLevelAttained].valueCodeableConcept.coding.code = $LNC#LA42-7
* extension[EducationLevelAttained].valueCodeableConcept.coding.system = "http://loinc.org"
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