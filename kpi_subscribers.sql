USE subscription;

SELECT *
FROM sub_lagging;

-- total number of subscribers
SELECT COUNT(customer_id) AS subscribers_total
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- internet service count
SELECT COUNT(DISTINCT internet_service) AS internet_services
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- contract count
SELECT COUNT(DISTINCT contract) AS contracts
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- payment methods count
SELECT COUNT(DISTINCT payment_method) AS payment_methods
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- total monthly charges avg
SELECT AVG(monthly_charges) AS avg_monthly_charges
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- total charges average
SELECT AVG(total_charges) AS avg_charges
FROM sub_lagging;

SELECT *
FROM sub_lagging;

-- churn subscribers
SELECT COUNT(customer_id) AS churn_subscribers
FROM sub_lagging
WHERE churn = 'Yes';

SELECT *
FROM sub_lagging;

-- active subscribers
SELECT COUNT(customer_id) AS active_subscribers
FROM sub_lagging
WHERE churn = 'No';