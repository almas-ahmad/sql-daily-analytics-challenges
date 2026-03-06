SELECT
    vehicle_id,
    AVG(fuel_amount_rs) AS avg_transaction_value
FROM fuel_transactions
GROUP BY vehicle_id
