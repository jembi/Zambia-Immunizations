Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $GENDER = http://hl7.org/fhir/administrative-gender
Alias: $SEX = http://terminology.hl7.org/CodeSystem/v2-0001
Alias: $PROPRIETARY_EDU_LEVEL = http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-propietary-education-level-attained
Alias: $PARENT_RELATIONSHIP_CODES = http://terminology.hl7.org/CodeSystem/v3-RoleCode

CodeSystem: CSPropietaryEducationLevelAttained
Id: cs-propietary-education-level-attained
Title: "Patient's highest education level attained (Propietary)"
Description: "A list of propietary education levels."
* ^experimental = false
* ^caseSensitive = true
* #CertificateGraduate "Certificate Graduate" "The description"
* #DegreeGraduate "Degree Graduate" "The description"
* #DiplomaGraduate "Diploma Graduate" "The description"
* #JuniorSecondary "Junior Secondary" "The description"
* #MastersGraduate "Masters Graduate" "The description"
* #NoFormalEducation "No Formal Education" "The description"
* #PhDGraduate "PhD Graduate" "The description"
* #Primary "Primary" "The description"
* #SeniorSecondary "Senior Secondary" "The description"

ValueSet: VSPropietaryEducationLevelAttained
Id: vs-propietary-education-level-attained
Title: "Patient's highest education level attained (Propietary)"
Description: "A list of propietary education levels."
* ^experimental = false
* include codes from system CSPropietaryEducationLevelAttained

ValueSet: VSLOINCEducationLevelAttained
Id: vs-loinc-education-level-attained
Title: "Patient's highest education level attained (LOINC)"
Description: "A list of LOINC education levels."
* ^experimental = false
* $LNC#LA35-1 "No schooling"
* $LNC#LA30193-9 "More than high school"
* $LNC#LA32469-1 "University undergraduate degree"
* $LNC#LA32466-7 "Primary school education"
* $LNC#LA36-9 "8th grade/less"
* $LNC#LA37-7 "9-11 grades"
* $LNC#LA12461-2 "Master's degree (e.g., MA, MS, MEng, MEd, MSW, MBA)"
* $LNC#LA30185-5 "Doctoral degree (e.g., PhD, EdD)"
* $LNC#LA12459-6 "Associate degree (e.g., AA, AS)"

ValueSet: VSIndividualOccupation
Id: vs-occupation
Title: "Occupation"
Description: "Codes for classifying an individual's occupation."
* ^experimental = false
* include codes from system $SCT
    where concept descendent-of #14679004

ValueSet: VSSpouseRelationCodes
Id: vs-spouse-relation-type
Title: "Spouse Relation Types"
Description: "Codes for classifying the type of spouse."
* ^experimental = false
* include codes from system $SCT
    where concept descendent-of #127848009