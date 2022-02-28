/*
 * Compute the country with the most customers in it. 
 */
select country  from customer join address on address.address_id = customer.address_id join city on city.city_id =address.city_id join country on country.country_id = city.country_id  group by country order by count(distinct customer.customer_id) desc limit 1;
