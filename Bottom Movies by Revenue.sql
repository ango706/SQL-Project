-- Calculate the total revenue generated by each movie and list the bottom 5.
SELECT
    film.title AS movie_title,
    SUM(payment.amount) AS total_revenue
FROM
    film
    JOIN inventory ON film.film_id = inventory.film_id
    JOIN rental ON inventory.inventory_id = rental.inventory_id
    JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY
    film.title
ORDER BY
    total_revenue ASC
LIMIT 5;
