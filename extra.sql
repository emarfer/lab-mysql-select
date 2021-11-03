/*
Subqueries
How many copies of the film Hunchback Impossible exist in the inventory system?
List all films whose length is longer than the average of all the films.
Use subqueries to display all actors who appear in the film Alone Trip.
Sales have been lagging among young families, and you wish to target all family movies for a promotion.
	Identify all movies categorized as family films.
Get name and email from customers from Canada using subqueries.
	Do the same with joins. Note that to create a join,
	you will have to identify the correct tables with their primary keys and foreign keys,
    that will help you get the relevant information.
Which are films starred by the most prolific actor?
	Most prolific actor is defined as the actor that has acted in the most number of films.
    First you will have to find the most prolific actor and then use that actor_id to find the different films that he/she starred.
Films rented by most profitable customer.
	You can use the customer table and payment table to find the most profitable customer ie the customer that has made the largest sum of payments
Customers who spent more than the average payments.
*/

#How many copies of the film Hunchback Impossible exist in the inventory system?
use sakila;
select f.title as TITULO, count(i.inventory_id) as COPIES
FROM film f
JOIN inventory i ON i.film_id = f.film_id
WHERE f.title = "Hunchback Impossible"
GROUP BY f.title
;

