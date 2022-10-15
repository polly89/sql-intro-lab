1
CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
  	person_id INTEGER NOT NULL,
    product_name VARCHAR(40) NOT NULL,
    product_price INTEGER NOT NULL, 
    quantity INTEGER NOT NULL
);

RESULTS
Query ran successfully. 0 rows to display.
///////////////////////////////////////////////////////////////////////////////
2
INSERT INTO orders(person_id, product_name, product_price, quantity)
VALUES (12, 'Chicken Tikka Masala', 17.50, 1),
(13, 'Chicken Curry', 15.60, 1);

RESULTS
Query ran successfully. 0 rows to display.
/////////////////////////////////////////////////////////////////////////////
3
SELECT * 
FROM orders;

RESULTS
order_id	person_id	product_name	product_price	quantity
1	12	Chicken Tikka Masala	18	1
2	13	Chicken Curry	16	1
/////////////////////////////////////////////////////////////////////////////
4
SELECT COUNT(*) 
FROM orders;

RESULTS
count
2
/////////////////////////////////////////////////////////////////////////////
5
SELECT person_id, (product_price * quantity) AS total
FROM orders,

RESULTS
person_id	total
12	18
13	16
////////////////////////////////////////////////////////////////////////////
6
SELECT person_id, (product_price * quantity) AS total
FROM orders
WHERE person_id = 12;

RESULTS
person_id	total
12	18
/////////////////////////////////////////////////////////////////////////////