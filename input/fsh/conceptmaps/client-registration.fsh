Instance:     AdministrativeSexToAdministrativeGender
InstanceOf:   ConceptMap
Title:     "Administrative Sex To Administrative Gender"
Description:  "Mapping to and from FHIR Administrative Sex coding to FHIR Administrative Gender."
Usage:        #definition

* name = "AdministrativeSexToAdministrativeGender"
* description = "Mapping to and from FHIR Administrative Sex coding to FHIR Administrative Gender."
* title = "ConceptMap to and From administrative sex to administrative gender"
* status = #active
* experimental = false
* date = "2024-01-30"

* group[+]
  * source = $SEX
  * target = $GENDER
  * insert ElementMap(M, male, equivalent)
  * insert ElementMap(F, female, equivalent)

* group[+]
  * source = $GENDER
  * target = $SEX
  * insert ElementMap(male, M, equivalent)
  * insert ElementMap(female, F, equivalent)
