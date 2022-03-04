Profile:        BePopulationBasedScreeningEpisodeOfCare
Parent:         EpisodeOfCare
Id:             Be-Bvo-EpisodeOfCare
Title:          "belgian-bevolkingsonderzoek-episode-of-care"
Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
* identifier 0..*
* status = #active (exactly)
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

Instance: example
InstanceOf: BePopulationBasedScreeningEpisodeOfCare
Usage: #example
* identifier.system = "http://example.org/sampleepisodeofcare-identifier"
* identifier.value = "123"
* statusHistory[+].status = #active
* statusHistory[=].period.end = "2014-09-14"
* statusHistory[+].status = #finished
* statusHistory[=].period.start = "2016-09-15"
* type = http://terminology.hl7.org/CodeSystem/episodeofcare-type#hacc "Home and Community Care"
* diagnosis.condition = Reference(Condition/stroke)
* diagnosis.role = http://terminology.hl7.org/CodeSystem/diagnosis-role#CC "Chief complaint"
* diagnosis.rank = 1
* patient = Reference(Patient/examplePatient)
* managingOrganization = Reference(Organization/cvko)
* period.start = "2014-09-01"
* period.end = "2014-09-01"
* referralRequest.display = "Referral from Example Aged Care Services"
* careManager = Reference(Practitioner/14) "Amanda Assigned"
* team = Reference(CareTeam/example) "example care team"
* account = Reference(Account/example) "example account"

Instance: examplePatient
InstanceOf: Patient
Usage: #example
* meta.profile = "https://www.ehealth.fgov.be/standards/fhir/StructureDefinition/be-patient"
* identifier.use = #official
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#SB "Social Beneficiary Identifier"
* identifier.system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin"
* identifier.value = "12345"
* name[0].use = #official
* name[=].family = "Chalmers"
* name[=].given[0] = "Peter"
* name[=].given[+] = "James"
* name[+].use = #usual
* name[=].given = "Jim"
* name[+].use = #maiden
* name[=].family = "Windsor"
* name[=].given[0] = "Peter"
* name[=].given[+] = "James"
* telecom[0].use = #home
* telecom[+].system = #phone
* telecom[=].value = "(03) 5555 6473"
* telecom[=].use = #work
* telecom[=].rank = 1
* telecom[+].system = #phone
* telecom[=].value = "(03) 3410 5613"
* telecom[=].use = #mobile
* telecom[=].rank = 2
* telecom[+].system = #phone
* telecom[=].value = "(03) 5555 8834"
* telecom[=].use = #old
* telecom[=].period.end = "2014"
* gender = #male
* birthDate = "1974-12-25"
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/patient-birthTime"
* birthDate.extension.valueDateTime = "1974-12-25T14:35:45-05:00"
* deceasedBoolean = false
* address.use = #home
* address.type = #both
* address.text = "534 Erewhon St PeasantVille, Rainbow, Vic  3999"
* address.line = "534 Erewhon St"
* address.city = "PleasantVille"
* address.district = "Rainbow"
* address.state = "Vic"
* address.postalCode = "9000"
* address.period.start = "1974-12-25"
* contact.relationship = http://terminology.hl7.org/CodeSystem/v2-0131#N
* contact.name.family = "du Marché"
* contact.name.family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
* contact.name.family.extension.valueString = "VV"
* contact.name.given = "Bénédicte"
* contact.telecom.system = #phone
* contact.telecom.value = "+32 (050) 998327"
* contact.address.use = #home
* contact.address.type = #both
* contact.address.line = "534 Erewhon St"
* contact.address.city = "PleasantVille"
* contact.address.district = "Rainbow"
* contact.address.state = "Vic"
* contact.address.postalCode = "3999"
* contact.address.period.start = "1974-12-25"
* contact.gender = #male
* contact.period.start = "2012"