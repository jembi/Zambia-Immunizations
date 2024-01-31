Instance: HImmunizationPatientExample
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
* extension[BIZ].valueBoolean = true
* extension[IsEstimatedDOB].valueBoolean = false
* extension[EducationLevelAttained].valueCodeableConcept.coding.code = $LNC#LA42-7
* extension[EducationLevelAttained].valueCodeableConcept.coding.system = "http://loinc.org"