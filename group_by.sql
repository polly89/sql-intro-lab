1
SELECT billing_state,SUM(total)
FROM invoice
GROUP BY billing_state

RESULTS

billing_state	sum
    1161
NT	38
WI	43
AZ	38
FL	40
NSW	38
RM	38
AB	38
NV	38
BC	39
SP	116
CA	117
NS	38
WA	40
QC	40
ON	76
MB	38
RJ	38
DF	38
IL	44
VV	41
UT	44
NY	38
MA	38
Dublin	46
TX	48
////////////////////////////////////////////////////////////////////////////
2
SELECT album_id, AVG(milliseconds)
FROM track
GROUP BY album_id
ORDER BY AVG(milliseconds)

Row count:347 Diplay Top 10 RESULTS
340	51780.000000000000
345	66639.000000000000
318	101293.000000000000
314	101481.000000000000
328	110266.000000000000
315	120000.000000000000
277	120463.000000000000
313	132932.000000000000
12	134643.500000000000
344	139200.000000000000
/////////////////////////////////////////////////////////////////////////
3
SELECT artist_id, COUNT (artist_id)
FROM album
WHERE artist_id IN (8, 22)
GROUP BY artist_id
ORDER BY COUNT(artist_id)

RESULTS
artist_id	count
8	3
22	14