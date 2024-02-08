Invariant: NUPIN-SmartcareID-1
Description: "Only letters, special characters (dash) and numbers are allowed. For example: 1001-XXGB0-12345-5, 5010-010-12345-5"
Expression: "$this.matches('[0-9A-Za-z]{1,4}-[0-9A-Za-z]{1,5}-[0-9]{1,5}-[0-9]{1}')"
Severity: #error

Invariant: NRC-SmartcareID-1
Description: "Only special characters (forward slash) and numbers are allowed. For example: 999999/99/9"
Expression: "$this.matches('[0-9]{1,6}/[0-9]{1,2}/[0-9]{1}')"
Severity: #error

Invariant: PatientName-Smartcare-1
Description: "If name.use is NOT nickname then name.family SHALL be present."
Expression: "use.exists() and use != 'nickname' implies family.exists()"
Severity: #error

Invariant: PN-Passport
Description: "Only uppercase alphanumeric characters and numbers are allowed. For example: AA000000"
Expression: "$this.matches('[A-Z]{1,2}[0-9]{1,8}')"
Severity: #error