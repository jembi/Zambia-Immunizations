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

Extension: PatientStructureMap
Id: patient-structure-map
Title: "Patient Structure Map"
Description: "Patient Structure Map"
* value[x] 1..
* value[x] only Canonical(StructureMap)
* ^context[+].type = #element
* ^context[=].expression = "Patient"