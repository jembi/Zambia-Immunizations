Extension: BornInZambia
Id: born-in-zambia
Title: "Patient born in Zambia?"
Description: "This is an extension to capture whether the patient was born in Zambia."
* value[x] only boolean
* value[x] 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient"

Extension: IsEstimatedDateOfBirth
Id: is-estimated-date-of-birth
Title: "Patient's Date of Birth Is Estimated?"
Description: "This is an extension to capture whether the patient's date of birth was estimated."
* value[x] only boolean
* value[x] 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient.birthDate"

Extension: AdministrativeSex
Id: administrative-sex
Title: "Administrative Sex"
Description: "This is an extension to capture that patient's administrative sex."
* value[x] only CodeableConcept
* valueCodeableConcept from AdministrativeSex (required)
* value[x] 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient"