


#Service Categories with highest PA approval rates
SELECT Service_category, SUM(Number_of_requests_per_code) AS total_requests, ROUND(AVG(Approval_rate),2) AS avg_approval_rate
FROM hp_pa_table
GROUP BY Service_category
ORDER BY  3 DESC
;




#Checking prescriptoin drugs approval rate over the included years and counts of each
SELECT Year_num, Service_category, ROUND(AVG(Approval_rate),2) AS avg_approval_rate, COUNT(*) AS count
FROM hp_pa_table
WHERE Service_category = "Prescription Drugs"
GROUP BY Year_num
;




# Average denied then approved claims by service category
SELECT Service_category, ROUND(AVG(Initially_denied_then_approved_approval_rate),2) AS avg_denied_then_approved
FROM hp_pa_table
GROUP BY Service_category
ORDER BY 2 DESC
;

# Average denied then approved claims by description of service
SELECT Description_of_service, ROUND(AVG(Initially_denied_then_approved_approval_rate),2) AS avg_denied_then_approved
FROM hp_pa_table
GROUP BY Description_of_service
ORDER BY 2 DESC
LIMIT 20
;

# Average denied then approved claims by description of service BOTTOM 20
SELECT Description_of_service, ROUND(AVG(Initially_denied_then_approved_approval_rate),2) AS avg_denied_then_approved
FROM hp_pa_table
GROUP BY Description_of_service
ORDER BY 2 ASC
LIMIT 20
;

#Average response times for standard, expedited, and extenuating circumstances in hours
SELECT ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response
FROM hp_pa_table
;


#Response time by carrier
SELECT Carrier, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response
FROM hp_pa_table
GROUP BY Carrier
ORDER BY 2 DESC, 3 DESC, 4 DESC
;

#Response time by year
SELECT Year_num, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response
FROM hp_pa_table
GROUP BY Year_num
ORDER BY 2 DESC, 3 DESC, 4 DESC
;

#Response time by Code
SELECT Code_num, Description_of_service, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response
FROM hp_pa_table
GROUP BY Code_num, Description_of_service
ORDER BY 3 DESC
LIMIT 20
;

#Medications with high denial rates
SELECT Drug_name, ROUND(AVG(Approval_rate),2) AS avg_approval_rate
FROM hp_pa_table
GROUP BY Drug_name
ORDER BY 2 ASC
LIMIT 20
;

#Service categories, count of requests by type, average response times by type, and overall approval rates
SELECT Service_category,
SUM(Number_of_requests_per_code) AS standard_num_of_requests, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response,
SUM(Expedited_Number_of_requests) AS num_of_ex_requests, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, 
SUM(Extenuating_circumstances_Number_of_requests) AS num_of_exten_requests, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response,
ROUND(AVG(Approval_rate),2) AS avg_approval_rate
FROM hp_pa_table
GROUP BY Service_category
ORDER BY 2 DESC
;



#Comparison of Standard and Extenuating
SELECT SUM(Standard_Number_of_requests) AS num_standard, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, SUM(Extenuating_circumstances_Number_of_requests) AS num_extenuating , ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response
FROM hp_pa_table
;


#Response times and approval rates per category, per carrier
SELECT Carrier, Service_category, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response, ROUND(AVG(Approval_rate),2) AS avg_approval_rate
FROM hp_pa_table
GROUP BY Carrier, Service_category
ORDER BY 1
;


#Top 20 drugs per request and approval rates
SELECT Drug_name, SUM(Number_of_requests_per_code) AS num_of_requests, ROUND(AVG(Approval_rate),2) AS avg_approval
FROM hp_pa_table
GROUP BY Drug_name
ORDER BY 2 DESC
LIMIT 21
;

#Top 20 drugs per request and approval rates with overall average
SELECT Drug_name, SUM(Number_of_requests_per_code) AS num_of_requests, ROUND(AVG(Approval_rate),2) AS avg_approval, 
(SELECT ROUND(AVG(Approval_rate),2)  FROM hp_pa_table WHERE Service_category = "Prescription Drugs") AS total_avg_approval
FROM hp_pa_table
GROUP BY Drug_name
ORDER BY 2 DESC
LIMIT 21
;


#overall average times in hours
SELECT ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_average, 
 ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_average,
  ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_average
 FROM hp_pa_table
 ;
 

 #Percent of Services that had 100 % approval rates
  SELECT 
  (SELECT COUNT(Description_of_service) FROM hp_pa_table WHERE Approval_rate = 1) / COUNT(*) * 100 AS 100_percent_approval_rates
 FROM hp_pa_table
  ;

#Identifying  DME services
SELECT Service_category, Description_of_service, COUNT(Description_of_service), ROUND(AVG(Approval_rate),2) AS avg_approval
FROM hp_pa_table
WHERE Service_category = "DME"
GROUP BY Description_of_service
;


SELECT Service_category, Description_of_service, COUNT(Description_of_service) AS service_count, ROUND(AVG(Approval_rate),2) AS avg_approval 
FROM hp_pa_table
WHERE Service_category = "DME"
GROUP BY Description_of_service
HAVING  ROUND(AVG(Approval_rate),2) < 0.68 
;


SELECT Service_category, Description_of_service,  ROUND(AVG(Approval_rate),2) AS avg_approval, ROUND(AVG(Standard_Avg_response_time_hrs),2) AS standard_avg_response, ROUND(AVG(Expedited_Avg_response_time_hrs),2) AS expedited_avg_response, ROUND(AVG(Extenuating_circumstances_Avg_response_time_hrs),2) AS extenuating_avg_response
FROM hp_pa_table
WHERE Service_category = "DME"
GROUP BY Description_of_service
HAVING  ROUND(AVG(Approval_rate),2) < 0.68 
;

#SERVICE CATEGORIES AND RESPONSE TIMES
SELECT Service_category, ROUND(AVG(Standard_Avg_response_time),2) AS standard_time, 
ROUND(AVG(Extenuating_circumstances_Avg_response_time),2) AS extenuating_time,
ROUND(AVG(Expedited_Avg_response_time),2) AS expeditied_time
FROM hp_pa_table
GROUP BY Service_category
ORDER BY 2 DESC
;
