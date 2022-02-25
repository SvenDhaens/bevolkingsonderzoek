Profile: BePatient
Parent: Patient
Id: be-patient
Title: "Patient core BE profile"
Description: """Belgian federal profile for a patient. Initially based on the functional description of the NIHDI. Special remarks for KMEHR users: following elements in KMEHR are not available in this FHIR resource. 
If needed, an extension can be defined in a future iteration of these specifications: the 'deathlocation' (location is not available but the death of the patient is expressed by either date or Boolean cfr. infra.),
the 'insurancystatus' (covered in a seperate FHIR resource: Coverage), 'insurancymembership' (covered in a seperate FHIR resource: Coverage) and 'profession' (covered in a possible future FHIR resource: OccupationalData.)"""
* ^version = "1.0.0"
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* extension contains
    $patient-nationality named nationality 0..* and
    $patient-birthPlace named birthPlace 0..1
* extension[nationality].extension contains
    code 0..1 and
    period 0..1
* extension[nationality].extension[code].valueCodeableConcept 1..1
* extension[nationality].extension[period].valuePeriod 1..1
* extension[birthPlace].valueAddress 0..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains SSIN 0..* MS
* identifier[SSIN].system 1..
* identifier[SSIN].system = "https://www.ehealth.fgov.be/standards/fhir/NamingSystem/ssin" (exactly)
* identifier[SSIN].value 1..
* name MS
* name ^definition = "A name associated with the individual.\n\nIt is RECOMMENDED to give at least one familyname and at least one given name when possible and define an 'official' use. When names are given, a consumer SHALL NOT ignore it."
* telecom ^definition = "A contact detail (e.g. a telephone number or an email address) by which the individual may be contacted.\n\nIt is RECOMMENDED to at least add one phone or email address with clear indication using the .use element whether it is home use, private use,..."
* gender 1..
* birthDate ^definition = "The date of birth for the individual.\n\nIt is RECOMMENDED to give the birthdate when available."
* birthDate.extension contains $patient-birthTime named BirthTime 0..1
* birthDate.extension[BirthTime].valueDateTime 0..1
* deceased[x] only boolean
* deceased[x] ^definition = "Indicates if the individual is deceased or not.\n\nIt is RECOMMENDED to include deceased information when applicable"
* address only BeAddress
* address ^definition = "An address for the individual.\n\nIt is RECOMMENDED to include an address when available. When needed to express the availablity of a Patient at home (e.g. only Wednesdays), another solution will be defined."
* address ^comment = "Note: address is intended to describe postal addresses for administrative purposes, not to describe absolute geographical coordinates. Postal addresses are often used as proxies for physical locations (also see the resource).\n\nSpecial remarks for KMEHR users:\n\nNote when .use and .type are used they SHALL use the FHIR defined valuesets as per their required binding level in the FHIR specification. In a KMEHR address, \nthe use was defined by CD-ADDRESS but those values can be found in the FHIR valueset. KMEHR values 'careadress', 'other' and 'vacation' are not directly present in the FHIR address-use table but can be mapped\nto the value 'temp' in FHIR. In those cases, it is RECOMMENDED to also add a .period. In KMEHR, an address might be expressed using free text or a totally structured approach where the streetname and\nhousenumber are put in separate fields. FHIR prefers a more pragmatic approach where the 'text' element is used to print on labels. \nAlso, streetname and number are not separate fields as in KMEHR but in a structural approach are given as one or moren ‘line’ elements. It is however RECOMMENDED to use the Streetname, \nHousenumber and Postbox extensions to express them seperately. Note the FHIR address also allows to optionally define whether the address is a physical, postal or ‘both’ address using the .type field."
* maritalStatus from $be-civilstate (required)
* maritalStatus ^definition = "This field contains a patient's most recent marital (civil) status.\n\nIt is RECOMMENDED to include this when available. In a Belgian context, the concept ‘civil state’ , Dutch ‘burgerlijke stand’, French ‘état civil’ is more typically used and this might imply a more neutral concept\nto the reader. In HL7 semantics however this concept is described as ‘marital status’ and it SHALL be understood as the same concept."
* multipleBirth[x] only boolean
* contact ^definition = "A contact party (e.g. guardian, partner, friend) for the patient.\n\nIt is RECOMMENDED to include this when available and considered relevant for the patientcare. (e.g. a parent of a young patient)"
* contact.relationship from BeContactPerson (extensible)
* communication ^definition = "A language which may be used to communicate with the patient about his or her health. \n\nIt is RECOMMENDED to include this when available.."
* communication ^comment = "If no language is specified, this implies that the default local language is spoken. If you need to convey proficiency for multiple modes, then you need multiple Patient.Communication associations. \nFor animals, language is not a relevant field, and should be absent from the instance. If the Patient does not speak the default local language, \nthen the Interpreter Required Standard can be used to explicitly declare that an interpreter is required.\n\nSpecial remarks for KMEHR users:\n\nThe 'usuallanguage' element in a KMEHR message only refers to the use of W3C language codes. As such, the language codes as proposed in the FHIR standard should not present any interoperability issue. \nNote the KMEHR element implies it is the language usally used by the patient. As such, when this element from KMEHR would be mapped to a FHIR resource, the communication.preferred Boolean SHOULD be used."
* generalPractitioner only Reference(BeOrganization or BePractitioner or BePractitionerRole)
* generalPractitioner ^definition = "Patient's nominated care provider.\n\nTake note this does not automatically imply any legal form of therapeutic link or consent relationship with this GP. It is RECOMMENDED to include this when available if the flow is in any way medical. \nPlease note this is an element of the Reference datatype. This means when it is available it will contain either a relative or absolute URL where this GP can be found. \nAlternatively, there is only an internal reference and the GP is included as a ‘contained resource’ (cfr. the HL7 FHIR specifications in what cases this applies)."
* generalPractitioner ^comment = "This may be the primary care provider (in a GP context), or it may be a patient nominated care manager in a community/disability setting, or even organization that will provide people to perform the care provider roles. \nIt is not to be used to record Care Teams, these should be in a CareTeam resource that may be linked to the CarePlan or EpisodeOfCare resources. Multiple GPs may be recorded against the patient for various reasons, such as a student that has his home GP listed along with the GP at university during the school semesters, or a \"fly-in/fly-out\" worker that has the onsite GP also included with his home GP to remain aware of medical issues.\n\nJurisdictions may decide that they can profile this down to 1 if desired, or 1 per type.\n\nSpecial remarks for KMEHR users:\n\nThe general practioner is in many KMEHR use cases known by being the author or sender of the message. This is however a functionally different concept from the generalPractioner as it is defined in the FHIR resource. \n(Consult the published definition on the HL7 webpage) It is also possible in KMEHR to add a general practioner via an item and using the correct value from CD-ITEM. That way is functionally closer to \nthe general practioner referenced here. Note in the FHIR base definition of this element that the scope of this element might be wider then just the general practicioner."
* managingOrganization only Reference(BeOrganization)
* managingOrganization ^definition = "Organization that is the custodian of the patient record.\n\nThis SHOULD be included when available.Please note this is an element of the Reference datatype. This means when it is available it will contain either a relative or absolute URL where this Organization can be found. \nAlternatively, there is only an internal reference and the Organization is included as a ‘contained resource’ (cfr. the HL7 FHIR specifications in what cases this applies)."
* managingOrganization ^comment = "There is only one managing organization for a specific patient record. Other organizations will have their own Patient record, and may use the Link property to join the records together (or a Person resource which can include confidence ratings for the association).\n\nSpecial remarks for KMEHR users:\n\nThe reference to the managing organization is the organization that is the custodian of the patient record. As there is no explicit ‘author of this record’ – like in a KMEHR message – this element functionally refers\nto the organization in charge. (Which might also be a GP practice of an individual.)"