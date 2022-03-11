Profile:        BePopulationBasedScreeningEpisodeOfCare
Parent:         EpisodeOfCare
Id:             Be-Bvo-EpisodeOfCare
Title:          "BE Episode Bevolkingsonderzoek"
Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
* status = #active (exactly)
* type = #cacp (exactly)
* patient only Reference(BePatient)
* patient 1..1
* extension contains BvoConditionCode named Condition 0..1 MS
* extension contains BvoNextInvitationIndication named nextInvitationDate 0..1

Extension: BvoNextInvitationIndication
Description: "The estimated date on which to expect the next invitation"
* value[x] only date

Extension: BvoConditionCode
Description: "The certainty of diagnosis"
* value[x] only CodeableConcept
* value[x] from BvoConditionCodeVS (extensible)

ValueSet: BvoConditionCodeVS
Description: "Values of possible Conditions ofr wich to perform diagnostics"
* $sct#4473006 "Migraine with aura"

Alias: $sct = http://snomed.info/sct

Instance: exampleEpisodeBevolkingsonderzoek
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "123"
* patient = Reference(exampleMaleBePatient)
* managingOrganization = Reference(CvKO)
* period.start = "2014-09-01"


Instance: exampleMaleBePatient
InstanceOf: Patient
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient"
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier.value = "12345"
* name.family = "Jack"
* name.given = "Bauer"
* gender = #male

Instance: CvKO
InstanceOf: Organization
Usage: #example
* name = "Centrum voor Kankeropsporing"
* alias = "CvKO"