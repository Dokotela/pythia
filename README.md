# pythia

Immunization Forecaster with Background, Information, and Guidance

## Get in touch

If you have any concerns about anything in this repo, please reach out to [grey@fhirfli.dev](mailto: grey@fhirfli.dev)

## 100% Credit goes to the CDC and their [Clinical Decision Support for Immunization (CDSi)](https://www.cdc.gov/vaccines/programs/iis/cdsi.html)

All I've done is take all of their hard work, guidance and expertise and make it computable (well, perhaps it's already computable, I made a computer actually do it).

## Third time's the charm?

- I've worked on this project a couple times before and was reasonably successful, but I'd like to see if I can truly (or at least mostly) make it a finished product this time
- As with my previous attempts, I'm going to try and keep fairly meticulous notes so that if I or anyone else ever tries to repeat this process, they'll have all of the guidance they need

## 1.1 Pre-preparation

- First thing is to download all of the [Supporting Data](https://www.cdc.gov/vaccines/programs/iis/downloads/supporting-data-4.40-508.zip) from the above site
- You'll notice they have both XML and XLSX files. Unfortunately (at least for me) I don't like either of these formats. So to fix this, I've created a generator that runs on google sheets.
- All of the XLSX files I've transferred into Gsheets, [the link can be found here](https://drive.google.com/drive/folders/1LUDu9y85qd0aJwFtvwv0h3fQUafqfTDq?usp=sharing)
- The Coded Observations sheets I had to remove all of the carriage returns ("\n" in Regex) because they screw up the Gsheets TSV parser in Dart
- I had to do the same for most of the Antigen spreadsheets as well (I replaced all "\n" with " ")
- So run the pythia generator (just be in the same directory as the project and run "```./generate.sh```")
- TODO: copy over files

## 2.1 Evaluation

- Because I can never find it, this is the workgroup around [Immunization Decision Support](http://hl7.org/fhir/us/immds/)
- Again all data and logic used in this forecaster is from the CDC, their manual can be found [here](https://www.cdc.gov/vaccines/programs/iis/interop-proj/downloads/logic-spec-acip-rec-4.3.pdf)
- While the logic is well thought-out and complete, it's complicated, and I found it difficult to decipher at times. Therefore, I've decided to go through the whole thing step by step and explain how I've interpreted it, in the hopes that maybe someday it will help someone else (although it's most likely just going to help me)

### Introduction to Immunization Forecasting (numbers below match numbers in manual)

## 3.1 Target Dose (3.1 in manual)

### A TargetDose is said to be 'unsatisfied' until a dose matches all of its required criteria. At that time, the TargetDose is incremented by one. Below is a basic example from the CDC

![How a Vaccine Dose Administered Satisfies a Target Dose](images/3-1%20How%20a%20Vaccine%20Dose%20Administered%20Satisfies%20a%20Target%20Dose)

- Target dose - this is a term that makes some intrinsic sense, and then has been used in confusing ways, at least I thought so. The target dose is the next recommended dose in a series. When we evaluate past vaccines, we check to see if the next one given meets the requirements of the target dose. If it is, that dose is considered complete, and we move onto the next target dose.

#### *As a side note, anytime you see the term 'Vaccine Dose Administered' replace it with 'Dose Given', and it makes much more sense

## 3.2 Statuses

  TABLE 3-1 DOSE STATUS: recorded for each dose within each series
| Status       | Meaning         |
| ---------    |:-------------   |
| Extraneous   | Meaning the dose doesn't count towards the series, but doesn't need to be repeated (including maximum age and extra doses)              |
| Not Valid    | Not administered according to ACIP recommendations, does not count towards the series, will need to be repeated               |
| Sub-standard | Dose had a condition (e.g., expired, sub-potent, and recall) making it invalid, will need to be repated |
| Valid        | Meets ACIP requirements for that dose|

  TABLE 3-2 TARGET DOSE STATUSES: recorded for each dose within each series.
| Status | Meaning |
|--------|:------- |
| Not Satisfied | No dose given meets the target dose requirements|
| Satisfied | A dose has been given that meets target dose requirements |
| Skipped | No dose given meets requirements, but due to age/previous doses/other reasons, this target dose does not need to be satisfied and is skipped |

TABLE 3-3 PATIENT SERIES STATUSES: recorded for each series within the the antigen group
| Status          | Meaning |
|-------          |:--------|
| Aged Out        | Patient exceeded the maximum age prior to completing this series |
| Complete        | Patient has met all of the ACIP recommendations for this series |
| Contraindicated | Patient history indicates no more immunizations in this series should be given |
| Immune          | Patient has evidence of immunity, no further immunizations are needeed for this series |
| Not Complete    | Patient has not met all of the ACIP recommendations for this series|
| Not Recommended | Patient's immunization history provides sufficient immunity, and further doses in this series are not recommended |

## 3.3 Selecting Supporting Data

TABLE 3-5 Is the Logical Component Relevant?
| Business Rule ID | Business Rule |
|:------|:--------------------------|
| RELEVANT-1 | A component applies to a previously given vaccination if there is no Effective Date or Cessation Date, they are both "n/a", or the date given is between the two |
| RELEVANT-2 | A component applies to forecasting a vaccination if there is no Effective Date or Cessation Date, they are both "n/a", or the assessment date is between the two |

## 3.4 Date Calculations

As anyone who has worked with dates can tell you, they're a huge pain in the ass. I've created a dedicated class for dealing with them called VaxDate. The CDC has stated how they expect for dates to be processed, I've reproduced this below.

TABLE 3-6 GENERAL DATE RULES
| Business Rule | Example |
|:------|:--------------------------|
| When adding only years, <br> month and days stay constant | 01/01/2000 + 3 years = 01/01/2003 |
| When adding months, <br> day must stay constant | 01/01/2000 + 6 months = 07/01/2000 <br> 11/01/2000 + 6 months = 05/01/2001 |
| When adding weeks or days, <br> add that total number of days <br> to the existing date | 01/01/2000 + 3 days = 01/04/2000 <br> 01/01/2000 + 3 weeks = 01/22/2000 <br> 02/01/2000 + 5 weeks = 03/07/2000 (leap year) <br> 02/01/2001 + 5 weeks = 03/08/2001 (not a leap year) |
| Subtracting days is just subtracting <br> days from the date (I've implemented <br> it as just negative addition | 01/15/2000 – 4 days = 01/11/2000 |
| If the calculated date isn't a real date, <br> it is moved to the first of the next month | 03/31/2000 + 6 months = 10/01/2000 (September 31 does not exist) <br> 08/31/20010 + 6 months = 03/01/2001 (February 31 does not exist) |
| Date must be calculated by first years, <br> then months, then weeks/days <br> (ToDo: not sure I completely did this) | 01/31/2000 + 6 months – 4 days = 07/27/2000 |

It's important to note, and it took me a while to catch onto their wording, there are ages and age dates. They are what they say they are, but I struggled with them at first. An age (or an interval) is a string description of a period of time ('4 years', '19 years - 4 days', etc) these are supposed to be added (or subtracted) to a date (usually the DOB, although sometimes the date given of the previous dose). Also, these terms probably won't all make as much sense until you work through it some more.

TABLE 3-7 LOGICAL COMPONENT DATE RULES: some of these seem repetitive and probably unnecessary to put here
ToDo: get rid of these age dates that I don't actually use
| Business Rule | Caclulation |
|:------|:--------------------|
| Maximum age date | DOB + maximum age |
| Latest recommended age date | DOB + latest recommended age |
| Earliest recommended age date | DOB + earliest recommended age |
| Minimum age date | DOB + minimum age |
| Absolute minimum age date | DOB + absolute minimum age |
| Allowable vaccine type begin age date | DOB + vaccine type begin age (only applied for allowable vaccines) |
| Allowable vaccine type end age date | DOB + vaccine type end age (only applied for allowable vaccines) |
| Contraindication begin age date | DOB + contraindication begin age (for either an antigen or a vaccine) |
| Contraindication end age date | DOB + contraindication end age (for either an antigen or a vaccine) |
| Indication begin age date | DOB + indication begin age |
| Indication end age date | DOB + indication end age |
| Reference dose date: when evaluating intervals, sometimes this is from teh previous dose, soemetimes from another dose in the series (usually the first) |
| Reference Dose Date: doses will have an interval entry/recommendation, this is calculated from the immediate previous dose if: <br> - an interval entry with "FromPrevious" dose is "Y" <br> - the dose being evaluated has status of 'Valid' or Not Valid' <br> - (ToDo: current?) vaccine dose is not an inadvertent administration |"interval": [{<br> "fromPrevious": "Y", <br> "fromTargetDose": null, <br> "minInt": "4 weeks" }] |
| Reference dose date is calculated from a different dose in the series (and the interval is therefore calcluated from the date of that dose) if the following are true: <br> - the interval entry states immediate previous dose administered is 'N'<br> - the interval entry target dose number is not null | "interval": [{ <br> "fromPrevious": "N", <br> "fromTargetDose": "1",<br> "minInt": "6 months" }] |
| Reference dose date is calculated from the most recent dose of the same vaccine type if the following are true: <br> - the "FromPrevious" is "N" <br> - "fromMostRecent" is not null <br> - the current dose is not an inadvertent administration| "interval": [{ <br> "fromPrevious": "N", <br> "fromTargetDose": null, <br> "fromMostRecent": "21; 94; 121", <br> "absMinInt": "0 days", <br> "minInt": "8 weeks" }] |
| Reference dose date is calculated from an observation if: <br> - "fromPrevious" is "N" <br> - "fromRelevantObs" is not null | "interval": [{ <br> "fromPrevious": "N", <br> "fromTargetDose": null, <br> "fromMostRecent": null, <br> "fromRelevantObs": { <br> "text": "Date of hematopoietic stem cell transplant", <br> "code": "171" },<br> "earliestRecInt": "6 months", <br> "latestRecInt": "12 months" }] |
| Absolute minimum interval date | date reference dose was given + absolute minimum interval |
| Minimum interval | date reference dose was given + minimum interval |
| Earliest recommended interval date | date reference dose was given + earliest recommended interval |
| Latest recommended interval date | date reference dose was given + latest recommended interval |
| Latest minimum interval date | if there is more than one interval specified (such as from previous and from a target dose), whichever comes later |
| Conflict begin interval date | date given of the conflicting dose + live virus conflict begin interval |
|Conflict end interval date | date given of the conflicting dose + live virus **MINIMUM CONFLICT** end interval if the conflicting dose **HAS** evaluation status of valid |
| Conflict end interval date | date given of the conflicting dose + live virus **CONFLICT** end interval if the conflicting dose **DOES NOT HAVE** evaluation status of valid |
| Latest conflict end interval date | if there is more than one interval specified (such as from previous and from an observation), whichever comes later |
| Preferable vaccine type begin age date | DOB + vaccine type begin age of a preferable vaccine |
| Conditional skip begin age date | DOB + begin age of the conditional skip condition |
| Conditional skip end age date | DOB + end age of the conditional skip condition |
| Conditional skip interval date | date given of the immediate previous dose + interval of the conditional skip condition |

## 4 - Processing Model

### A quick overview of the basic logic because I think it helps makes more sense of what is to come

- Most of the logic is at the level of the antigen, and most vaccines are broken down into their antigenic components and the logic is applied using them
- The basic gist of immunization logic runs like this:
- Create list of antigens that the patient should be immunized against
- Multiple options exist for immunity, some through infection (e.g. varicella), others through completing a vaccine series
- There are multiple series that are valid for inducing immunity, and may be appropriate given certain conditions, allergies, age, etc
- Each dose that has already been received is compared against the doses in every series, to see if they match required ages, intervals, etc
- When a historical vaccine satisies a dose in a series, the next recommended dose for each series is calculated
- After all historical vaccines are applied to each series, the series are scored according to factors such as how many valid doses they contain, how quickly they can be completed, or if they are the default series
- These scores are used to determine the preferred series for that particular antigen
- The series are then grouped together in Vaccine groups (MMR, DTAP, etc) to provide final recommendations for vaccines
- While not supplied in the official logic, these Vaccine groups should then be combined to actual Vaccines, with CVX/MVX codes and names, although this is somewhat more challenging as it usually has to do with which vaccines are available, rather than true preferences or recommendations

## 4.1

### The actual steps involved in forecasting vaccinations

1. Evaluate All Patient Series
2. Evaluate each dose administered to see if it meets all required criteria for each appropriate series, and then forecast the next required dose for the series
3. Select Patient Series
4. Select the patient series by antigen to recommend for the patient
5. Identify and Evaluate Vaccine Group
6. Merge Antigen Recommendations into Vaccine Recommendations

Many of the diagrams from the CDC manual I didn't think made sense when I first when through them, and are still not terribly helpful to understanding the process, at least for me, so I'm going to leave them out. Although this one isn't bad:

![Figure ](images/4-2%20Refinement%20of%20Patient%20Series)

## 2.2 Organize Immunization History

### This is pretty self explanatory. After obtaining all of the immunization a patient has received, break them down into their [antigenic components](lib/features/immunizationForecast/data/datasources/scheduleSupportingData/cvxToAntigenMap.json)

## 2.3 Evaluate Immunization History

### This is actually one of the sections that made more sense to me, but I'll still try and clear it up a bit

1. For each series, within each antigen, we start at the first target dose.
2. We compare, in chronological order, all of the antigens the patient has received that could satisfy the target dose.
3. If the patient has received no antigens for this series, we are finished with that series for now.
4. There are multiple requirements that have to be met to satisfy a target dose (was the vaccine given at the correct age, was the interval between the last dose and this dose appropriate, etc).
5. If all of those requirements are met, then that target dose is said to be satisfied.
6. If the patient has more antigens, we start the process over and evaluate the antigens remaining against the next target dose.
7. When the patient has not more doses, or the series has no more target doses (we have successfully completed it), then we are done and can move onto the next series
8. The one exception is for series that are recurring (such as Flu or Tetanus). In this case, anytime a target dose is met, a new target dose, identical to the original is created, adn then compared against the previous vaccines.
