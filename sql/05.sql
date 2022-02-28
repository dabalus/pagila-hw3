/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query that lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 *
 * HINT:
 * This can be solved with a self join on the film_actor table.
 */
select Title  from film join film_actor on film.film_id = film_actor.film_id join actor on actor.actor_id = film_actor.actor_id  JOIN  (select actor.actor_id from film join film_actor on film.film_id = film_actor.film_id join actor on actor.actor_id = film_actor.actor_id where title = 'AMERICAN CIRCUS') T on T.actor_id= actor.actor_id  group by title having count(distinct actor.actor_id ) >=2;
