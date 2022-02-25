Profile: BeAddress
Parent: Address
Id: be-address
Title: "Address core BE profile"
Description: "Belgian federal profile on address, to provide the possibility in the 'line' element to provide a seperate streetname, housenumber and postal box. It is always RECOMMENDED to give these elements seperately."
* ^version = "1.0.0"
* ^date = "2021-05-26T11:15:46+02:00"
* ^publisher = "eHealth Platform"
* ^contact[0].name = "eHealth Platform"
* ^contact[=].telecom.system = #url
* ^contact[=].telecom.value = "https://www.ehealth.fgov.be"
* ^contact[+].name = "Message structure"
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = "message-structure@ehealth.fgov.be"
* extension contains $language named language 0..1
* line.extension contains
    $iso21090-ADXP-streetName named streetName 0..* and
    $iso21090-ADXP-houseNumber named houseNumber 0..* and
    $iso21090-ADXP-postBox named postBox 0..*
* line.extension[streetName].valueString 0..1
* line.extension[houseNumber].valueString 0..1
* line.extension[postBox].valueString 0..1
* country ^definition = "Country - a nation as commonly understood or generally accepted. Concerning the codification of the country, the FHIR specification defines its country field as a string and suggests using a ISO 3166 2 or 3 letter codes. \nAs that 2-letter format is also the standard in a KMEHR address, it is hence RECOMMENDED to codify the country in the same way as in KMEHR."