Problem statement:
===================

For each single rental, show the id, rental_date, payment_amount and the running total of payment_amounts 
of all rentals from the oldest one (in terms of rental_date) to the current row.

single_rental table(id, rental_date, rental_period, platform, 
customer_id (references the customer table), movie _id (references the movie table), payment_date, and payment_amount)

SOLUTION:
==========
SELECT id,rental_date,payment_amount,
        SUM(payment_amount) over(ORDER BY rental_date
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) 
        FROM single_rental;

