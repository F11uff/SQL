SELECT COUNT(name) AS count
FROM CLass c
    JOIN Student_in_class s
ON c.id = s.class
WHERE c.name ~ '10 B'