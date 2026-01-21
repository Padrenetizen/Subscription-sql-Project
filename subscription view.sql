CREATE OR REPLACE VIEW subscription_cleaned AS
SELECT
customer_id,
gender,
senior_citizen,
partner,
dependents,
tenure,
phone_service,
multiple_lines,
internet_service,
online_security,
online_backup,
device_protection,
tech_support,
streaming_tv,
streaming_movies,
contract,
paperless_billing,
payment_method,
monthly_charges,
total_charges,
churn
FROM sub_lagging
WHERE monthly_charges IS NOT NULL AND total_charges IS NOT NULL;