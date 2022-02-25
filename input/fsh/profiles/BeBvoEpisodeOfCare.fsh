Profile:        BeBvoEpisodeOfCare
Parent:         EpisodeOfCare
Id:             Be-Bvo-EpisodeOfCare
Title:          "belgian-bevolkingsonderzoek-episode-of-care"

Description:    "Manages a recurring periodical workflow for diagnostics in regard to a specific Condition."
* identifier 0..*
* status = #active (exactly)
* patient only Reference(Patient)
* patient 1..1
* extension contains BvoConditionCode named Condition 0..1 MS

Extension: BvoConditionCode
Description: "The certainty of diagnosis"
* value[x] only CodeableConcept
* value[x] from BvoConditionCodeVS

ValueSet: BvoConditionCodeVS
Description: "Values of possible Conditions ofr wich to perform diagnostics"
* $sct#4473006 "Migraine with aura"

Alias: $sct = http://snomed.info/sct

