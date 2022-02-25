Profile: BePractitioner
Parent: Practitioner
Id: be-practitioner
Title: "Practitioner core BE profile"
Description: "Belgian federal profile for a practitioner. Initially based on the functional description of the NIHDI."
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
* identifier ^definition = "An identifier that applies to this person in this role. Typically, a NIHDI value and/or a SSIN value are given. Other systems remain allowed. Flows in organizations will most likely want to also include a local identifier, \nusing its own system. A type can be added if needed. When it is given, a consumer SHALL NOT ignore it."
* identifier contains
    NIHDI 0..* MS and
    CBE 0..* MS and
    SSIN 0..* MS
* identifier[NIHDI].system 1..
* identifier[NIHDI].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/nihdi" (exactly)
* identifier[NIHDI].value 1..
* identifier[CBE].system 1..
* identifier[CBE].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/cbe" (exactly)
* identifier[CBE].value 1..
* identifier[SSIN].system 1..
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..
* active ^definition = "Whether this practitioner's record is in active use.\n\nIt is RECOMMENDED to keep the value ‘true’ as long as the practitioner is still being treated by the provider of the data."
* name 1..
* name ^definition = "The name(s) associated with the practitioner.\n\nTypically RECOMMENDED to include one familyname and at least one given name and to define this use as ‘official’."
* telecom ^definition = "A contact detail for the practitioner, e.g. a telephone number or an email address.\n\nIt is RECOMMENDED to at least add one phone or email address."
* address only BeAddress
* communication ^definition = "A language the practitioner can use in patient communication.\n\nIt is RECOMMENDED to include this when available"