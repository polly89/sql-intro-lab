-- INSERT INTO animals ( name, type, age ) 
-- VALUES ('Leo', 'lion', 12),
-- ('Jerry', 'mouse', 4),
-- ('Marty', 'zebra', 10),
-- ('Gloria', 'hippo', 8),
-- ('Alex', 'lion', 9),
-- ('Melman', 'giraffe', 15),
-- ('Nala', 'lion', 2),
-- ('Marie', 'cat', 1),
-- ('Flounder', 'fish', 8);
1
CREATE TABLE animals(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  type VARCHAR(50),
  age integer
  );

  RESULTS
  Query ran successfully. 0 rows to display.
  ////////////////////////////////////////////////////////////////////////////
  2
  INSERT INTO animals ( name, type, age ) 
VALUES ('Leo', 'lion', 12),
('Jerry', 'mouse', 4),
('Marty', 'zebra', 10),
('Gloria', 'hippo', 8),
('Alex', 'lion', 9),
('Melman', 'giraffe', 15),
('Nala', 'lion', 2),
('Marie', 'cat', 1),
('Flounder', 'fish', 8);
  
  RESULTS
  Query ran successfully. 0 rows to display.
  //////////////////////////////////////////////////////////////////////////
  3
  SELECT * FROM animals

    RESULTS
    id	name	type	age
    1	Leo	lion	12
    2	Jerry	mouse	4
    3	Marty	zebra	10
    4	Gloria	hippo	8
    5	Alex	lion	9
    6	Melman	giraffe	15
    7	Nala	lion	2
    8	Marie	cat	1
    9	Flounder	fish	8
    //////////////////////////////////////////////////////////////////////////
4
DELETE
FROM animals
WHERE type = 'lion' 

RESULTS
Query ran successfully. 0 rows to display.
--id	name	type	age
--2	Jerry	mouse	4
--3	Marty	zebra	10
--4	Gloria	hippo	8
--6	Melman	giraffe	15
--8	Marie	cat	1
--9	Flounder	fish	8
////////////////////////////////////////////////////////////////////////////
5
--  SELECT * FROM animals 
--  WHERE name LIKE 'M%'

--id	name	type	age
--3	Marty	zebra	10
--6	Melman	giraffe	15
--8	Marie	cat	1

DELETE 
FROM animals 
WHERE name LIKE 'M%'

RESULTS
Query ran successfully. 0 rows to display.

--SELECT name FROM animals
--name
--Jerry
--Gloria
--Flounder
//////////////////////////////////////////////////////////////////////////
6
--SELECT * FROM animals
--WHERE age < 9

--id	name	type	age
--2	Jerry	mouse	4
--4	Gloria	hippo	8
--9	Flounder	fish	8

DELETE 
FROM animals
WHERE age < 9

RESULTS
Query ran successfully. 0 rows to display.
