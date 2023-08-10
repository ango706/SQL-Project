SELECT
    c.country,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_sales
FROM
    customer AS c
    JOIN address AS a ON c.address_id = a.address_id
    JOIN rental AS r ON c.customer_id = r.customer_id
    JOIN payment AS p ON r.rental_id = p.rental_id
GROUP BY
    c.country
ORDER BY
    total_sales DESC;
