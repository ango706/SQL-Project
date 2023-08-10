SELECT
    c.first_name,
    c.last_name,
    SUM(p.amount) AS total_spent
FROM
    customer AS c
    JOIN payment AS p ON c.customer_id = p.customer_id
GROUP BY
    c.customer_id
HAVING
    total_spent > 1000
ORDER BY
    total_spent DESC;
