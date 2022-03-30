Logical: BeBevolkingsonderzoek
Description: "Logical model for recurrent popultation based screening (Bevolkingsonderzoek). The model represents one iteration of a screening, called episode. A patiënt can have multiple episodes for a given screening. A screening of a specific type for a given patiënt can be repeated after a certain period. Each time the screening is repeated results in a new episode."
* ^status = #draft
* patient 1..1 Reference(Patient) "The patiënt for the screening."
* screeningType 1..1 CodeableConcept "The related screening" "The related screening, for example breastcancer, coloncancer or cervicalcancer."
* screeningYear 1..1 string "The calender year of the screening." "The year the screening process/episode for the given screenig. If the patiënt participated, the participation year is taken. If the patiënt didn't participate, the calender year of the invitation is taken. 
If there is no invitation or participation, there will be no episode.
For example, if patiënt is allowed a population based screening every 2 years for a given screening type and the first screening episode invitation took place in 2022, the next episode will be created for the next invitation in 2024. 
If the patiënt has a refusal or exclusion registered and does not have a participation/invitation, so the patiënt does not have any episodes, the calender year of the registration of the refusal/exclusion is taken."
* invitation 0..1 BackboneElement "The appointment details of the invitation." "An invitation is not mandatory, in some cases a patiënt can participate for a screening without an invitation."
* invitation.Date 1..1 date "The date the patiënt is invited to participate in the population based screening."
* invitation.locationName 0..1 string "Human readable name of the location where the patiënt is invited to participate." "For some screenings, but not all, a location is provided for the patiënt."
* invitation.locationAddress 0..1 string "Human readable address of the invitation location." "For some screenings, but not all, a location is provided for the patiënt."
* participation 0..1 BackboneElement "The participation details." "A participation is not mandatory. A patiënt can choose not to participate for a screening."
* participation.date 1..1 date "The date the patiënt participated in the population based screening."
* participation.locationName 0..1 string "Human readable name of the location where the patiënt participated." "For some screenings, but not all, a location is provided for the patiënt."
* participation.locationAddress 0..1 string "Human readable address of the participation location." "For some screenings, but not all, a location is provided for the patiënt."
* participation.result 0..1 CodeableConcept "If the result of participation in the population based screening" "Notify the patiënt if the result was abnormal/positive or normal/negative, (Afwijkend/Niet afwijkend)"
* participation.followup 0..1 CodeableConcept "Details of proposed actions for the patiënt after the screening concluded." "This data acts purely as info for the patiënt to inform the patiënt of proposed actions and should not be followed up by the screening authority."
* participation.followup.needed 0..1 boolean "Indication if the patiënt should request or take other examinations/steps based on the outcome of the screening."
* participation.followup.advice 0..1 string "Indication what other examinations/steps the patient should taken."
* participation.followup.approved 0..1 boolean "If the patiënt has given permission to CvKO to collect follow up data (data of followup examinations/steps that follow after the screening concluded and are not organized by the screening authority.)"
* nextInvitationIndication 1..1 string "This field gives a short human readable indication for the patiënt if the patiënt can excpect future invitations for the population based screening en an estimation when the next invitation will be created. 
If the patiënt will not recieve future invitations for the screening, an short explanation will be given."