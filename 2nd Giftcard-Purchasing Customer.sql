Problem statement:
====================

Show the first and last name of the customer who bought the second most-recent gift card, along with the date when the payment took place. 
Assume that a unique rank is assigned for each gift card purchase.

customer table(id, first_name, last_name, join_date, and country)

giftcard table (id, amount_worth, customer_id (references the customer table), payment_date, and payment_amount)


Concept to be used in this Question:
=====================================
1)JOINS
2)CTE
3)Window functions
4)Subquery approach 


SOLUTION1)
=================
It is based on Subquery approach :
         SELECT first_name,last_name,payment_date 
         FROM
         (SELECT first_name,last_name,payment_date,
         row_number() over(Order by payment_date DESC) uni_rnk
         FROM customer c JOIN giftcard g 
         ON c.id == g.customer_id) x
         WHERE x.uni_rnk == 2;

SOLUTION2)
=============
It is based on CTE approach :

         WITH ranking as (
         SELECT first_name,
                last_name,
                payment_date,
                row_number() over(order by payment_date DESC) rank
         FROM customer c JOIN giftcard g 
         ON c.id == g.customer_id)

         SELECT first_name,last_name,payment_date 
         FROM ranking 
         WHERE rank = 2








