/*
 * List the first and last names of all actors who:
 * 1. have appeared in at least one movie in the "Children" category,
 * 2. but that have never appeared in any movie in the "Horror" category.
 */
select distinct first_name, last_name  from actor join film_actor on film_actor.actor_id = actor.actor_id join film on film.film_id = film_actor.film_id join film_category on film_category.film_id = film.film_id join category on category.category_id = film_category.category_id where category.name = 'Children' and actor.actor_id NOT IN (select actor.actor_id from actor join film_actor on actor.actor_id = film_actor.actor_id join film on film.film_id = film_actor.film_id join film_category on film_category.film_id = film.film_id join category on category.category_id = film_category.category_id where category.name = 'Horror') order by last_name ;
