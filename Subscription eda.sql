USE subscription;

SELECT *
FROM sub_lagging;

-- total customer count by churn
SELECT churn,
count(customer_id) AS total_customers
FROM sub_lagging
GROUP BY churn
ORDER BY churn;
-- from this analysis, 1869 people want to migrate to new network providers/
-- will stop purchasing internet from us

SELECT *
FROM sub_lagging;

-- total customer by gender
SELECT gender,
count(customer_id) AS total_customers
FROM sub_lagging
GROUP BY gender
ORDER BY total_customers;
-- the male customers surpasses the female customers with just 34

SELECT *
FROM sub_lagging;

-- senior subscribers count
SELECT senior_citizen,
COUNT(customer_id) AS senior_customers
FROM sub_lagging
GROUP BY senior_citizen
ORDER BY senior_customers;
-- there are 1142 senior customers

SELECT *
FROM sub_lagging;

-- customer with partner
SELECT partner,
COUNT(customer_id) AS total_customers
FROM sub_lagging
GROUP BY partner
ORDER BY total_customers;

SELECT *
FROM sub_lagging;

--  total customers by internet service and total charges desc
SELECT internet_service,
COUNT(customer_id) AS total_customers,
SUM(total_charges) AS charges_sum
FROM sub_lagging
GROUP BY internet_service
ORDER BY charges_sum DESC, total_customers DESC;
-- fiber optic has the highest users, and highest charges sum

SELECT *
FROM sub_lagging;

-- average customers by internet service and average charges
SELECT internet_service,
AVG(customer_id) AS avg_customers,
AVG(total_charges) AS charges_avg
FROM sub_lagging
GROUP BY internet_service
ORDER BY charges_avg DESC, avg_customers DESC;

SELECT *
FROM sub_lagging;

-- customers with online security
SELECT online_security,
COUNT(customer_id) AS customers
FROM sub_lagging
GROUP BY online_security
ORDER BY customers DESC;
-- customers with online security were found to be 2015

SELECT *
FROM sub_lagging;

-- customers with total protection and total charges
SELECT online_backup,
online_security,
device_protection,
tech_support,
SUM(total_charges) AS total_paid
FROM sub_lagging
GROUP BY device_protection, online_security, tech_support, online_backup
ORDER BY total_paid DESC;

SELECT *
FROM sub_lagging;

-- customers county by streaming tv
SELECT streaming_tv,
COUNT(customer_id) AS customer_count
FROM sub_lagging
GROUP BY streaming_tv
ORDER BY customer_count;

SELECT *
FROM sub_lagging;

-- customers by streaming movies and total charges
SELECT streaming_movies,
COUNT(customer_id) AS customer_count,
SUM(total_charges) as total_payment
FROM sub_lagging
GROUP BY streaming_movies
ORDER BY customer_count, total_payment;

SELECT *
FROM sub_lagging;

SELECT contract,
COUNT(customer_id) AS customer_count
FROM sub_lagging
GROUP BY contract
ORDER BY customer_count;
-- it shows that about 1/2 of the customers are on a month to month contract

SELECT *
FROM sub_lagging;

SELECT payment_method,
COUNT(customer_id) AS customer_count
FROM sub_lagging
GROUP BY payment_method
ORDER BY customer_count;

SELECT *
FROM sub_lagging;

SELECT payment_method,
AVG(monthly_charges) AS avg_monthly_charges
FROM sub_lagging
GROUP BY payment_method
ORDER BY avg_monthly_charges;

SELECT *
FROM sub_lagging;

-- Average monthly charges and total average charges by churn
SELECT churn,
AVG(monthly_charges) AS avg_monthly_charges,
AVG(total_charges) AS avg_total_charges
FROM sub_lagging
GROUP BY churn
ORDER BY avg_monthly_charges, avg_total_charges;