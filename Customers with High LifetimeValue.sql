-- Identify customers with high lifetime value (total spending over 1000) and list their names and total spending.
SELECT
    customer.first_name,
    customer.last_name,
    SUM(payment.amount) AS total_spending
FROM
    customer
    JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY
    customer.customer_id
HAVING
    SUM(payment.amount) > 1000
ORDER BY
    total_spending DESC;
