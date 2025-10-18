

### **Analyzing Prior Authorization Trends and Performance in Health Plans**










Prior authorizations are critical processes in managed healthcare, designed to ensure medical necessity, cost control, and appropriate care delivery. However, it is often cited as a source of delay and administrative burden for providers and patients. Health plans must strike a balance between oversight and timely access to care, especially in cases requiring expedited responses or extenuating circumstances.

A pharmacy manager at a hospital wants to optimize medication selection by uncovering trends in the given PA data. This project aims to help the pharmacy manager to analyze prior authorization data across various carriers, service categories, and drug requests to identify patterns in approval rates, processing times, and factors influencing initially denied but eventually approved cases. 

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

- The overall average approval rate is 68%
- Year over year approval ratings have not deviated much from this average between 2020 and 2023 

| Year | Average Approval Rate |
| --- | --- |
| 2020 | 67% |
| 2021 | 70% |
| 2022 | 69% |
| 2023 | 68% |

<br>

- Outpatient MH-SUD had the highest approval rate among the service categories of 82%

<br>

- Prescription Drugs had the highest denied then approved average of 16%

<br>
  
- 46% of the Services had 100% approval rates

<br>

- The following depicts the average response times of approvals

| Standard average response time in hours | Expedited average response time in hours | Extenuating average response time in hours |
| --- | --- | --- |
| 78.89 | 8.4 | 21.59 |

<br>
<br>

---

### Other Insights

- The overall average of approval rate is 68%  By Service Category most are within range of that average

| Service_Category | Total_requests | Avg_approval_rate |
| --- | --- | --- |
| Outpatient Med-Surg | 1409804 | 65% |
| Outpatient MH-SUD | 199548 | 82% |
| DME | 155086 | 62% |
| Inpatient Med-Surg | 115975 | 73% |
| Prescription Drugs | 54909 | 59% |
| Diabetes Supplies and Equip | 36967 | 66% |
| Inpatient MH-SUD | 24232 | 66% |

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

### **Recommendations**

The following is a way to monitor medications to see if they fall below a specified approval rate.  In this example, the medications that are at or below the average of 59% show up on the list while those that fall at or below 30% are flagged.  This will allow providers and pharmacy to track which medications that may not be recommended for the patient and a consideration for alternate therapy.

<img width="1217" height="1183" alt="image" src="https://github.com/user-attachments/assets/088ab229-7dce-4c47-a0fe-6ec72e89dab2" />

<br>
<br>

For a full monitoring solution, the following dashboard will allow staff to track the overall approval rate for medications, the medications that fall at and below the average approval rate, as well as the response times per type of response and per carrier.

<img width="2149" height="1200" alt="image" src="https://github.com/user-attachments/assets/f73353d0-0a17-4216-8173-92684c193f0c" />

<br>

This dashboard will also allow the user to track all metrics per medication or per carrier just by clicking on the desired value

<img width="2156" height="1196" alt="image" src="https://github.com/user-attachments/assets/05e84a7d-199a-4b48-8a60-0b895f398569" />



The full Power BI Dashboard can be found [here](https://github.com/jowo21/Health_Plan_Prior_Authorizations_Analysis/blob/main/prior%20auth%20worksheets.pbix)


