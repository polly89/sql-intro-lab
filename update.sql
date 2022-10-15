1
UPDATE customer
SET fax = NULL

RESULTS
Query ran successfully. 0 rows to display.
////////////////////////////////////////////////////////////////////////////
2
UPDATE customer
SET company = 'Self'
WHERE company IS NULL

RESULTS
Query ran successfully. 0 rows to display.
////////////////////////////////////////////////////////////////////////////
3
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia'

RESULTS
Query ran successfully. 0 rows to display.
/////////////////////////////////////////////////////////////////////////////
4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl'

RESULTS
Query ran successfully. 0 rows to display.
/////////////////////////////////////////////////////////////////////////////
5
UPDATE track
SET composer = 'The Darness Around Us'
WHERE genre_id = 3 AND composer IS NULL

RESULTS
Query ran successfully. 0 rows to display.

