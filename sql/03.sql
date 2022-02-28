/*
 * List the total amount of money that customers from each country have payed.
 * Order the results from most to least money.
 */
  select country, sum(amount) total_payments  from customer join address on address.address_id = customer.address_id join city on city.city_id = address.city_id join country on country.country_id = city.country_id join payment on payment.customer_id = customer.customer_id  group by country order by sum(amount) desc, country;


