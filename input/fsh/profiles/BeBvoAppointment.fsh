Profile: BeBvoAppointment
Parent: Appointment
Id: be-bvo-appointment
Title: "Be Bvo Appointment"
Description: "Appointment for bevolkingsonderzoek"
* ^status = #draft
* extension contains BeBvoEpisodeOfCare named Episode 1..1 MS

Instance: BreastCancerScreeningAppointment
InstanceOf: BeBvoAppointment
Usage: #example
Title: "Appointment Breast Cancer Screening"
Description: "Appointment for mammography in a mammographic unit in context of breast cancer screening"
* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(mammographicUnit)
* participant[=].status = #accepted
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BeBvoEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)
* contained[0] = mammographicUnit

Instance: ColonCancerScreeningAppointment
InstanceOf: BeBvoAppointment
Usage: #example
Title: "Appointment Colon Cancer Screening"
Description: "Appointment for stool sample in context of colon cancer screening"
* status = #booked
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BeBvoEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)


Instance: CervicalCancerScreeningAppointment
InstanceOf: BeBvoAppointment
Usage: #example
Title: "Appointment Cervical Cancer Screening"
Description: "Proposed appointment in context of cervical cancer screening"
* status = #proposed
* start = "2022-03-15T00:00:00.000+02:00"
* end = "2022-03-15T23:59:00.000+02:00"
* participant[0].actor = Reference(JaneDoe)
* participant[=].status = #tentative
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BeBvoEpisodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)
