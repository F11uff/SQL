SELECT id,
       CASE
           WHEN has_internet = 1 THEN 'YES'
           ELSE 'NO'
           END AS has_internet
FROM Rooms