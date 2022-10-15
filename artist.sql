1
INSERT INTO artist(name)
VALUES ('Vincent van Gogh'),
('Pablo Picasso'),
('Leoardo da Vinci');

RESULTS
Query ran successfully. 0 rows to display.
///////////////////////////////////////////////////////////////////////////////////
2
SELECT name,
	artist_id
FROM artist
ORDER BY name DESC
LIMIT 10;

RESULTS
name	artist_id
Zeca Pagodinho	155
Yo-Yo Ma	212
-- Youssou N'Dour	168    (commented out due to ')
Yehudi Menuhin	255
Xis	181
Wilhelm Kempff	211
Whitesnake	154
Vinicius, Toquinho & Quarteto Em Cy	75
Vinícius E Qurteto Em Cy	73
Vinícius E Odette Lara	74

//////////////////////////////////////////////////////////////////////////////
3
SELECT * FROM artist LIMIT 5;

RESULTS
artist_id	name
1	AC/DC
2	Accept
3	Aerosmith
4	Alanis Morissette
///////////////////////////////////////////////////////////////////////////////
4
SELECT name,
	 artist_id
FROM artist
WHERE name LIKE 'black%';

RESULTS
Query ran successfully. 0 rows to display.
//////////////////////////////////////////////////////////////////////////////
5
SELECT name,
	 artist_id
FROM artist
WHERE name IN('black');

RESULTS
Query ran successfully. 0 rows to display.
/////////////////////////////////////////////////////////////////////////////
