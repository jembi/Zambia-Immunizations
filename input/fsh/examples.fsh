Instance: ImmunizationPatientExample
InstanceOf: ImmunizationPatient
Usage: #example
Title: "Immunization Patient"
Description: "Is used to document demographics and other administrative information about an individual receiving care or other health-related services."
* identifier[NUPIN][+].value = "1001-XXGB0-12345-5"
* identifier[NUPIN][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nupin"
* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/patient-nrc"

* name[+][otherName].use = #official
* name[=][otherName].family = "Smith"
* name[=][otherName].given[+] = "Jane"
* name[=][otherName].given[+] = "Maria"

* name[+][nickname].use = #nickname
* name[=][nickname].given[+] = "Smitty"

* birthDate = "1990-12-12"
* birthDate.extension[birthTime].valueDateTime = "1983-05-22T16:40:17+02:00"
* birthDate.extension[IsEstimatedDOB].valueBoolean = false
* maritalStatus.coding.code = #M
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* extension[bornInZambia].valueBoolean = true
* link[+].other = Reference(SpouseRelatedPersonExample)
* link[=].type = #seealso
* extension[religion].valueCodeableConcept.coding.code = #1013
* extension[religion].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/v3-ReligiousAffiliation"
* extension[religion].valueCodeableConcept.text = "Christian (non-Catholic, non-specific)"
* managingOrganization = Reference(OrganizationExample)
* extension[sex].valueCodeableConcept = $SEX#F

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
* valueCodeableConcept = $LNC#LA32469-1
* valueCodeableConcept.text = "University undergraduate degree"
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
Title: "Healthcare Service Provider"
Description: "An organization that provides healthcare services."
* identifier[XX].value = "facility-1"
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/healthcare-service-provider"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Healthcare service provider identifier"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #prov
* name = "Facility one"

Instance: ChiefAtBirthRelatedPersonExample
InstanceOf: ChiefAtBirthRelatedPerson
Usage: #example
Title: "Chief at Birth"
Description: "Patient's chief at birth."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].family = "Jones"
* relationship = $SCT#303119007

Instance: DatePatientFirstMarriedObservationExample
InstanceOf: DatePatientFirstMarriedObservation
Usage: #example
Title: "Patient's Date of First Marriage"
Description: "Records the date when the patient was first married"
* status = #final
* code = $SCT#365581002
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* valueDateTime = "1983-05-22T16:40:17+02:00"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: PatientFatherRelatedPersonExample
InstanceOf: PatientFatherRelatedPerson
Usage: #example
Title: "Father Relation to Patient"
Description: "The patient's father."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* relationship = $PARENT_RELATIONSHIP_CODES#FTH

Instance: GenericObservationExample
InstanceOf: GenericObservation
Usage: #example
Title: "Generic Social History Observation Profile"
Description: "This profile acts as a base profile from which more specific social history observation profiles can be derived."
* status = #final
* code = $SCT#160476009
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)

Instance: GuardianOccupationObservationExample
InstanceOf: GuardianOccupationObservation
Usage: #example
Title: "Guardian Occupation"
Description: "Records the current occupation for the guardian"
* status = #final
* code = $LNC#11341-5
* encounter = Reference(TargetFacilityEncounterExample)
* effectivePeriod.start = "2017-03-01"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept = $Occupation_CDC#41-3011.00.000158
* valueCodeableConcept.text = "Accounts Manager [Advertising Sales Agents]"

Instance: GuardianRelatedPersonExample
InstanceOf: GuardianRelatedPerson
Usage: #example
Title: "Guardian Relation to Patient"
Description: "A guardian to the patient."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Mike"
* name[=].family = "Smith"
* relationship = $SCT#394619001

Instance: PatientMotherRelatedPersonExample
InstanceOf: PatientMotherRelatedPerson
Usage: #example
Title: "Mother Relation to Patient"
Description: "The patient's mother."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"
* relationship = $PARENT_RELATIONSHIP_CODES#MTH

Instance: RelationToPatientExample
InstanceOf: RelationToPatient
Usage: #example
Title: "Generic Relation to Patient"
Description: "This profile acts as a base profile from which more specific RelatedPerson profiles can be derived."
* identifier[NRC][+].value = "999999/99/9"
* identifier[NRC][=].system = "http://openhie.org/fhir/zambia-immunizations/identifier/relative-nrc"
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"

Instance: RelativeRelatedPersonExample
InstanceOf: RelativeRelatedPerson
Usage: #example
Title: "Relative Relation to Patient"
Description: "The patient's relative."
* patient = Reference(ImmunizationPatientExample)
* name[+].use = #official
* name[=].given[+] = "Olivia"
* name[=].family = "Smith"
* relationship = $SCT#125677006

Instance: SpouseOccupationObservationExample
InstanceOf: SpouseOccupationObservation
Usage: #example
Title: "Spouse Occupation"
Description: "Records the current occupation for the spouse"
* status = #final
* code = $SCT#447057006
* encounter = Reference(TargetFacilityEncounterExample)
* effectivePeriod.start = "2017-03-01"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept = $Occupation_CDC#15-1131.00.000002
* valueCodeableConcept.text = ".NET Programmer [Computer Programmers]"

Instance: PatientHomeLanguageObservationExample
InstanceOf: PatientHomeLanguageObservation
Usage: #example
Title: "Patient's Home Language"
Description: "Records the home language for the patient"
* status = #final
* code = $SCT#224076006
* encounter = Reference(TargetFacilityEncounterExample)
* effectiveDateTime = "2022-11-30"
* category.coding.code = #social-history
* category.coding.system  = "http://terminology.hl7.org/CodeSystem/observation-category"
* subject = Reference (ImmunizationPatientExample)
* performer = Reference(OrganizationExample)
* valueCodeableConcept.coding.code = #Chokwe
* valueCodeableConcept.coding.system = "http://openhie.org/fhir/zambia-immunizations/CodeSystem/cs-home-language"
* valueCodeableConcept.text = "Chokwe"

Instance: MedicalInsuranceCompanyExample
InstanceOf: MedicalInsuranceCompany
Usage: #example
Title: "Medical Insurance Company"
Description: "A company that provides insurance to its subscribers that may include healthcare related policies."
* identifier[XX].value = "medical-insurance-company-1"
* identifier[XX].system = "http://openhie.org/fhir/zambia-immunizations/identifier/medical-insurance-company"
* identifier[XX].type.coding.code = #XX
* identifier[XX].type.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0203"
* identifier[XX].type.text = "Medical insurance company identifier"
* type.coding.system = "http://terminology.hl7.org/CodeSystem/organization-type"
* type.coding.code = #ins
* name = "Medical Insurance Company 1"

Instance: MedicalInsuranceExample
InstanceOf: MedicalInsurance
Usage: #example
Title: "Insurance or Medical Plan"
Description: "Insurance or medical plan details"
* status = #active
* kind = #insurance
* beneficiary = Reference(ImmunizationPatientExample)
* subscriberId.value = "504342245"
* subscriberId.system = "http://openhie.org/fhir/zambia-immunizations/identifier/beneficiary-insurance-id"
* policyHolder = Reference(MedicalInsuranceCompanyExample)

Instance: VaccinesExample
InstanceOf: Vaccines
Usage: #example
Title: "Vaccine Administration"
Description: "Records the vaccine administered to the patient."
* status = #completed
* vaccineCode = $SCT#82622003
* patient = Reference(ImmunizationPatientExample)
* occurrenceDateTime = "2022-11-30"
* encounter = Reference(TargetFacilityEncounterExample)
* protocolApplied.doseNumber = "0"