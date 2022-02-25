Profile: BeOrganization
Parent: Organization
Id: be-organization
Title: "Organization core BE profile"
Description: "Belgian federal profile for an organization. Initially based on the functional description of the NIHDI."
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
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^definition = "Identifier for the organization that is used to identify the organization across multiple disparate systems. Typically, a NIHDI value and/or a CBE or EHP value are given. \nOther systems are allowed. Flows in organizations will most likely want to also include a local identifier, using its own system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it."
* identifier contains
    NIHDI 0..* MS and
    CBE 0..* MS and
    SSIN 0..* MS and
    EHP 0..* MS
* identifier[NIHDI].system 1..
* identifier[NIHDI].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi" (exactly)
* identifier[NIHDI].value 1..
* identifier[CBE].system 1..
* identifier[CBE].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/cbe" (exactly)
* identifier[CBE].value 1..
* identifier[SSIN].system 1..
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..
* identifier[EHP].system 1..
* identifier[EHP].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ehp" (exactly)
* identifier[EHP].value 1..
* active ^definition = "Whether the organization's record is still in active use. It is RECOMMENDED to keep the value ‘true’ as long as the organization is known to be active."
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "coding.system"
* type ^slicing.description = "Slice based on the identifier.code pattern"
* type ^slicing.rules = #open
* type ^definition = "The kind(s) of organization that this is.\n\nProposed use of CD-HCPARTY to type the organisation using dept... or org... codes. Other systems remain allowed. In typical use, RECOMMENDED to type the organization. \nIn the future, specific other systems might also be proposed from a federal level to better type an organization."
* type contains CD-HCPARTY 0..*
* type[CD-HCPARTY].coding.system 1..
* type[CD-HCPARTY].coding.system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/cd-hcparty" (exactly)
* type[CD-HCPARTY].coding.code 1..
* telecom ^definition = "A contact detail for the organization.\n\nIt is RECOMMENDED to at least add one phone or email address."
* address only BeAddress
* address ^definition = "An address for the individual.\n\nIt is RECOMMENDED to include an address when available. When needed to express the availablity of a Patient at home (e.g. only Wednesdays), another solution will be defined."