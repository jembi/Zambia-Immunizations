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
* ^context[=].expression = "Patient"

Extension: EducationLevelAttained
Id: education-level-attained
Title: "Patient's highest education level attained"
Description: "A list of education levels."
* value[x] only CodeableConcept
* valueCodeableConcept from VSLOINCEducationLevelAttained (required)
* valueCodeableConcept.text = "Highest education level attained"
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.code 1..1
* ^context[0].type = #element
* ^context[0].expression = "Patient"