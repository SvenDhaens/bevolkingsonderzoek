Profile: BeObservation
Parent: Observation
Id: be-observation
Title: "Observation core BE profile"
Description: """Belgian federal profile for an observation. Initially based on the functional description of the NIHDI. As Observation is used in many instances in FHIR, 
please refer to the HL7 specs of the base resource for guidance around expression of actual values using UCUM, methods, location on body etc.
Special remarks for KMEHR users: The FHIR Observation resource captures many things that are in a KMEHR message structured as an 'item'. 
This includes things like 'vital signs such as body weight, blood pressure, and temperature […], personal characteristics such as eye-color […] social history like tobacco use, family support, 
or cognitive status […]' ( https://www.hl7.org/fhir/R4/observation.html ) For some of these things, HL7 already has worked out profiles and they SHALL be used when such a use case is needed. 
Specifically, projects SHALL take note of the existing profiles described on https://www.hl7.org/fhir/R4/observation-vitalsigns.html."""
* ^version = "1.0.0"
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* code only BeObservationCodeableConcept
* code MS
* code ^definition = "Describes what was observed. Sometimes this is called the observation \"name\".\n\nFor providing systems, it is RECOMMENDED to express this using a code and consuming software SHALL record this. In general, it shall be noted SNOMED-CT is the preferred national terminology. \nOther coding systems remain allowed or MAY be preferred in specific flows (e.g. the use of LOINC codes to express a laboratory test.)"
* subject only Reference(Group or Device or Location or BePatient)
* performer 1..
* performer only Reference(CareTeam or RelatedPerson or BePatient or BeOrganization or BePractitionerRole or BePractitioner)