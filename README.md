

# **Analyzing Prior Authorization Trends and Performance in Health Plans**










Prior authorizations are critical processes in managed healthcare, designed to ensure medical necessity, cost control, and appropriate care delivery. However, it is often cited as a source of delay and administrative burden for providers and patients. Health plans must strike a balance between oversight and timely access to care, especially in cases requiring expedited responses or extenuating circumstances.

A medical director at a hospital wants to uncover inefficiencies across the entire prior authorization process and optimize medication selection by uncovering trends in the given PA data. This project aims to help the medical director to analyze prior authorization data across various carriers, service categories, and drug requests to identify patterns in approval rates, processing times, and factors influencing initially denied but eventually approved cases. 

<br>
<br>

---

## Key insights and recommendations are provided in the following areas: 

- Prior authorization approval and denial rates based on various criteria
- Response times for approvals
- Trends of approval delays

<br>
<br>

---

## **Project Objectives**

- Perform a descriptive and comparative analysis of PA approval rates and response times.
- Identify service categories and drugs that may benefit from streamlined or automated PA processes.
- Create performance dashboards for stakeholders to monitor PA efficiency and service-specific trends.

<br>
<br>

---


## **Data Structure and SQL EDA**

The dataset consists of 20 columns and 7151 rows

The dataset structure and datatypes can be found [here](https://github.com/jowo21/Analyzing-Prior-Authorization-Trends-and-Performance-in-Health-Plans/blob/main/about_dataset.md)


The SQL code that was generated for analysis can be found [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth.sql)

<br>
<br>

---


## Executive Summary

### Overview

- This analysis evaluated prior authorization (PA) approval rates and response times across service categories from 2020–2023 to identify opportunities to reduce denials, delays, and administrative burden. Across all categories, the **overall average approval rate was 68%**, which serves as a meaningful performance benchmark for identifying underperforming services.

### Approval Rate Analysis

- While approval rates remained relatively stable year over year, **Durable Medical Equipment (DME)** and **Prescription Drugs** consistently underperformed relative to the organizational average. DME showed gradual improvement over time, with a modest decline in 2023, while Prescription Drug, tracking beginning in 2022, demonstrated persistently lower approval rates with no meaningful year-over-year improvement.
- Further analysis uncovered that **Prescription Drugs have the lowest overall approval rate (59%)** yet the **highest “denied then approved” rate (16%)**, signaling that a significant portion of denials are ultimately reversible. This represents avoidable delays, administrative effort, and patient care disruption.
- A review of the **top 20 prescription medications by PA volume** highlighted several high-utilization drugs with **approval rates well below the 68% benchmark**, including weight management and stimulant medications. These drugs account for a disproportionate share of denials and follow-up activity, making them prime candidates for targeted intervention.

### Response Time Findings

- Response time analysis revealed that overall turnaround times have improved since 2020, indicating progress in operational efficiency. However, **43% of carriers exceeded average response times for both standard and expedited requests**, suggesting variability in payer performance remains a material contributor to delays. Notably, response times did not vary substantially by service category, indicating that **approval likelihood rather than processing speed, is the primary pain point for DME and Prescription Drugs**.

### Initial Recommendations

- To operationalize these insights, two interactive Power BI dashboards were developed to enable clinicians and administrators to quickly identify **high-risk Prescriptions and DME items**, assess expected approval likelihood, and anticipate response times. These tools support proactive clinical decision-making, improved patient communication, and more efficient authorization workflows.

<br>
<br>
<br>
<br>

## Insights Deep Dive

- The overall average approval rate is 68%.  Monitoring processes that fall far below this average will be a key metric to observe.
- Since durable medical equipment (DME) and Prescription Drugs are the farthest below the average approval rates, I focused on these two areas.

<img width="1067" height="690" alt="image" src="https://github.com/user-attachments/assets/4c0d3490-58fe-461b-8d4d-b2586b0fa9a8" />

<br>
<br>

Year over year approval ratings have not deviated much from this average between 2020 and 2023 
<img width="1941" height="523" alt="image" src="https://github.com/user-attachments/assets/34569b1c-683a-47b3-ac84-c6d4f4865d05" />

<br>
<br>

DME saw an increase in approval rates year over year, but had a slight dip  in 2023. Prescription drugs were only recorded between 2022 and 2023, but showed no perceptible change between those years

<img width="1951" height="543" alt="image" src="https://github.com/user-attachments/assets/232dcdcc-1991-42b6-a88c-b3f355554869" />

<br>
<br>

Although Prescription Drugs had the lowest overall approval rate of 59% it reflected the highest denied then approved average of 16%

| Service Category | Average denied then approved percentage |
| --- | --- |
| Prescription Drugs | 16% |
| Outpatient Med-Surg | 15% |
| Inpatient Med-Surg | 9% |
| DME | 8% |
| Outpatient MH-SUD | 4% |
| Inpatient MH-SUD | 3% |
| Diabetes Supplies and Equip | 1% |

This insight further supports my recommendation to focus on improving the approval rate of Prescription Drugs.  The items that are denied then approved also reflect a high percentage of possible delays that can be avoided.

<br>
<br>


- The following depicts the average response times of approvals
<img width="1940" height="334" alt="image" src="https://github.com/user-attachments/assets/fcc2d6db-99c3-46c8-a23c-c5114188e636" />

<br>

- 43% of the carriers were slower than the average standard response time as well as the expedited response time while 29% were slower than the extenuating average time.
- This variability should also be strongly considered for claim delay improvement if more optimal carriers can be considered for selection.
<img width="1921" height="1171" alt="image" src="https://github.com/user-attachments/assets/12c96df3-45df-49b2-af50-070a30c0b086" />

<br>
<br>

- Over time, the average response times have overall improved between 2020 and 2023.
- Further time analysis should be considered in the future, but no essential determining factors need to be considered with these findings.

<img width="1463" height="969" alt="image" src="https://github.com/user-attachments/assets/a7289b54-c5ed-458e-be15-ad954dc7118a" />

<br>
<br>

There wasn’t much variation between Service Categories and Response times.  Both DME and Prescription Drugs performed comparatively well against the other categories.  Prescription drugs expedited time was slightly higher than the average.  Outpatient Med-surge performed surprisingly well despite having an overwhelmingly large number of standard requests.

<img width="1959" height="943" alt="image" src="https://github.com/user-attachments/assets/53cb91f8-8d39-4ffe-9f34-449f2193882b" />

<br>
<br>

- Finally, I identified the top 20 medications by number of PA requests which uncovered that an alarming 70% of the top 20 are below the average approval rate of 68%.  This is definitely an area that needs targeted improvement.

| Drug_Name | Number of Requests | Average approval rate |
| --- | --- | --- |
| SEMAGLUTIDE | 13534 | 37% |
| TIRZEPATIDE | 3809 | 25% |
| LISDEXAMFETAMINE DIMESYLATE | 3572 | 6% |
| AMPHETAMINE/DEXTROAMPHETAMINE | 3054 | 7% |
| EMPAGLIFLOZIN | 2118 | 76% |
| ADALIMUMAB  ADALIMUMAB INJ KIT | 2035 | 79% |
| DUPILUMAB | 1631 | 47% |
| LIRAGLUTIDE | 1473 | 5% |
| HYDROCODONE-ACETAMINOPHEN | 1452 | 58% |
| METHYLPHENIDATE HCL | 1173 | 54% |
| RIVAROXABAN | 1157 | 92% |
| Rimegepant | 1076 | 56% |
| cyclosporine | 1055 | 77% |
| BUDESONIDE-FORMOTEROL | 1050 | 58% |
| OXYCODONE HCL | 1029 | 6% |
| SEMAGLUTIDE (WEIGHT MANAGEMENT) | 958 | 1% |
| CYCLOSPORINE (OPHTH) | 952 | 75% |
| Apixaban | 879 | 64% |
| DULAGLUTIDE | 697 | 74% |
| UBROGEPANT | 676 | 6% |

<br>
<br>
<br>
<br>

## Recommendations and Deliverables

To help the medical director and other healthcare professionals Identify the items that fall below the average approval rate, I created two different dashboards:

The first dashboard is to identify prescription medications that fall below the average approval rating of 68%.

<img width="2082" height="1151" alt="image" src="https://github.com/user-attachments/assets/31de17bf-5bc4-43ee-b02e-a5be80674b8e" />

The medications that fall to a set critical level of 30% are highlighted in red.  This dashboard allows the user to search for a medication by its NDC drug code or by the name of the medication to see if it is on the list.  
This dashboard will also give the average response times in each category to help prepare for those delays should they come up.

<br>

Selecting an individual item will allow the user to see the respective approval rate and the average response times:
<img width="2065" height="1157" alt="image" src="https://github.com/user-attachments/assets/e0659933-e854-4a55-80ee-2db268adab6b" />

<br>
<br>

The second dashboard is used to identify DME products that fall below the 68% average approval rate and the respective response times.

<img width="2086" height="1140" alt="image" src="https://github.com/user-attachments/assets/537052a8-86be-4310-bad0-97763036e31c" />

<br>

Again, this allows the user to search the list for individual items and view their approval rate and the response times.  Selecting an item will give that specific approval rate and response times:

<img width="2074" height="1154" alt="image" src="https://github.com/user-attachments/assets/72564738-249f-468b-96f0-9260cd9f6ce3" />

<br>
<br>


The Power BI dashboards can be downloaded and tried [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth%20JUST%20DASHBOARDS.pbix)

## Strategic Recommendations

### 1. Improve First-Pass Approval Rates for Prescription Drugs

**Objective:**

Reduce avoidable denials and rework by increasing first-pass approval rates for high-volume, low-approval prescription medications.

**Action:**

- Use the prescription dashboard to identify medications with approval rates below 68%, prioritizing those below 30%.
- Develop standardized PA checklists and clinical documentation templates for high-risk drugs
- Educate prescribing providers and care teams on payer-specific criteria and common denial reasons for these medications.
- Encourage use of clinically appropriate alternatives with higher historical approval rates when available.

**Expected Outcomes:**

- Fewer initial denials and appeals.
- Reduced administrative workload for providers and authorization teams.
- Faster time to therapy initiation and improved patient satisfaction.

### 2. Proactively Manage DME Authorization Risk

**Objective:**

Improve approval consistency and planning for DME requests that fall below the organizational approval benchmark.

**Action:**

- Use the DME dashboard to identify equipment types with approval rates below 68%.
- Integrate approval likelihood and average response time into care planning and discharge workflows.
- Where appropriate, evaluate alternative equipment options or suppliers with better historical approval outcomes.

**Expected Outcomes:**

- Fewer unexpected authorization delays.
- Improved discharge planning and continuity of care.
- Better alignment between clinical needs and payer expectations.


### 3. Reduce Delays Caused by “Denied Then Approved” Requests

**Objective:**

Minimize delays in patient care by decreasing the volume of prescriptions that require appeals or resubmissions.

**Action:**

- Focus process improvement efforts on Prescription Drugs, which exhibit the highest denied-then-approved rate (16%).
- Analyze common approval gaps (e.g., missing step therapy documentation, dosage thresholds, diagnosis coding).
- Incorporate real-time prompts or dashboard alerts to flag medications with historically high appeal success rates before submission.

**Expected Outcomes:**

- Shorter authorization cycles.
- Reduced patient treatment interruptions.
- More predictable care timelines for high-impact medications.





### 4. Set Expectations Using Data-Driven Response Time Benchmarks

**Objective:**

Improve communication and planning by aligning expectations around authorization turnaround times.

**Action:**

- Leverage response time metrics by service category and request type (standard, expedited, extenuating).
- Use dashboard insights to inform patients and care teams when delays are likely.
- Identify carriers that consistently exceed average response times and escalate payer engagement or contracting discussions.

**Expected Outcomes:**

- Increased transparency for patients and staff.
- Reduced frustration related to perceived delays.
- More efficient scheduling and care coordination.







