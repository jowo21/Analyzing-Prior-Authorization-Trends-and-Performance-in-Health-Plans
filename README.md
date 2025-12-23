

### **Analyzing Prior Authorization Trends and Performance in Health Plans**










Prior authorizations are critical processes in managed healthcare, designed to ensure medical necessity, cost control, and appropriate care delivery. However, it is often cited as a source of delay and administrative burden for providers and patients. Health plans must strike a balance between oversight and timely access to care, especially in cases requiring expedited responses or extenuating circumstances.

A medical director at a hospital wants to uncover inefficiencies across the entire prior authorization process and optimize medication selection by uncovering trends in the given PA data. This project aims to help the medical director to analyze prior authorization data across various carriers, service categories, and drug requests to identify patterns in approval rates, processing times, and factors influencing initially denied but eventually approved cases. 

<br>
<br>

---

### Key insights and recommendations are provided in the following areas: 

- Prior authorization approval and denial rates based on various criteria
- Response times for approvals
- Trends of approval delays

<br>
<br>

---

### **Project Objectives**

- Perform a descriptive and comparative analysis of PA approval rates and response times.
- Identify service categories and drugs that may benefit from streamlined or automated PA processes.
- Create performance dashboards for stakeholders to monitor PA efficiency and service-specific trends.

<br>
<br>

---


### **Data Structure and SQL EDA**

The dataset consists of 20 columns and 7151 rows

The dataset structure and datatypes can be found [here](https://github.com/jowo21/Analyzing-Prior-Authorization-Trends-and-Performance-in-Health-Plans/blob/main/about_dataset.md)


The SQL code that was generated for analysis can be found [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth.sql)

<br>
<br>

---


### Executive Summary

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


The Power BI dashboards can be downloaded and tried [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth%20JUST%20DASHBOARDS.pbix)







