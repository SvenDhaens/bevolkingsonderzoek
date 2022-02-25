Profile: BeBevolkingsonderzoekFollowUp
Parent: ServiceRequest
Id: be-bevolkingsonderzoek-follow-up
Title: "Be Bevolkingsonderzoek Follow Up"
Description: "Follow up data"
* ^status = #draft
* intent = #proposal (exactly)
* subject only Reference(Patient)
* code from BeBevolkingsonderzoekFollowUpOnderzoek
* extension contains BeBevolkingsonderzoekFollowUpGoedkeuring named followup_goedkeuring 0..1

Extension: BeBevolkingsonderzoekFollowUpGoedkeuring
Id: be-bevolkingsonderzoek-follow-up-goedkeuring
Title: "Be Bevolkingsonderzoek follow Up Goedkeuring"
Description: "Goedkeuring voor verwerking gegevens follow up onderzoek"
* value[x] only boolean

ValueSet: BeBevolkingsonderzoekFollowUpOnderzoek
Description: "Mogelijk aangeraden vervolgonderzoek"
* http://axians.be/#colonoscopy "Colonoscopy"



Instance: ColorectalCancerScreeningFollowUp
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Colorectal Cancer Screening Follow Up"
Description: "Follow up after positive colorectal cancer screening"
* status = #draft
* subject = Reference(JaneDoe)
* code = #colonoscopy
//* followup_goedkeuring.be-bevolkingsonderzoek-follow-up-goedkeuring = true

Instance: JaneDoe
InstanceOf: Patient
* name.family = "Doe"
* name.given = "Jane"