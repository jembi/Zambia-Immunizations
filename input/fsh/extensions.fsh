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

Extension: StructureMaps
Id: structure-map
Title: "Structure Map"
Description: "Structure maps used in this implementation guide."
* value[x] 1..
* value[x] only Canonical(StructureMap)
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Observation"