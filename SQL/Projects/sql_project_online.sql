------Online project -------

------ 1.  To get a list of all the managers  in the store with their address details ----------

select first_name as manager_firstname ,last_name as manager_last_name ,  address , district , city ,country 
from public.store
inner join public.staff
on public.store.manager_staff_id = public.staff.store_id
inner join public.address
on public.staff.address_id = public.address.address_id
inner join public.city
on public.city.city_id = public.address.city_id
inner join public.country
on public.country.country_id = public.city.country_id ; 


------- 2. 	Inventory details ------------------------------

select store_id , inventory_id , title , rating , rental_rate , replacement_cost 
from public.film
inner join public.inventory
on public.inventory.film_id = public.film.film_id;



--------- 3. Summary overview -------------

select store_id ,rating, count(inventory_id) as inventory_items
from public.film
inner join public.inventory
on public.inventory.film_id = public.film.film_id
group by  rating , store_id  
order by rating asc ;

--------- 4. diversified inventory------

select store_id , public.category.name as category , count(public.film.film_id) as films , avg(replacement_cost) as av_replacement_cost, sum(replacement_cost) as total_replacement_cost
from public.film
inner join public.film_category
on public.film.film_id =public.film_category.film_id
inner join public.inventory
on public.inventory.film_id  =public.film_category.film_id
inner join public.category
on public.category.category_id = public.film_category.category_id
group by public.category.category_id, store_id ;


-------5. List of customers -----------

select first_name , last_name , store_id , active , address , city , country 
from public.customer
inner join public.address
on public.customer.address_id = public.address.address_id
inner join public.city
on public.address.city_id= public.city.city_id
inner join public.country
on public.city.country_id=public.country.country_id ;

------6. Valued customers list --------------

select first_name , last_name , count(public.rental.rental_id) as total_rentals,  sum(amount) as total_payment_amount
from public.customer
inner join public.payment
on public.customer.customer_id = public.payment.customer_id
inner join public.rental
on public.rental.rental_id=public.payment.rental_id
group by public.customer.customer_id
order by sum(amount) desc ,  count(public.rental.rental_id) desc ;

select count(rental_id) from public.rental
select count(rental_id) from public.payment