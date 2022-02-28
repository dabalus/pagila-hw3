/*
 * Compute the number of customers who live outside of the US.
 */
select count(distinct customer.customer_id)  from customer join address on address.address_id = customer.address_id join city on city.city_id = address.city_id join country on country.country_id = city.country_id  where country != 'United States';
