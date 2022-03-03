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
* subject only Reference(Patient)
* code from BeVSBevolkingsonderzoekFollowUpAdvice (extensible)
* extension contains BeExtBevolkingsonderzoekFollowUpGoedkeuring named FollowupGoedkeuring 0..1

Extension: BeExtBevolkingsonderzoekFollowUpGoedkeuring
Id: be-bevolkingsonderzoek-follow-up-goedkeuring
Title: "Be Bevolkingsonderzoek follow Up Goedkeuring"
Description: "Patiënt approval for collection of follow up data by the bevolkingsonderzoek responsible authority. Indication if the patiënt accepted that the bevolkingsonderzoek responsible authority can ask the healthcare providers of the patiënt for information on examinations performed after the patiënt had a positive result.
Can probably be removed or replaced by note."
* ^purpose = "Notify the patiënt that the patiënt accepted that the bevolkingsonderzoek responsible authority can ask the healthcare providers of the patiënt for information on examinations performed after the patiënt had a positive result."
* ^status = #draft
* value[x] only boolean

ValueSet: BeVSBevolkingsonderzoekFollowUpAdvice
Description: "Possible follow up actions"
* ^status = #draft
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#colonoscopy "Colonoscopy"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#additional_mammography_or_and_echography_left "Links: bijkomende mammografie en/of echografie"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#additional_mammography_or_and_echography_right "Rechts: bijkomende mammografie en/of echografie"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#pathological_examination_left "Links: pathologisch onderzoek"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#pathological_examination_right "Rechts: pathologisch onderzoek"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#mammographic_check_after_6_months_left "Links: mammografische controle(s) na 6 maanden"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#mammographic_check_after_6_months_richt "Rechts: mammografische controle(s) na 6 maanden"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#compare_with_previous_mammography_left "Links: te vergelijken met vorige mammografie"
* https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#compare_with_previous_mammography_right "Rechts: te vergelijken met vorige mammografie"

CodeSystem: BeCSBevolkingsonderzoekFollowUpAdvice
Description: "Code system for follow up advice for Bevolkingsonderzoek screenings"
* ^status = #draft
* #colonoscopy "Colonoscopie"
* #additional_mammography_or_and_echography_left "Links: bijkomende mammografie en/of echografie"
* #additional_mammography_or_and_echography_right "Rechts: bijkomende mammografie en/of echografie"
* #pathological_examination_left "Links: pathologisch onderzoek"
* #pathological_examination_right "Rechts: pathologisch onderzoek"
* #mammographic_check_after_6_months_left "Links: mammografische controle(s) na 6 maanden"
* #mammographic_check_after_6_months_richt "Rechts: mammografische controle(s) na 6 maanden"
* #compare_with_previous_mammography_left "Links: te vergelijken met vorige mammografie"
* #compare_with_previous_mammography_right "Rechts: te vergelijken met vorige mammografie"


Instance: ColorectalCancerScreeningFollowUpExample
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Colorectal Cancer Screening Follow Up Example Positive"
Description: "Follow up after positive colorectal cancer screening"
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code = https://www.ehealth.fgov.be/standards/fhir/CodeSystem/BeCSBevolkingsonderzoekFollowUpAdvice/#colonoscopy

Instance: ColorectalCancerScreeningFollowUpExample2
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Colorectal Cancer Screening Follow Up Example Negative"
Description: "Follow up after negative colorectal cancer screening. This resource exists to notify the patiënt that the patiënt that possible follow up examination exists, but because the result of the Bevolkinsonderzoek screening was negative, the follow up examination should not be performed."
* intent = #proposal
* status = #active
* doNotPerform = true
* subject = Reference(JaneDoe)
* code.text = "colonoscopy"

Instance: BreastCancerScreeningFollowUp
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Breast Cancer Screening Follow Up"
Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patiënt that the patiënt should request additional examinations."
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code.text = "Rechts: bijkomende mammografie en/of echografie"
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-bevolkingsonderzoek-follow-up-goedkeuring"
* extension.valueBoolean = false

Instance: JaneDoe
InstanceOf: Patient
* name.family = "Doe"
* name.given = "Jane"