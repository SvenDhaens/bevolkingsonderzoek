ValueSet: BeAllergyIntoleranceCode
Id: be-allergyintolerancecode
Title: "ValueSet allergy intolerance code"
Description: "Codes as communicated by NIHDI and the FOD Terminology Center differentiating types of allergy intolerance codes. This valueset supports the Belgian federal FHIR profiling effort."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* include codes from valueset $be-causativeagent
* include codes from valueset $be-noallergy