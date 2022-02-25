Profile: BeObservationCodeableConcept
Parent: CodeableConcept
Id: be-observationcodeableconcept
Title: "Observation codeable concept core BE profile"
Description: """This is a supporting profile, only to give guidelines how to express a few of the typical coding systems. In general, it shall be noted SNOMED-CT is the preferred national terminology. 
Other coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"""
* ^version = "1.0.0"
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* coding ^slicing.discriminator.type = #value
* coding ^slicing.discriminator.path = "system"
* coding ^slicing.rules = #open
* coding contains
    LOINC 0..* and
    SNOMED-CT 0..* and
    ALBERTCODE 0..*
* coding[LOINC].system 1..
* coding[LOINC].system = "http://loinc.org" (exactly)
* coding[LOINC].code 1..
* coding[SNOMED-CT].system 1..
* coding[SNOMED-CT].system = "http://snomed.info/sct" (exactly)
* coding[SNOMED-CT].code 1..
* coding[ALBERTCODE].system 1..
* coding[ALBERTCODE].system = "https://www.ehealth.fgov.be/standards/fhir/CodeSystem/albert" (exactly)
* coding[ALBERTCODE].code 1..