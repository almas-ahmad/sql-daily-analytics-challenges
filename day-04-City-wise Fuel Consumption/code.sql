SELECT
    city,
    SUM(fuel_amount_liters) AS total_liters
FROM fuel_transactions
GROUP BY city
ORDER BY total_liters DESC
