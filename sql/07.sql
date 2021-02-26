/*
 * List last names of actors and the number of actors who have that last name,
 * but only for names that are shared by at least two actors
 */
SELECT
    last_name,
    count(actor_id) AS last_name_count
FROM
    actor
GROUP BY
    last_name
HAVING
    count(actor_id) > 1 
ORDER BY
    last_name_count DESC;
