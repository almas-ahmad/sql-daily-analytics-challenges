SELECT
    fleet_owner_id,
    DATE_TRUNC('month', transaction_date) AS month,
    SUM(fuel_amount_rs) AS monthly_spend
FROM fuel_transactions
GROUP BY fleet_owner_id, month
ORDER BY fleet_owner_id, month
