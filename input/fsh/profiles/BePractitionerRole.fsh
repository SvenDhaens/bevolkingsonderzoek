Profile: BePractitionerRole
Parent: PractitionerRole
Id: be-practitionerrole
Title: "Practitioner Role core BE profile"
Description: "Belgian federal profile for a practitioner role. Initially based on the functional description of the NIHDI."
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
* practitioner only Reference(BePractitioner)
* organization only Reference(BeOrganization)
* code ^slicing.discriminator.type = #value
* code ^slicing.discriminator.path = "coding.system"
* code ^slicing.rules = #open
* code ^definition = "Roles which this practitioner is authorized to perform for the organization.\n\nFor compatibility reasons, CD-HCPARTY is described here to express the role of the practitioner. Other coding systems remain allowed. Towards the future, the use of SNOMED-CT codes is also RECOMMENDED here. \nIn the future, other ways to codfy might however be also proposed.\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* code contains
    CD-HCPARTY 0..* MS and
    SNOMED-CT 0..* MS
* code[CD-HCPARTY].coding.system 1..
* code[CD-HCPARTY].coding.system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty" (exactly)
* code[CD-HCPARTY].coding.code 1..
* code[SNOMED-CT].coding.system 1..
* code[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* code[SNOMED-CT].coding.code 1..
* specialty ^slicing.discriminator.type = #value
* specialty ^slicing.discriminator.path = "coding.system"
* specialty ^slicing.rules = #open
* specialty contains SNOMED-CT 0..*
* specialty[SNOMED-CT].coding.system 1..
* specialty[SNOMED-CT].coding.system = "http://snomed.info/sct" (exactly)
* specialty[SNOMED-CT].coding.code 1..