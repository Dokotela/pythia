# pythia

Immunization Forecaster with Background, Information, and Guidance

## Get in touch

If you have any concerns about anything in this repo, please reach out to [grey@fhirfli.dev](mailto: grey@fhirfli.dev)

## 100% Credit goes to the CDC and their [Clinical Decision Support for Immunization (CDSi)](https://www.cdc.gov/vaccines/programs/iis/cdsi.html)

All I've done is take all of their hard work, guidance and expertise and make it computable (well, perhaps it's already computable, I made a computer actually do it).

## Third time's the charm?

- I've worked on this project a couple times before and was reasonably successful, but I'd like to see if I can truly (or at least mostly) make it a finished product this time
- As with my previous attempts, I'm going to try and keep fairly meticulous notes so that if I or anyone else ever tries to repeat this process, they'll have all of the guidance they need

## 1 Pre-Preparation

### 1.1 Just some updates (and so my instructions align numerically with the CDC manual)

- First thing is to download all of the [Supporting Data](https://www.cdc.gov/vaccines/programs/iis/downloads/supporting-data-4.40-508.zip) from the above site
- You'll notice they have both XML and XLSX files. Unfortunately (at least for me) I don't like either of these formats. So to fix this, I've created a generator that runs on google sheets.
- All of the XLSX files I've transferred into Gsheets, [the link can be found here](https://drive.google.com/drive/folders/1LUDu9y85qd0aJwFtvwv0h3fQUafqfTDq?usp=sharing)
- The Coded Observations sheets I had to remove all of the carriage returns ("\n" in Regex) because they screw up the Gsheets TSV parser in Dart
- I had to do the same for most of the Antigen spreadsheets as well (I replaced all ```"\n"``` with ```" "```)
- So run the pythia generator (just be in the same directory as the project and run "```./generate.sh```")
- I added in test case generation as well
- Pulls from the spreadsheets to create test cases
- Once again, had to replace all ```"\n"``` with ```" "``` for the generation
- TODO: copy over files

## 2 Props to the folks who deserve it

### 2.1 Evaluation

- Because I can never find it, this is the workgroup around [Immunization Decision Support](http://hl7.org/fhir/us/immds/)
- Again all data and logic used in this forecaster is from the CDC, their manual can be found [here](https://www.cdc.gov/vaccines/programs/iis/interop-proj/downloads/logic-spec-acip-rec-4.3.pdf)
- While the logic is well thought-out and complete, it's complicated, and I found it difficult to decipher at times. Therefore, I've decided to go through the whole thing step by step and explain how I've interpreted it, in the hopes that maybe someday it will help someone else (although it's most likely just going to help me)

## 3 Logical Specification Concepts

### 3.1 Target Dose

#### A TargetDose is said to be 'unsatisfied' until a dose matches all of its required criteria. At that time, the TargetDose is incremented by one. Below is a basic example from the CDC

![How a Vaccine Dose Administered Satisfies a Target Dose](images/How%20a%20Vaccine%20Dose%20Administered%20Satisfies%20a%20Target%20Dose.png)

- Target dose - this is a term that makes some intrinsic sense, and then has been used in confusing ways, at least I thought so. The target dose is the next recommended dose in a series. When we evaluate past vaccines, we check to see if the next one given meets the requirements of the target dose. If it is, that dose is considered complete, and we move onto the next target dose.

#### *As a side note, anytime you see the term 'Vaccine Dose Administered' replace it with 'Dose Given', and it makes much more sense

### 3.2 Statuses

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

### 3.3 Selecting Supporting Data

TABLE 3-5 Is the Logical Component Relevant?
| Business Rule ID | Business Rule |
|:------|:--------------------------|
| RELEVANT-1 | A component applies to a previously given vaccination if there is no Effective Date or Cessation Date, they are both "n/a", or the date given is between the two |
| RELEVANT-2 | A component applies to forecasting a vaccination if there is no Effective Date or Cessation Date, they are both "n/a", or the assessment date is between the two |

### 3.4 Date Calculations

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

### 4.1 Gathering Necessary Data

Many of the diagrams from the CDC manual I didn't think made sense when I first when through them, and are still not terribly helpful to understanding the process, at least for me, so I'm going to leave them out. Although this one isn't bad:

![Figure ](images/Refinement%20of%20Patient%20Series.png)

### 4.2 Organize Immunization History

### This is pretty self explanatory. After obtaining all of the immunization a patient has received, break them down into their [antigenic components](lib/features/immunizationForecast/data/datasources/scheduleSupportingData/cvxToAntigenMap.json)

### 4.3 Create Relevant Patient Series

This is a bit confusing at first. Later on in the logic it makes a bit more sense. At this stage there are just a couple of things to remember:

1. There are multiple ways to get appropriate immunity for an antigen
2. ANY of them are equally valid, and so we have to test each of them (as long as they are appropriate for the patient)
3. Standard Series: appropriate for anyone of the correct gender
4. Risk Series: appropriate for those with certain 'conditions' (in this context, conditions do not just refer to medical conditions, but may also refer to exposure, travel to endemic areas, etc). If a Risk series cannot be definitely applied to a patient, then it is not used in the forecast (but a notification should be sent to the clinician alerting them to this fact).

### 4.4 Evaluate and Forecast all Patient Series

1. For each antigen, we evaluate all of the relevant series.
2. For each series, we evaluate each required dose, the dose IN THE SERIES that we're trying to satisfy is called the target dose
3. We compare, in chronological order, all of the injections the patient has received that could satisfy the target dose
4. If the patient has received no antigens for this series, we are finished with that series for now
5. There are multiple requirements that have to be met to satisfy a target dose (was the vaccine given at the correct age, was the interval between the last dose and this dose appropriate, etc)
6. If all of those requirements are met, then that target dose is said to be satisfied
7. If not, and the patient has received more injections, we repeat this process with each subsequent injection until the target dose has been satisfied or there are no more injections to evaluate.
8. If we have evaluated all of the patient's injections against the series, or the series has no more target doses (meaning we have successfully completed it), then we are done and can move onto the next series
9. The one exception is for recurring series (such as Flu or Tetanus). For these, anytime a target dose is met, a new target dose, identical to the original is created, and then compared against the previous vaccines.

### 4.5 Select Patient Series

We're going to look through all of the series we just evaluated and find the one (or occasionally more than one) that is the best recommendation to get the patient fully immunized.

### 4.6 Identify and Evaluate Vaccine Group

The above series are for individual antigens, not vaccines. There are vaccine groups that go together (notably MMR and DTaP/Tdap/Td) and generally you don't give one without the others. Because of this, we have to join the individual antigens together and evaluate them as a group. It's similar to the process for individual antigens, but we'll get to that towards the end

## 5 Create Relevant Patient Series

### 5.1 Select Relevant Patient Series

- Correct gender, for the purposes of vaccine logic, patients are grouped into male, female, transgender or unknown. We use this value to determine if a series is appropriate for a patient.

#### Gender - Note that in this logic gender and sex are used synonymously for consistency in the logic. FOR THESE PURPOSES ONLY they refer to the same thing, and that is the genetic sex at birth. If you don't understand why there are be differences in sex and gender (and gender identity), please consider reading any of the following articles by the [AMA](https://journalofethics.ama-assn.org/article/sex-gender-and-why-differences-matter/2008-07), [Stanford](https://stanmed.stanford.edu/2017spring/how-sex-and-gender-which-are-not-the-same-thing-influence-our-health.html), or [Planned Parenthood](https://www.plannedparenthood.org/learn/gender-identity/sex-gender-identity)

- The other part of a relevant series if the type of series. Series can be 'Standard', 'Evaluation Only', or 'Risk'. If it's a 'Standard' or 'Evaluation Only' series, then it applies to everyone (again, assuming the appropriate gender). A 'Risk' series is only appropriate if the patient has certain conditions. Each 'Risk' series has a list of indications that come from the list of 'Observations' (note, these are NOT the same as FHIR Observations). They are in some cases conditions, but in other cases just circumstances (like being a healthcare worker) that imparts a higher risk for certain diseases, and therefore the series will apply.

## 6 Evaluate Vaccine Dose Administered

Table 6-1 Evaluate Process Steps
|Section|Activity|Goal|
|-|-|-|
|6.1|Evaluate Dose Administered Condition|Determine if this dose is expired or subpotent (some reason it shouldn't be evaluated)|
|6.2|Evaluate Conditional Skip|The goal of this step is to determine if the target dose can be skipped due to a patient’s age or immunization history|
|6.3|Evaluate For Inadvertent Vaccine|The goal of this step is to determine if the vaccine dose administered was an inadvertent administration due to the vaccine type that was administered.|
|6.4|Evaluate Age|Was it given at the appropriate age|
|6.5|Evaluate Preferable Interval|Was it given within the preferred interveral from the last dose|
|6.6|Evaluate Allowable Interval|Was it given within the allowed interval from the last dose|
|6.7|Evaluate Live Virus Conflict|Is there a conflict between this dose and any live virus vaccines|
|6.8|Evaluate For Preferable Vaccine|If there are preferred vaccines available for this dose, is it one of them|
|6.9|Evaluate For Allowable Vaccine|Is it an allowed vaccine for this dose|
|6.10|Satisfy Target Dose|Is the target dose satisfied|

### 6.1 Evaluate Dose Administered Condition

This one is pretty easy. Was the vaccine expired before it was given? Is the vaccine subpotent for some reason? If the answer is yes to either of these, the dose can't be evaluated. Of note, we actually do this slightly earlier when we're first sorting the vaccines. When we're first assigning the vaccine doses given to the individual antigens, we bucket them at that point as either subpar or available for evaluation. This just saves us the trouble of looking at them as we evaluate each series, and we only look at the valid ones.

Also, a brief note on how FHIR handles this. It's very similar. With the [Immunization resource] there is a field where it notes the ```expirationDate``` of the vaccine, which can be compared to the ```occurrence[x]``` which is the date the vaccine was given. There is also a boolean field, ```isSubpotent``` that indicates whether or not it is. There is also a list of CodeableConcepts in a field ```subpotentReason``` that can list why. The CDC manual lists examples such as sub-potent and recall, FHIR uses an [Immunization Subpotent Reason ValueSet](https://build.fhir.org/valueset-immunization-subpotent-reason.html) that contains partialdose, coldchainbreak, recall, adversestorage, and expired.
