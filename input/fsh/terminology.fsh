Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $SEX = http://terminology.hl7.org/CodeSystem/v2-0001
Alias: $PROPRIETARY_EDU_LEVEL = http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-proprietary-education-level-attained
Alias: $PARENT_RELATIONSHIP_CODES = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: $ICD11 = http://id.who.int/icd11/mms
Alias: $HumanName = http://hl7.org/fhir/name-use

CodeSystem: CSProprietaryEducationLevelAttained
Id: cs-proprietary-education-level-attained
Title: "Patient's highest education level attained (Proprietary)"
Description: "A list of education levels based on Zambia point of care systems."
* ^experimental = false
* ^caseSensitive = true
* #CertificateGraduate "Certificate Graduate"
* #DegreeGraduate "Degree Graduate"
* #DiplomaGraduate "Diploma Graduate"
* #JuniorSecondary "Junior Secondary"
* #MastersGraduate "Masters Graduate"
* #NoFormalEducation "No Formal Education"
* #PhDGraduate "PhD Graduate"
* #Primary "Primary"
* #SeniorSecondary "Senior Secondary"

CodeSystem: CSProprietarySmartcareVaccinationSite
Id: cs-proprietary-smartcare-vaccination-site
Title: "Vaccination site types in Smartcare (Proprietary)"
Description: "A list of the type of vaccination sites (posts) where the vaccination was administered."
* ^experimental = false
* ^caseSensitive = true
* #Static "Static"
* #Outreach "Outreach"

ValueSet: VSProprietarySmartcareVaccinationSite
Id: vs-proprietary-smartcare-vaccination-site
Title: "Vaccination site types in Smartcare (Proprietary)"
Description: "A list of the type of vaccination sites (posts) where the vaccination was administered."
* ^experimental = false
* include codes from system CSProprietarySmartcareVaccinationSite

ValueSet: VSProprietaryEducationLevelAttained
Id: vs-proprietary-education-level-attained
Title: "Patient's highest education level attained (Proprietary)"
Description: "A list of education levels based on Zambia point of care systems."
* ^experimental = false
* include codes from system CSProprietaryEducationLevelAttained

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

CodeSystem: CSHomeLanguage
Id: cs-home-language
Title: "Patient's Home Language"
Description: "A list of languages."
* ^experimental = false
* ^caseSensitive = true
* #Ambo "Ambo"
* #Aushi "Aushi"
* #Bemba "Bemba"
* #Bisa "Bisa"
* #Chewa "Chewa"
* #Chikunda "Chikunda"
* #Chokwe "Chokwe"
* #Cishinga "Cishinga"
* #English "English"
* #Gova "Gova"
* #Ila "Ila"
* #Iwa "Iwa"
* #Kabende "Kabende"
* #Kaonde "Kaonde"
* #Lamba "Lamba"
* #Lenje "Lenje"
* #Lozi "Lozi"
* #Luvale "Luvale"
* #Namwanga "Namwanga"
* #Ngoni "Ngoni"
* #Soli "Soli"
* #Tonga "Tonga"

ValueSet: VSHomeLanguage
Id: vs-home-language
Title: "Patient's Home Language"
Description: "A list of languages."
* ^experimental = false
* include codes from system CSHomeLanguage

ValueSet: VSVaccines
Id: vs-vaccines
Title: "Vaccine Codes"
Description: "A List of Vaccine Codes Used In Zambia"
* ^experimental = false
* $ICD11#XM8866 "BBIBP-CorV"
* $ICD11#J07AE "Cholera vaccines"
* $ICD11#XM8NQ0 "Comirnaty®"
* $ICD11#XM1AG7 "Convidecia"
* $ICD11#XM7HT3 "CoronaVac®"
* $ICD11#XM1G90 "Covaxin"
* $ICD11#XM85P5 "Covi-Vac"
* $ICD11#XM68M6 "COVID-19 vaccine"
* $ICD11#XM4YL8 "COVID-19 Vaccine AstraZeneca"
* $ICD11#XM6QV1 "COVID-19 Vaccine Janssen"
* $ICD11#XM3DT5 "COVID-19 Vaccine Moderna"
* $ICD11#XM6AT1 "COVID-19 vaccine, DNA based"
* $ICD11#XM1NL1 "COVID-19 vaccine, inactivated virus"
* $ICD11#XM5DF6 "COVID-19 vaccine, live attenuated virus"
* $ICD11#XM9QW8 "COVID-19 vaccine, non-replicating viral vector"
* $ICD11#XM0CX4 "COVID-19 vaccine, replicating viral vector"
* $ICD11#XM0GQ8 "COVID-19 vaccine, RNA based"
* $ICD11#XM1J92 "COVID-19 vaccine, virus like particle (VLP)"
* $ICD11#XM5JC5 "COVID-19 vaccine, virus protein subunit"
* $ICD11#XM2YG8 "COVIran Barakat"
* $ICD11#XM97T2 "Covishield®"
* $ICD11#J07AF01 "diphtheria toxoid"
* $ICD11#07AF01 "diphtheria toxoid"
* $ICD11#J07CA11 "diphtheria-haemophilus influenzae B-pertussis-tetanus-hepatitis B"
* $ICD11#XM6SZ8 "EpiVacCorona"
* $ICD11#XM5ZJ4 "Gam-Covid-Vac"
* $ICD11#XM9FQ7 "Hayat-Vax"
* $ICD11#XM3U61 "Inactivated SARS-CoV-2 vaccine"
* $ICD11#XM9TQ1 "KCONVAC"
* $ICD11#J07BD53 "measles, combinations with rubella, live attenuated"
* $ICD11#XM4EC8 "MVC-COV1901"
* $ICD11#J07BM01 "papillomavirus (human types 6, 11, 16, 18)"
* $ICD11#J07AL02 "pneumococcus, purified polysaccharides antigen conjugated"
* $ICD11#J07BF02 "poliomyelitis oral, trivalent, live attenuated"
* $ICD11#J07BF03 "poliomyelitis, trivalent, inactivated, whole virus"
* $ICD11#XM97N6 "QazVac"
* $ICD11#XM3CT4 "Recombinant SARS-CoV-2 vaccine"
* $ICD11#J07BH01 "rota virus, live attenuated"
* $ICD11#XM3PG0 "Soberana-02"
* $ICD11#XM5QM6 "Sputnik-Light"
* $ICD11#J07AM51 "tetanus toxoid, combinations with diphtheria toxoid"
* $ICD11#J07AN01 "tuberculosis, live attenuated"
* $LNC#LP31687-4 "Vitamin A"
* $ICD11#XM52P3 "ZyCov-D"

ValueSet: AdministrativeSex
Id: vs-administrative-sex
Title: "Administrative Sex"
Description: "A List of Administrative Sex codes."
* ^experimental = false
* $SEX#M "Male"
* $SEX#F "Female"

CodeSystem: CSProprietaryHPVVaccinationSite
Id: cs-proprietary-hpv-vaccination-site
Title: "Vaccination site types in HPV (Proprietary)"
Description: "A list of vaccination sites (posts) where the vaccination was administered."
* ^experimental = false
* ^caseSensitive = true
* #Community "Community"
* #Facility "Facility"
* #School "School"

ValueSet: VSProprietaryHPVVaccinationSite
Id: vs-proprietary-hpv-vaccination-site
Title: "Vaccination site types in HPV (Proprietary)"
Description: "A list of vaccination sites (posts) where the vaccination was administered."
* ^experimental = false
* include codes from system CSProprietaryHPVVaccinationSite