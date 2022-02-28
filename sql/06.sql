/*
 * This question and the next one are inspired by the Bacon Number:
 * https://en.wikipedia.org/wiki/Six_Degrees_of_Kevin_Bacon#Bacon_numbers
 *
 * List all actors with Bacall Number 1.
 * That is, list all actors that have appeared in a film with 'RUSSELL BACALL'.
 * Do not list 'RUSSELL BACALL', since he has a Bacall Number of 0.
 */
select distinct concat(first_name,' ', last_name) "Actor Name"  from actor join film_actor on actor.actor_id = film_actor.actor_id join film on film.film_id = film_actor.film_id where title IN (select title  from film join film_actor on film.film_id = film_actor.film_id join actor on actor.actor_id = film_actor.actor_id  where concat(first_name,' ',last_name)= 'RUSSELL BACALL') and concat(first_name, ' ',last_name) != 'RUSSELL BACALL'  order by concat(first_name,' ',last_name);
