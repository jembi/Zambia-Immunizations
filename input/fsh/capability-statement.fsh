Instance: CapabilityStatement-ZambiaImmunizations
InstanceOf: CapabilityStatement
Usage: #definition
* status = #active
* description = "Zambia Immunizations"
* date = "2024-02-08"
* kind = #instance
* fhirVersion = #5.0.0
* format[+] = #json
* rest[+].mode = #server
* rest[=].resource.type = #StructureMap
* rest[=].resource.operation[+].definition = Canonical(StructureMap-transform)
* rest[=].resource.operation[=].name = "StructureMap-transform"
* implementation.description = "Zambia Immunizations"