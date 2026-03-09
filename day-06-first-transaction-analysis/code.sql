SELECT
    fleet_owner_id,
    MIN(transaction_date) AS first_transaction_date
FROM fuel_transactions
GROUP BY fleet_owner_id
