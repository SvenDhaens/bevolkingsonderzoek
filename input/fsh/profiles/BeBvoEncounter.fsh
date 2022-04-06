Profile: BeBvoEncounter
Parent: Encounter
Id: be-bvo-encounter
Title: "Be Bvo Encounter"
Description: "Encounter for screening - deelname aan bevolkingsonderzoek"
* ^status = #draft
* extension contains workflow-episodeOfCare named Episode 1..1 MS

Profile: BeBvoObservation
Parent: Observation
Id: be-bvo-observation
Title: "Be Bvo Observation"
Description: "Observation result of screening"
* ^status = #draft
* code from BeBvoResultVS (extensible)
* extension contains workflow-episodeOfCare named Episode 1..1 MS

Instance: BreastCancerEncounterExample
InstanceOf: BeBvoEncounter
Usage: #example
Title: "Breast Cancer Encounter Example"
Description: "Participation for breastcancer screening"
* status = #finished
* class.system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class.code = #AMB
* episodeOfCare = Reference(exampleEpisodeBevolkingsonderzoek)
* appointment = Reference(BreastCancerScreeningAppointment)
* period.start = "2022-03-15T11:30:00.000+02:00"
* location.location = Reference(mammographicUnit)
* subject = Reference(JaneDoe)
* contained[0] = mammographicUnit
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)


Instance: PositiveBreastCancerResult
InstanceOf: BeBvoObservation
Usage: #example
Title: "Positive Breast Cancer Result"
Description: "Observation with positive/abnormal result"
* status = #final
* code = $sct#280415008
* encounter = Reference(BreastCancerEncounterExample)
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)


Alias: $sct = http://snomed.info/sct

ValueSet: BeBvoResultVS
Id: be-bvo-result-vs
Title: "Be Bvo Result VS"
Description: "Result"
* $sct#280415008 "afwijkend"
* $sct#280413001 "niet afwijkend"