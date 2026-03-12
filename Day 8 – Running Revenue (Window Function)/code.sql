SELECT
    transaction_date,
    SUM(fuel_amount_rs) AS daily_revenue,
    SUM(SUM(fuel_amount_rs)) OVER (ORDER BY transaction_date) AS cumulative_revenue
FROM fuel_transactions
GROUP BY transaction_date
ORDER BY transaction_date
