Bevolkingsonderzoek IG
---

###
# General
For analysis purposes in search of the perfect implementation for Bevolkingsonderzoeken

## First Steps
 - [Install Sushi](#SUSHI)
 - [Install IG generation Dependencies](#IG Generation)
 - (Optional: [Install GoFsh](#GoFsh))
 - Read [Info](#Other Links)

## Publication
This ImplementationGuide is published in the following locations:

Continuous Build: __https://svendhaens.github.io/bevolkingsonderzoek/index.html__  
Canonical / permanent URL: https://www.ehealth.fgov.be/standards/fhir
<br> </br>

## Issues
Issues and change requests are managed here:  

Issues:  __https://github.com/<handle>/<repo>/issues__  
Kanban board:  __https://github.com/<handle>/<repo>/projects/1__  

###References
---

## Other Links
[Syntax](https://hl7.org/fhir/uv/shorthand/2020May/reference.html)
[SUSHI - github](https://github.com/FHIR/sushi)

## Install Tools
### SUSHI
[fshschool.org/docs/sushi/installation/](https://fshschool.org/docs/sushi/installation/)

### IG Generation
to be able to use the IG generation functionality - requires the following:
[Install Ruby + Jekkyl](https://jekyllrb.com/docs/installation/#guides)

### GoFsh
Extract existing resources from existing IG w this tool
[Install Gofsh](https://fshschool.org/docs/tutorials/gofsh/)


## FireLy Terminal

[Syntax](https://fshschool.org/docs/sushi/tips/)
[Firely Terminal versions](https://www.nuget.org/packages/Firely.Terminal)

## FOR DEBIAN
https://simplifier.net/downloads/firely-terminal
https://docs.microsoft.com/nl-nl/dotnet/core/install/linux?WT.mc_id=dotnet-35129-website

sudo snap install dotnet-sdk --classic --channel=6.0

sudo dotnet tool install -g firely.terminal
#as root add to .bashrc
export PATH="$PATH:/root/.dotnet/tools"

## 