SELECT * FROM data
LIMIT 5;

--What are the unique values in the 'department' column?
SELECT  DISTINCT(department) FROM data;
--3-How many unique regions are covered in the dataset?
SELECT COUNT(DISTINCT(region))FROM data;
--#What are the different levels of education among the employees?
SELECT  DISTINCT(education) FROM data;
--#5-How many male and female employees are there in the dataset?
SELECT gender , COUNT(gender) from data 
GROUP BY gender ;
--#6-What are the different recruitment channels used by the company?
SELECT DISTINCT( recruitment_channel) FROM data;
--7-What is the maximum number of trainings attended by an employee?
SELECT no_of_trainings FROM data 
ORDER by no_of_trainings DESC
LIMIT 1 ;
-- find the employee has  the maximum number of trainings attended by an employee?
SELECT *FROM data 
ORDER by no_of_trainings DESC
LIMIT 1 ;
--find the employee has  the maximum number of trainings attended by an employee?
SELECT ROUND(avg(age)) FROM data ;
--#9-What is the maximum length of service among the employees?
SELECT MAX(length_of_service) FROM data ;
--What percentage of employees in the dataset were actually promoted?
SELECT 
    (COUNT(CASE WHEN is_promoted = 1 THEN 1 END) * 100.0) / COUNT(employee_id) AS percentage
FROM 
    data;
-- What is the average age of promoted employees compared to non-promoted ones?
SELECT ROUND( AVG(age),2) FROM data
WHERE is_promoted = 1 ;
SELECT ROUND( AVG(age),2) FROM data
WHERE is_promoted = 0;
--2-How does the average training score differ between promoted and non-promoted employees
SELECT AVG(avg_training_score) FROM data 
WHERE is_promoted = 1 ;
--13-What is the average length of service for promoted employees?
SELECT AVG (length_of_service) FROM data
WHERE is_promoted = 1 ; 

--14-What is the proportion of employees who have won awards among promoted employees?
SELECT COUNT("awards_won?")FROM data
where ("awards_won?") = 1
AND is_promoted = 1 ;
--19-How can you group the data by department and calculate the average age for each department?
SELECT department ,ROUND(AVG (age)) FROM data
GROUP by department ;
--20-What is the total number of trainings attended by employees in each region?
SELECT region , COUNT(no_of_trainings)
FROM data
GROUP by region ;

