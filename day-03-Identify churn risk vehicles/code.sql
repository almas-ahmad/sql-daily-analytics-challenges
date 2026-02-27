SELECT DISTINCT vehicle_id
FROM fuel_transactions
WHERE vehicle_id NOT IN (
    SELECT vehicle_id
    FROM fuel_transactions
    WHERE transaction_date >= CURRENT_DATE - INTERVAL '15' DAY
)
