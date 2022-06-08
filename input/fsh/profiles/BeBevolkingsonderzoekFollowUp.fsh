Profile: BeBevolkingsonderzoekFollowUp
Parent: ServiceRequest
Id: be-bevolkingsonderzoek-follow-up
Title: "Be Bevolkingsonderzoek Follow Up"
Description: "These are an indication which actions a patiënt can take next or which follow up examinations are proposed. This is a proposal. 
This resource exists to notify the patiënt that the patiënt should request additional examinations if the result was positive. 
If the screening was negative, the follow up examination should not be performed. In case of a negative result, the resource should not exist."
* ^purpose = "Notify the patiënt about possible follow up examinations/actions the patient can take."
* ^status = #draft
* intent = #proposal (exactly)
* subject only Reference(BePatient)
* code from BeVSBevolkingsonderzoekFollowUpAdvice (extensible)
* bodySite from BeVSBevolkingsonderzoekBodySiteLocation (extensible)
* patientInstruction
* occurrence[x]
* extension contains BeBvoEpisodeOfCare named Episode 1..1 MS

ValueSet: BeVSBevolkingsonderzoekFollowUpAdvice
Description: "Possible follow up actions"
* ^status = #draft
* http://snomed.info/sct#73761001 "Colonoscopy"

ValueSet: BeVSBevolkingsonderzoekBodySiteLocation
Id: be-vsbevolkingsonderzoek-body-site-location
Title: "Be VS Bevolkingsonderzoek Body Site Location"
Description: "Location on body"
* ^status = #draft
* http://snomed.info/sct#14742008 "Dikke darm"

Instance: ColorectalCancerScreeningFollowUpExample
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Colorectal Cancer Screening Follow Up Example Positive"
Description: "Follow up after positive colorectal cancer screening"
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code = http://snomed.info/sct#73761001
* patientInstruction = "Colonoscopie"
* bodySite = http://snomed.info/sct#14742008
* bodySite.text = "Dikke darm"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BeBvoEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)

Instance: BreastCancerScreeningFollowUpExample
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Breast Cancer Screening Follow Up Example"
Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patiënt that the patiënt should request additional examinations."
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* patientInstruction = "Ga naar de arts die u hebt opgegeven bij het onderzoek, dit is uw huisarts of gynaecoloog of andere, voor een verwijsbrief voor bijkomend onderzoek."
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BeBvoEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)

Instance: JaneDoe
InstanceOf: BePatient
Description: "female example patient"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female