1
SELECT last_name, first_name, * FROM employee
WHERE city = 'Calgary'

RESULTS
last_name	first_name	employee_id	last_name	first_name	title	reports_to	birth_date	hire_date	address	city	state	country	postal_code	phone	fax	email
Edwards	Nancy	2	Edwards	Nancy	Sales Manager	1	1958-12-08T00:00:00.000Z	2002-05-01T00:00:00.000Z	825 8 Ave SW	Calgary	AB	Canada	T2P 2T3	+1 (403) 262-3443	+1 (403) 262-3322	nancy@chinookcorp.com
Peacock	Jane	3	Peacock	Jane	Sales Support Agent	2	1973-08-29T00:00:00.000Z	2002-04-01T00:00:00.000Z	1111 6 Ave SW	Calgary	AB	Canada	T2P 5M5	+1 (403) 262-3443	+1 (403) 262-6712	jane@chinookcorp.com
Park	Margaret	4	Park	Margaret	Sales Support Agent	2	1947-09-19T00:00:00.000Z	2003-05-03T00:00:00.000Z	683 10 Street SW	Calgary	AB	Canada	T2P 5G3	+1 (403) 263-4423	+1 (403) 263-4289	margaret@chinookcorp.com
Johnson	Steve	5	Johnson	Steve	Sales Support Agent	2	1965-03-03T00:00:00.000Z	2003-10-17T00:00:00.000Z	7727B 41 Ave	Calgary	AB	Canada	T3B 1Y7	1 (780) 836-9987	1 (780) 836-9543	steve@chinookcorp.com
Mitchell	Michael	6	Mitchell	Michael	IT Manager	1	1973-07-01T00:00:00.000Z	2003-10-17T00:00:00.000Z	5827 Bowness Road NW	Calgary	AB	Canada	T3B 0C5	+1 (403) 246-9887	+1 (403) 246-9899	michael@chinookcorp.com
///////////////////////////////////////////////////////////////////////////
2
SELECT MAX(birth_date) FROM employee

RESULTS
max
1973-08-29T00:00:00.000Z
////////////////////////////////////////////////////////////////////////////
3
SELECT MIN(birth_date) FROM employee

RESULTS
min
1947-09-19T00:00:00.000Z
//////////////////////////////////////////////////////////////////////////
4
--PART 1 --
SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards'

RESULTS
employee_id
2
--PART 2 --
SELECT first_name, last_name, * FROM employee
WHERE reports_to = 2

RESULTS
first_name	last_name	employee_id	last_name	first_name	title	reports_to	birth_date	hire_date	address	city	state	country	postal_code	phone	fax	email
Jane	Peacock	3	Peacock	Jane	Sales Support Agent	2	1973-08-29T00:00:00.000Z	2002-04-01T00:00:00.000Z	1111 6 Ave SW	Calgary	AB	Canada	T2P 5M5	+1 (403) 262-3443	+1 (403) 262-6712	jane@chinookcorp.com
Margaret	Park	4	Park	Margaret	Sales Support Agent	2	1947-09-19T00:00:00.000Z	2003-05-03T00:00:00.000Z	683 10 Street SW	Calgary	AB	Canada	T2P 5G3	+1 (403) 263-4423	+1 (403) 263-4289	margaret@chinookcorp.com
Steve	Johnson	5	Johnson	Steve	Sales Support Agent	2	1965-03-03T00:00:00.000Z	2003-10-17T00:00:00.000Z	7727B 41 Ave	Calgary	AB	Canada	T3B 1Y7	1 (780) 836-9987	1 (780) 836-9543	steve@chinookcorp.com
///////////////////////////////////////////////////////////////////////////
5
SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge'

RESULTS
count
2