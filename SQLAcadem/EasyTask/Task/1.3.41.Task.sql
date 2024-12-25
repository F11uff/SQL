SELECT DISTINCT start_pair
FROM Timepair Timep
         JOIN Schedule s ON s.number_pair = Timep.id
WHERE s.number_pair = 4