Instance: BK-1-no-screening-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "Je ontvangt geen volgende uitnodiging omdat je hebt laten weten dat je geen uitnodiging meer wou ontvangen. Indien je meer informatie wenst over dit onderzoek kan je dit best bespreken met je arts. "
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237640"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"



Instance: BK-2-invitation-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De datum van volgende uitnodiging is afhankelijk van de uitslag van het verdere onderzoek. "
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237640"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-2-invitation-example-invitation
InstanceOf: BeBvoAppointment
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(EpisodeOfCare/3237640)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[0].actor = Reference(Patient/JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(1)
* participant[=].status = #accepted



Instance: BK-3-invitation-participation-negative-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237640"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-3-invitation-participation-negative-example-appointment
InstanceOf: BeBvoAppointment
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(EpisodeOfCare/3237640)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[0].actor = Reference(Patient/JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(1)
* participant[=].status = #accepted

Instance: BK-3-invitation-participation-negative-example-encounter
InstanceOf: BeBvoEncounter
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(EpisodeOfCare/3237640)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode##AMB
* subject = Reference(Patient/JaneDoe)
* episodeOfCare = Reference(EpisodeOfCare/3237640)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(1)

Instance: BK-3-invitation-participation-negative-example-observation
InstanceOf: BeBvoObservation
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(EpisodeOfCare/3237640)
* status = #FINAL
* code = http://snomed.info/sct#280413001 "Niet afwijkend"
* code.text = "Niet afwijkend"
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-3-invitation-participation-negative-example-encounter)