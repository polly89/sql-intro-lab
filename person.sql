1
CREATE TABLE persons(
    id SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    age INTEGER, 
    height INTEGER, 
    city VARCHAR (40) NOT NULL,
    favorite_color VARCHAR (20) NOT NULL
);
///////////////////////////////////////////////////////////////////////////////
2
INSERT INTO persons(name, age, height, city, favorite_color)
Values('Polly', 32, 179, 'St. Joseph', 'pink'),
('Dorkus', 43, 198, 'Cinci', 'black'),
('Lee', 9, 149, 'Dayton', 'red'),
('Marie', 7, 145, 'Turri', 'purple'),
('Karly', 23, 160, 'Berrien', 'fusia');

///////////////////////////////////////////////////////////////////////////////
3
SELECT *
FROM persons
ORDER BY height DESC;

RESULTS 
id	name	age	height	city	favorite_color
2	Dorkus	43	198	Cinci	black
1	Polly	32	179	St. Joseph	pink
5	Karly	23	160	Berrien	fusia
3	Lee	9	149	Dayton	red
4	Marie	7	145	Turri	purple
//////////////////////////////////////////////////////////////////////////////
4
SELECT *
FROM persons
ORDER BY height ASC;

RESULTS
id	name	age	height	city	favorite_color
4	Marie	7	145	Turri	purple
3	Lee	9	149	Dayton	red
5	Karly	23	160	Berrien	fusia
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
///////////////////////////////////////////////////////////////////////////////
5
SELECT *
FROM persons
ORDER BY age DESC;

RESULTS
id	name	age	height	city	favorite_color
2	Dorkus	43	198	Cinci	black
1	Polly	32	179	St. Joseph	pink
5	Karly	23	160	Berrien	fusia
3	Lee	9	149	Dayton	red
4	Marie	7	145	Turri	purple
///////////////////////////////////////////////////////////////////////////////
6
SELECT *
FROM persons
WHERE age > 20;

id	name	age	height	city	favorite_color
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
5	Karly	23	160	Berrien	fusia
///////////////////////////////////////////////////////////////////////////////
7
SELECT *
FROM persons
WHERE age = 18;

RESULTS
Query ran successfully. 0 rows to display.
///////////////////////////////////////////////////////////////////////////////
8
SELECT *
FROM persons
WHERE age NOT BETWEEN 20 AND 30;

RESULTS
id	name	age	height	city	favorite_color
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
3	Lee	9	149	Dayton	red
4	Marie	7	145	Turri	purple
//////////////////////////////////////////////////////////////////////////////
9
SELECT *
FROM persons
WHERE age <> 27;

RESULTS
id	name	age	height	city	favorite_color
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
3	Lee	9	149	Dayton	red
4	Marie	7	145	Turri	purple
5	Karly	23	160	Berrien	fusia
///////////////////////////////////////////////////////////////////////////////
10
SELECT *
FROM persons
WHERE favorite_color <> 'red';

RESULTS
id	name	age	height	city	favorite_color
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
4	Marie	7	145	Turri	purple
5	Karly	23	160	Berrien	fusia
/////////////////////////////////////////////////////////////////////////////////
11
SELECT *
FROM persons
WHERE favorite_color NOT IN('red', 'blue')

RESULTS

id	name	age	height	city	favorite_color
1	Polly	32	179	St. Joseph	pink
2	Dorkus	43	198	Cinci	black
4	Marie	7	145	Turri	purple
5	Karly	23	160	Berrien	fusia
////////////////////////////////////////////////////////////////////////////////
12
SELECT *
FROM persons
WHERE favorite_color IN('orange', 'green')

RESULTS
Query ran successfully. 0 rows to display.
///////////////////////////////////////////////////////////////////////////////
13
SELECT *
FROM persons
WHERE favorite_color IN('orange', 'green', 'blue');

RESULTS
Query ran successfully. 0 rows to display.
//////////////////////////////////////////////////////////////////////////////
14
SELECT *
FROM persons
WHERE favorite_color IN('yellow', 'purple');

RESULTS
id	name	age	height	city	favorite_color
4	Marie	7	145	Turri	purple