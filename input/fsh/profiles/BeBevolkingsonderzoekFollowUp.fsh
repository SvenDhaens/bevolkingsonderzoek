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
//* extension contains BeExtBevolkingsonderzoekFollowUpGoedkeuring named FollowupGoedkeuring 0..1
* bodySite from BeVSBevolkingsonderzoekBodySiteLocation (extensible)
* patientInstruction
* occurrence[x]
* extension contains workflow-episodeOfCare named Episode 1..1 MS

// Extension: BeExtBevolkingsonderzoekFollowUpGoedkeuring
// Id: be-bevolkingsonderzoek-follow-up-goedkeuring
// Title: "Be Bevolkingsonderzoek follow Up Goedkeuring"
// Description: "Patiënt approval for collection of follow up data by the bevolkingsonderzoek responsible authority. Indication if the patiënt accepted that the bevolkingsonderzoek responsible authority can ask the healthcare providers of the patiënt for information on examinations performed after the patiënt had a positive result.
// Can probably be removed or replaced by note."
// * ^purpose = "Notify the patiënt that the patiënt accepted that the bevolkingsonderzoek responsible authority can ask the healthcare providers of the patiënt for information on examinations performed after the patiënt had a positive result."
// * ^status = #draft
// * value[x] only boolean

ValueSet: BeVSBevolkingsonderzoekFollowUpAdvice
Description: "Possible follow up actions"
* ^status = #draft
* http://snomed.info/sct#73761001 "Colonoscopy"
* http://snomed.info/sct#71651007 "Mammography"
* http://snomed.info/sct#43204002 "Mammography of both breasts"
* http://snomed.info/sct#566571000119105  "Mammography of right breast"
* http://snomed.info/sct#572701000119102  "Mammography of left breast"
* http://snomed.info/sct#16310003  "Echography"
* http://snomed.info/sct#47079000  "Echography of breast"
* http://snomed.info/sct#308462001 "Referral to pathology service"
* BeCSBevolkingsonderzoekFollowUpAdvice#compare_with_previous_mammography
// * #additional_mammography_or_and_echography_left "Links: bijkomende mammografie en/of echografie"
// * #additional_mammography_or_and_echography_right "Rechts: bijkomende mammografie en/of echografie"
// * #pathological_examination_left "Links: pathologisch onderzoek"
// * #pathological_examination_right "Rechts: pathologisch onderzoek"
// * #mammographic_check_after_6_months_left "Links: mammografische controle(s) na 6 maanden"
// * #mammographic_check_after_6_months_richt "Rechts: mammografische controle(s) na 6 maanden"
// * #compare_with_previous_mammography_left "Links: te vergelijken met vorige mammografie"
// * #compare_with_previous_mammography_right "Rechts: te vergelijken met vorige mammografie"

CodeSystem: BeCSBevolkingsonderzoekFollowUpAdvice
Description: "Code system for follow up advice for Bevolkingsonderzoek screenings"
* ^status = #draft
* #compare_with_previous_mammography "te vergelijken met vorige mammografie"
// * #colonoscopy "Colonoscopie"
// * #additional_mammography_or_and_echography_left "Links: bijkomende mammografie en/of echografie"
// * #additional_mammography_or_and_echography_right "Rechts: bijkomende mammografie en/of echografie"
// * #pathological_examination_left "Links: pathologisch onderzoek"
// * #pathological_examination_right "Rechts: pathologisch onderzoek"
// * #mammographic_check_after_6_months_left "Links: mammografische controle(s) na 6 maanden"
// * #mammographic_check_after_6_months_richt "Rechts: mammografische controle(s) na 6 maanden"
// * #compare_with_previous_mammography_left "Links: te vergelijken met vorige mammografie"
// * #compare_with_previous_mammography_right "Rechts: te vergelijken met vorige mammografie"

ValueSet: BeVSBevolkingsonderzoekBodySiteLocation
Id: be-vsbevolkingsonderzoek-body-site-location
Title: "Be VS Bevolkingsonderzoek Body Site Location"
Description: "Location on body"
* ^status = #draft
* http://snomed.info/sct#80248007 "Left breast"
* http://snomed.info/sct#73056007 "Right breast"
// * http://snomed.info/sct#63762007 "Both breasts"

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
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)

Instance: BreastCancerScreeningFollowUpExample
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Breast Cancer Screening Follow Up Example"
Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patiënt that the patiënt should request additional examinations."
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code = http://snomed.info/sct#71651007
* code.text = "bijkomende mammografie"
* patientInstruction = "Rechts: bijkomende mammografie"
* bodySite = http://snomed.info/sct#73056007
* bodySite.text = "Rechterborst"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)
// * extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-bevolkingsonderzoek-follow-up-goedkeuring"
// * extension.valueBoolean = false

Instance: BreastCancerScreeningFollowUpWithExample2
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
Title: "Breast Cancer Screening Follow Up Example 2"
Description: "Follow up after positive breast cancer screening. This is a proposal. This resource exists to notify the patiënt that the patiënt should request additional examinations."
* intent = #proposal
* status = #active
* subject = Reference(JaneDoe)
* code = http://snomed.info/sct#71651007
* code.text = "bijkomende mammografie"
* patientInstruction = "Links: mammografische controle na 6 maanden"
* bodySite = http://snomed.info/sct#80248007
* bodySite.text = "Linkerborst"
* occurrenceDateTime = "2022-09-15"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)

Instance: JaneDoe
InstanceOf: BePatient
Description: "female example patient"
* name.family = "Doe"
* name.given = "Jane"
* gender = #female