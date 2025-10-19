

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


### **Data Structure**

The dataset consists of 20 columns and 7151 rows

| Column | Type |
| :------- | -------: |
| Index_num | int |
| Carrier | string |
| Year_num | int |
| Service_category | string |
| Request |	string |
| Code_type | string |
| Code_num | string |
| Description_of_service | string |
| Number_of_requests_per_code | int |
| Approval_rate | float |
| Initially_denied_then_approved_approval_rate | float |
| Expedited_Avg_response_time_hrs | float |
| Standard_Avg_response_time_hrs | float |
| Extenuating_circumstances_Avg_response_time_hrs | float |
| Expedited_Number_of_requests | int |
| Standard_Number_of_requests | int |
| Extenuating_circumstances_Number_of_requests | int |
| Drug_name |	string |
| Drug_code | string |
| Drug_brand_names | string |


The SQL code that was generated for analysis can be found [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth.sql)

<br>
<br>

---


### Executive Summary

The overall average approval rate is 68%.  Monitoring processes that fall far below this average will be a key metric to observe

<img width="1067" height="690" alt="image" src="https://github.com/user-attachments/assets/7398e1f4-57ce-4944-bbbf-56ad051ffd8a" />

Since durable medical equipment (DME) and Prescription Drugs are far below the average approval rates, I focused on uncovering trends in these two areas.

<br>
<br>

- Year over year approval ratings have not deviated much from this average between 2020 and 2023
<img width="1955" height="535" alt="image" src="https://github.com/user-attachments/assets/8e7e7c23-f4bb-48b0-9a0f-976f0e02097d" />

<br>
<br>

DME saw an increase in approval rates year over year, but had a slight dip  in 2023. Prescription drugs were only recorded between 2022 and 2023, but showed no perceptible change between those years

<img width="1942" height="544" alt="image" src="https://github.com/user-attachments/assets/c61bfcb0-1741-4cf4-85cb-4ac15e1d884d" />

<br>
<br>

- The following depicts the average response times of approvals

| Standard average response time in hours | Expedited average response time in hours | Extenuating average response time in hours |
| --- | --- | --- |
| 78.89 | 8.4 | 21.59 |

<br>
<br>

With this data uncovered, my recommendation to the medical director would be to track the DME products and Prescription Drugs that fall below the average approval rate of 68% as well as track the response times for the approvals of those items.  By using this method, there can be better planning and decision making when selecting these services.  Either the healthcare professional can communicate expected delays to their team or the patient and plan accordingly, or there can be a better selection of medication that may have a better chance to get approved or approved much faster.

---

### Other Insights

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


<br>
<br>

43% of the carriers were slower than the average standard response time as well as the expedited response time while 29% were slower than the extenuating average time

| Standard average response time in hours | Expedited average response time in hours | Extenuating average response time in hours |
| --- | --- | --- |
| 78.89 | 8.4 | 21.59 |
<img width="1921" height="1171" alt="image" src="https://github.com/user-attachments/assets/489d7d3b-e69b-4600-a55d-7648cb4dca72" />

<br>
<br>


- Over time, the average response times have improved overall between 2020 and 2023
<img width="1463" height="969" alt="image" src="https://github.com/user-attachments/assets/60bb23f9-4e24-4b62-bd6b-ba33c59e41cb" />

<br>
<br>

- Finally, the top 20 medications by number of PA requests have quite a few that are below the average approval rating
  
| Drug_Name | Number of Requests | Average approval |
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

---

### **Recommendations and Deliverables**

<br>

To Identify the items that fall below the average approval rate, I created two different dashboards:

<br>

The first dashboard is to identify prescription medications that fall below the average approval rating of 68%.

<img width="2063" height="1151" alt="image" src="https://github.com/user-attachments/assets/1d9a5a2a-d849-4536-a5d5-4d82710bd795" />

The medications that fall to a set critical level of 30% are highlighted in red.  This dashboard allows the user to search for a medication by its NDC drug code or by the name of the medication to see if it is on the list.  This dashboard will also give the average response times in each category to help prepare for those delays should they come up.

<br>
<br>

The second dashboard is used for DME products that fall below the 68% average approval rate

<img width="2044" height="1151" alt="image" src="https://github.com/user-attachments/assets/61303973-704f-4f6a-910d-039577041c42" />

Again, this allows the user to search the list for individual items and view their approval rate and the response times

The Power BI dashboards can be downloaded and tried here





