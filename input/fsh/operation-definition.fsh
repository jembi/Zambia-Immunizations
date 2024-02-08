Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm

Instance: StructureMap-transform
InstanceOf: OperationDefinition
Usage: #definition
//* extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
//* extension[=].valueInteger = 2
//* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
//* extension[=].valueCode = #trial-use
* url = "http://openhie.org/fhir/zambia-immunizations/OperationDefinition/StructureMap-transform"
//* version = "5.0.0"
* name = "Transform"
* title = "Model Instance Transformation"
* status = #draft
* kind = #operation
* experimental = false
* date = "2023-03-26T15:21:02+11:00"
//* publisher = "HL7 (FHIR Project)"
//* contact.telecom[0].system = #url
//* contact.telecom[=].value = "http://hl7.org/fhir"
//* contact.telecom[+].system = #email
//* contact.telecom[=].value = "fhir@lists.hl7.org"
* description = "The transform operation takes input content, applies a structure map transform, and then returns the output."
//* jurisdiction = $m49.htm#001 "World"
* affectsState = false
* code = #transform
* comment = "The input and return are specified as 'Resources'. In most usage of the $transform operation, either the input or return content is not a valid FHIR resource. In these cases, the return type is actually a [Binary](https://hl7.org/fhir/binary.html) resource. For this operation, the Binary resources may be encoded directly, using a mime-type, as shown in the example. Note: this specification does not yet address the means by which the servers may know the correct mime types for the various content involved"
* resource = #StructureMap
* system = false
* type = true
* instance = true
* parameter[0].name = #source
* parameter[=].use = #in
* parameter[=].scope = #type
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The structure map to apply. This is only needed if the operation is invoked at the resource level and no structureMap has been provided. If the $transform operation is invoked on a particular structure map, this will be ignored by the server"
* parameter[=].type = #uri
* parameter[+].name = #sourceMap
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "1"
* parameter[=].documentation = "The structure map to apply. This is only needed when the operation is invoked at the resource level and no URI has been provided."
* parameter[=].type = #StructureMap
* parameter[+].name = #supportingMap
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "StructureMap resources that support the source map. If a source URL is provided, the map can be provided in this parameter (or it can be provided as sourceMap)."
* parameter[=].type = #StructureMap
* parameter[+].name = #srcMap
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "The same as structureMap, but the resource is provided in the mapping language rather than as a structureMap."
* parameter[=].type = #string
* parameter[+].name = #content
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The logical content to transform"
* parameter[=].type = #Resource
* parameter[+].name = #return
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The result of the transform"
* parameter[=].type = #Resource