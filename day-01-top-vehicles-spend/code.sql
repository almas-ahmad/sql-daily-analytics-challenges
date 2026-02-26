SELECT 
    vehicle_id,
    SUM(fuel_amount_rs) AS total_spend
FROM fuel_transactions
WHERE transaction_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY vehicle_id
ORDER BY total_spend DESC
LIMIT 5
