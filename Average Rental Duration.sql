-- Calculate the average rental duration in days for all videos.
SELECT
    AVG(EXTRACT(EPOCH FROM (return_date - rental_date)) / (60*60*24)) AS avg_rental_duration_days
FROM
    rental;
