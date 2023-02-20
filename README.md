# pythia

Immunization Forecaster with Background, Information, and Guidance

## Get in touch

If you have any concerns about anything in this repo, please reach out to [grey@fhirfli.dev](mailto: grey@fhirfli.dev)

## 100% Credit goes to the CDC and their [Clinical Decision Support for Immunization (CDSi)](https://www.cdc.gov/vaccines/programs/iis/cdsi.html)

All I've done is take all of their hard work, guidance and expertise and make it computable (well, perhaps it's already computable, I made a computer actually do it).

## Third time's the charm?

- I've worked on this project a couple times before and was reasonably successful, but I'd like to see if I can truly (or at least mostly) make it a finished product this time
- As with my previous attempts, I'm going to try and keep fairly meticulous notes so that if I or anyone else ever tries to repeat this process, they'll have all of the guidance they need

## Pre-preparation

- First thing is to download all of the [Supporting Data](https://www.cdc.gov/vaccines/programs/iis/downloads/supporting-data-4.40-508.zip) from the above site
- You'll notice they have both XML and XLSX files. Unfortunately (at least for me) I don't like either of these formats. So to fix this, I've created a generator that runs on google sheets.
- All of the XLSX files I've transferred into Gsheets, [the link can be found here](https://drive.google.com/drive/folders/1LUDu9y85qd0aJwFtvwv0h3fQUafqfTDq?usp=sharing)
- The Coded Observations sheets I had to remove all of the carriage returns ("\n" in Regex) because they screw up the Gsheets TSV parser in Dart
- I had to do the same for most of the Antigen spreadsheets as well (I replaced all "\n" with " ")
