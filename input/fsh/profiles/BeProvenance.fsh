Profile: BeProvenance
Parent: Provenance
Id: be-provenance
Title: "Provenance core BE profile"
Description: """Belgian federal profile for a provenance. Note this profile does not introduce any changes from the base profile but has been created to mark its importance, 
specifically when FHIR is used in a non-document approach. General use case remarks: 'Provenance of a resource is a record that describes entities and processes involved in producing and delivering or 
otherwise influencing that resource.' (cfr. the HL7 base specifications) According to the FHIR specifications, the provenance resource SHALL only be provided when no other resource already plays this role: 
for a Patient it SHOULD be its managing organization, provenance of an Observation SHOULD be its performer, provenance of an AllergyIntolerance SHOULD be its recorder. 
'Many other FHIR resources contain some elements that represent information about how the resource was obtained, and therefore they overlap with the functionality of the Provenance.' 
Special remarks for KMEHR users: The FHIR Provenance resource in general refers to an entity that had something to do with the creation or updating of something else. In a KMEHR context, 
this is somewhat different – as it is ‘XML document’ based, each KMEHR message has an 'author' element that is responsible."""
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