Profile: BeAllergyIntolerance
Parent: AllergyIntolerance
Id: be-allergyintolerance
Title: "Allergy Intolerance core BE profile"
Description: "Belgian federal profile for an allergy and/or an intolerance. Initially based on the functional description of the NIHDI."
* ^version = "1.0.0"
* ^status = #active
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* clinicalStatus MS
* clinicalStatus ^definition = "The clinical status of the allergy or intolerance.\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* verificationStatus MS
* verificationStatus ^definition = "Assertion about certainty associated with the propensity, or potential risk, of a reaction to the identified substance (including pharmaceutical product).\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* type MS
* type ^definition = "Identification of the underlying physiological mechanism for the reaction risk.\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system."
* category MS
* category ^definition = "Category of the identified substance.\n\nWhen available, a provider SHOULD include it in the istance. When given, a consumer SHALL record this in its consuming system."
* code 1.. MS
* code from BeAllergyIntoleranceCode (extensible)
* code ^definition = "Code for an allergy or intolerance statement (either a positive or a negated/excluded statement). This may be a code for a substance or pharmaceutical product that is considered to be responsible for the adverse reaction risk\n(e.g., \"Latex\"), an allergy or intolerance condition (e.g., \"Latex allergy\"), or a negated/excluded code for a specific substance or class (e.g., \"No latex allergy\") or a general or categorical negated statement \n(e.g., \"No known allergy\", \"No known drug allergies\"). Note: the substance for a specific reaction may be different from the substance identified as the cause of the risk, but it must be consistent with it. \nFor instance, it may be a more specific substance (e.g. a brand medication) or a composite product that includes the identified substance. It must be clinically safe to only process the 'code' and\nignore the 'reaction.substance'. If a receiving system is unable to confirm that AllergyIntolerance.reaction.substance falls within the semantic scope of AllergyIntolerance.code, \nthen the receiving system should ignore AllergyIntolerance.reaction.substance.\n\nA provider SHALL include it in the istance and a consumer SHALL record this in its consuming system. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."
* patient only Reference(BePatient)
* patient MS
* patient ^definition = "The patient who has the allergy or intolerance.\n\nA provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."
* recordedDate 1.. MS
* recordedDate ^definition = "The recordedDate represents when this particular AllergyIntolerance record was created in the system, which is often a system-generated date.\n\nA provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."
* recorder 1.. MS
* recorder only Reference(Practitioner or PractitionerRole or Patient or RelatedPerson or BePatient or BePractitioner or BePractitionerRole)
* recorder ^definition = "Individual who recorded the record and takes responsibility for its content.\n\nA provider SHALL include it in the istance and a consumer SHALL record this in its consuming system."
* asserter MS
* asserter ^definition = "The source of the information about the allergy that is recorded.\n\nWhen available, a provider SHOULD include it in the istance. When given, a consumer SHALL record this in its consuming system."
* note MS
* reaction MS
* reaction ^definition = "Details about each adverse reaction event linked to exposure to the identified substance.\n\nWhen available, a provider SHOULD include it in the istance. When given, a consumer SHALL record this in its consuming system."
* reaction.manifestation MS
* reaction.manifestation from $be-riskmanifestation (extensible)
* reaction.manifestation ^definition = "Clinical symptoms and/or signs that are observed or associated with the adverse reaction event.\n\nWhen available, a provider SHOULD include it. When given, a consumer SHALL record this in its consuming system. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."
* reaction.exposureRoute ^definition = "Identification of the route by which the subject was exposed to the substance. If needed codes can be used outside the given valueset, SNOMED-CT is preferred."
* reaction.exposureRoute.coding from $be-exposureroute (extensible)
* reaction.note ^definition = "Additional text about the adverse reaction event not captured in other fields.\n\nA note on this level SHOULD be avoided when not absolutely necessary. Preferably use the .note one level higher."