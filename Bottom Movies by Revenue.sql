SELECT
    movie_title,
    SUM(rental_rate) AS total_revenue
FROM
    film
    JOIN inventory ON film.film_id = inventory.film_id
    JOIN rental ON inventory.inventory_id = rental.inventory_id
GROUP BY
    movie_title
ORDER BY
    total_revenue ASC
LIMIT 5;
