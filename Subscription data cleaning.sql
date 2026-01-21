USE subscription;
CREATE TABLE sub_lagging LIKE telco_customer_churn;

INSERT INTO sub_lagging
SELECT *
FROM telco_customer_churn;

SELECT *
FROM sub_lagging;

SELECT *,
ROW_NUMBER() OVER(PARTITION BY customer_id, phone_service, internet_service, 
contract, payment_method, monthly_charges, total_charges, churn ORDER BY internet_service) AS row_num
FROM sub_lagging;

-- checking for duplicates using cte
WITH duplicate_cte AS 
(
SELECT *,
ROW_NUMBER() OVER(PARTITION BY customer_id, phone_service, internet_service, 
contract, payment_method, monthly_charges, total_charges, churn ORDER BY internet_service) AS row_num
FROM sub_lagging
)
SELECT *
FROM duplicate_cte
WHERE row_num > 1;
-- no duplicates were found

SELECT *
FROM sub_lagging;

SELECT DISTINCT senior_citizen
FROM sub_lagging;

SELECT churn
FROM sub_lagging
WHERE churn = '';

SELECT churn
FROM sub_lagging
WHERE churn IS NULL;
-- blank & NULL rows were not found

SELECT *
FROM sub_lagging;

-- changing monthly and total charges columns from 1 dp to 2 dp
ALTER TABLE sub_lagging
MODIFY monthly_charges DECIMAL(10, 2);

ALTER TABLE sub_lagging
MODIFY total_charges DECIMAL(10, 2);

SELECT *
FROM sub_lagging;

SELECT DISTINCT device_protection
FROM sub_lagging;