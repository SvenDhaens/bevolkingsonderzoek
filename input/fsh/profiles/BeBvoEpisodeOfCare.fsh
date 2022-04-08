Profile:        BePopulationBasedScreeningEpisodeOfCare
Parent:         EpisodeOfCare
Id:             Be-Bvo-EpisodeOfCare
Title:          "BE Episode Bevolkingsonderzoek"
Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
* ^status = #draft
* patient only Reference(BePatient)
* patient 1..1
* type from BevolkingsonderzoekScreeningVS (extensible) 
// * extension contains BvoConditionCode named Condition 0..1 MS
* extension contains BvoNextInvitationIndicationDate named nextInvitationDate 0..1
* extension contains BvoNextInvitationIndication named nextInvitationIndication 1..1

Extension: BvoNextInvitationIndicationDate
Description: "The estimated date on which to expect the next invitation"
* ^status = #draft
* value[x] only date

Extension: BvoNextInvitationIndication
Description: "This is variable text giving an estimate when the next screening is scheduled, if there is any and why."
* ^status = #draft
* value[x] only string

// Extension: BvoConditionCode
// Description: "The certainty of diagnosis"
// * ^status = #draft
// * value[x] only CodeableConcept
// * value[x] from BvoConditionCodeVS (extensible)

// ValueSet: BvoConditionCodeVS
// Description: "Values of possible Conditions ofr wich to perform diagnostics"
// * ^status = #draft
// * $sct#4473006 "Migraine with aura"

Alias: $sct = http://snomed.info/sct

Instance: exampleEpisodeBevolkingsonderzoek
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* status = #active
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "123"
* patient = Reference(exampleMaleBePatient)
* managingOrganization = Reference(CvKO)
* period.start = "2014-09-01"
* type = $sct#762444001
* type.text = "Dikkedarmkanker"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De datum van volgende uitnodiging is afhankelijk van de uitslag van het verdere onderzoek."


Instance: exampleMaleBePatient
InstanceOf: BePatient
Usage: #example
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier[SSIN].value = "12345"
* name.family = "Jack"
* name.given = "Bauer"
* gender = #male

Instance: CvKO
InstanceOf: Organization
Usage: #example
* name = "Centrum voor Kankeropsporing"
* alias = "CvKO"


ValueSet: BevolkingsonderzoekScreeningVS
Id: bevolkingsonderzoek-screening-vs
Title: "Bevolkingsonderzoek Screening VS"
Description: "Bevolkingsonderzoek screening types"
* ^status = #draft
* $sct#268547008 "Borstkanker"
* $sct#762444001 "Dikkedarmkanker"
* $sct#171149006 "Baarmoederhalskanker"