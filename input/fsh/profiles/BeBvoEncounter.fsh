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
* class = #AMB
* episodeOfCare = Reference(exampleEpisodeBevolkingsonderzoek)
* appointment = Reference(BreastCancerScreeningAppointment)
* period.start = "2022-03-15T11:30:00.000+02:00"
* location.location = Reference(mammographicUnit)
* participant[0].individual = Reference(examplePatient)
* contained[0] = mammographicUnit
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)


Instance: PositiveBreastCancerResult
InstanceOf: BeObservation
Usage: #example
Title: "Positive Breast Cancer Result"
Description: "Observation with positive/abnormal result"
* status = #final
* code = $sct#280415008
* encounter = Reference(BreastCancerEncounterExample)
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(exampleEpisodeBevolkingsonderzoek)
* performer = Reference(Organization/CvKO) //Element Observation.performer has minimum cardinality 1 but occurs 0 time(s). ?? not in spec https://www.hl7.org/fhir/observation.html


Alias: $sct = http://snomed.info/sct

ValueSet: BeBvoResultVS
Id: be-bvo-result-vs
Title: "Be Bvo Result VS"
Description: "Result"
* $sct#280415008 "afwijkend"
* $sct#280413001 "niet afwijkend"