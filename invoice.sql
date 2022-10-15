1
SELECT COUNT(*) 
FROM invoice 
WHERE billing_country IN ('USA')

RESULTS
count
91
//////////////////////////////////////////////////////////////////////////////
2
SELECT MAX(total) 
FROM invoice 

RESULTS
max
26
////////////////////////////////////////////////////////////////////////////
3
SELECT MIN(total) 
FROM invoice 

RESULTS
min
1
//////////////////////////////////////////////////////////////////////////
4
SELECT *
FROM invoice
WHERE total > 5;

RESULTS
ROW count:179. I copied first 10 rows to not let the doc get too long.
invoice_id	customer_id	invoice_date	billing_address	billing_city	billing_state	billing_country	billing_postal_code	total
3	8	2009-01-03T00:00:00.000Z	Grétrystraat 63	Brussels		Belgium	1000	6
4	14	2009-01-06T00:00:00.000Z	8210 111 ST NW	Edmonton	AB	Canada	T6G 2C7	9
5	23	2009-01-11T00:00:00.000Z	69 Salem Street	Boston	MA	USA	2113	14
10	46	2009-02-03T00:00:00.000Z	3 Chatham Street	Dublin	Dublin	Ireland		6
11	52	2009-02-06T00:00:00.000Z	202 Hoxton Street	London		United Kingdom	N1 5LH	9
12	2	2009-02-11T00:00:00.000Z	Theodor-Heuss-Straße 34	Stuttgart		Germany	70174	14
17	25	2009-03-06T00:00:00.000Z	319 N. Frances Street	Madison	WI	USA	53703	6
18	31	2009-03-09T00:00:00.000Z	194A Chain Lake Drive	Halifax	NS	Canada	B3S 1C5	9
19	40	2009-03-14T00:00:00.000Z	8, Rue Hanovre	Paris		France	75002	14
24	4	2009-04-06T00:00:00.000Z	Ullevålsveien 14	Oslo		Norway	0171	6
25	10	2009-04-09T00:00:00.000Z	Rua Dr. Falcão Filho, 155	São Paulo	SP	Brazil	01007-010	9
26	19	2009-04-14T00:00:00.000Z	1 Infinite Loop	Cupertino	CA	USA	95014	
////////////////////////////////////////////////////////////////////////////
5
SELECT COUNT(*)
FROM invoice
WHERE total < 5;

RESULTS
count
233
////////////////////////////////////////////////////////////////////////////////
6
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');

RESULTS
count
35
//////////////////////////////////////////////////////////////////////////////////
7
SELECT AVG(total)
FROM invoice

RESULTS

avg
5.7063106796116505
/////////////////////////////////////////////////////////////////////////////
8
SELECT SUM(total)
FROM invoice

RESULTS
sum
2351
//////////////////////////////////////////////////////////////////////////////
9
UPDATE invoice
SET total = 24
WHERE invoice_id = 5

RESULTS
Query ran successfully. 0 rows to display.
//////////////////////////////////////////////////////////////////////////////
10
DELETE 
FROM invoice
WHERE invoice_id = 1

Query failed because of: error: update or delete on table "invoice" violates foreign key constraint "invoice_line_invoice_id_fkey" on table "invoice_line"