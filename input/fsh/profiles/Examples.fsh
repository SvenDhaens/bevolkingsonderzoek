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
* identifier.value = "3237641"
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
* extension.valueReference = Reference(BK-2-invitation-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[0].actor = Reference(Patient/JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(Location/1)
* participant[=].status = #accepted


Instance: BK-3-invitation-participation-negative-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237642"
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
* extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[0].actor = Reference(Patient/JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(Location/1)
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
* extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode##AMB
* subject = Reference(Patient/JaneDoe)
* episodeOfCare = Reference(BK-3-invitation-participation-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-3-invitation-participation-negative-example-observation
InstanceOf: BeBvoObservation
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-3-invitation-participation-negative-example-episode)
* status = #FINAL
* code = http://snomed.info/sct#280413001 "Niet afwijkend"
* code.text = "Niet afwijkend"
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-3-invitation-participation-negative-example-encounter)



Instance: BK-4-participation-negative-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237643"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-4-participation-negative-example-encounter
InstanceOf: BeBvoEncounter
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-4-participation-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode##AMB
* subject = Reference(Patient/JaneDoe)
* episodeOfCare = Reference(BK-4-participation-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-4-participation-negative-example-observation
InstanceOf: BeBvoObservation
Usage: #example
* status = #final
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-4-participation-negative-example-episode)
* code = http://snomed.info/sct#280413001 "Niet afwijkend"
* code.text = "Niet afwijkend"
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-4-participation-negative-example-encounter)



Instance: BK-5-negative-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237644"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-5-negative-example-invitation
InstanceOf: BeBvoAppointment
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #booked
* start = "2021-04-08T00:00:00.000+02:00"
* end = "2021-04-08T23:59:00.000+02:00"
* participant[0].actor = Reference(Patient/JaneDoe)
* participant[=].status = #tentative
* participant[+].actor = Reference(Location/1)
* participant[=].status = #accepted

Instance: BK-5-negative-example-participation
InstanceOf: BeBvoEncounter
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode##AMB
* subject = Reference(Patient/JaneDoe)
* episodeOfCare = Reference(BK-5-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-5-negative-result
InstanceOf: BeBvoObservation
Usage: #example
* status = #final
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-5-negative-example-episode)
* code = http://snomed.info/sct#280413001 "Niet afwijkend"
* code.text = "Niet afwijkend"
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-5-negative-example-participation)

Instance: BK-5-negative-example-advice-1
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #active
* intent = #proposal
* code = http://snomed.info/sct#71651007 "Mammografie"
* code.text = "Mammografie"
* subject = Reference(Patient/JaneDoe)
* bodySite[0] = http://snomed.info/sct#280413001 "Rechts"
* bodySite[=].text = "Rechts"
* bodySite[+] = http://snomed.info/sct#280415008 "Links"
* bodySite[=].text = "Links"
* patientInstruction = "Mammografie"

Instance: BK-5-negative-example-advice-2
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-5-negative-example-episode)
* status = #active
* intent = #proposal
* code = http://snomed.info/sct#16310003 "Echografie"
* code.text = "Echografie"
* subject = Reference(Patient/JaneDoe)
* bodySite[0] = http://snomed.info/sct#280413001 "Rechts"
* bodySite[=].text = "Rechts"
* bodySite[+] = http://snomed.info/sct#280415008 "Links"
* bodySite[=].text = "Links"
* patientInstruction = "Echografie"



Instance: BK-6-negative-example-episode
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* extension.url = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/BvoNextInvitationIndication"
* extension.valueString = "De volgende uitnodiging is voorzien rond 24/12/2024."
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "3237645"
* status = #active
* type = http://snomed.info/sct#268547008 "Bevolkingsonderzoek borstkanker"
* type.text = "Bevolkingsonderzoek borstkanker"
* patient = Reference(Patient/JaneDoe)
* managingOrganization = Reference(organization/CvKO)
* period.start = "2020-04-08T00:00:00+02:00"

Instance: BK-6-negative-example-participation
InstanceOf: BeBvoEncounter
Usage: #example
* contained.resourceType = "Location"
* contained.id = "1"
* contained.name = "AZ Jan Palfijn Gent"
* contained.address.text = "HENRI DUNANTLAAN 5, 9000 GENT"
* contained.address.line = "HENRI DUNANTLAAN 5, 9000 GENT"
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-6-negative-example-episode)
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode##AMB
* subject = Reference(Patient/JaneDoe)
* episodeOfCare = Reference(BK-6-negative-example-episode)
* period.start = "2021-07-17T00:00:00+02:00"
* period.end = "2021-07-17T23:59:00+02:00"
* location.location = Reference(Location/1)

Instance: BK-6-negative-example-result
InstanceOf: BeBvoObservation
Usage: #example
* status = #final
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-6-negative-example-episode)
* code = http://snomed.info/sct#280413001 "Niet afwijkend"
* code.text = "Niet afwijkend"
* subject = Reference(Patient/JaneDoe)
* encounter = Reference(BK-6-negative-example-participation)

Instance: BK-6-negative-example-advice
InstanceOf: BeBevolkingsonderzoekFollowUp
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare"
* extension.valueReference = Reference(BK-6-negative-example-episode)
* status = #active
* intent = #proposal
* code = http://snomed.info/sct#71651007 "Mammografie"
* code.text = "Mammografie"
* subject = Reference(Patient/JaneDoe)
* occurrenceDateTime = "2022-10-08T00:00:00+02:00"
* bodySite = http://snomed.info/sct#280413001 "Rechts"
* bodySite.text = "Rechts"
* patientInstruction = "Mammografie"