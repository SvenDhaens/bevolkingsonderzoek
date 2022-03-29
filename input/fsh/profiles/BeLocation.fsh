Profile: BeLocation
Parent: Location
Id: be-location
Title: "Be Location"
Description: "Location with BE address"
* ^status = #draft
* address only BeAddress

Instance: mammographicUnit
InstanceOf: BeLocation
Usage: #inline
Title: "Mammographic Unit"
Description: "Location of a mammographic unit"
* name = "Mammografic unit example name"
* address.city = "Merelbeke"
* address.postalCode = "9820"
* address.country = "BE"
* address.line = "Verlorenbroodstraat 122"
* address.text = "Verlorenbroodstraat 122, 9820 Merelbeke"
* address.extension.url = "http://hl7.org/fhir/StructureDefinition/language"
* address.extension.valueCode = #nl
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Verlorenbroodstraat"
* address.line.extension[+].url =  "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString =  "122"