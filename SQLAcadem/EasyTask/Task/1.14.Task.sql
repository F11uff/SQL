SELECT time_in
FROM Trip t
         JOIN Pass_in_trip pas ON t.id = pas.trip
         JOIN Passenger p ON p.id = pas.passenger
WHERE p.name = 'Steve Martin'
  AND t.town_to = 'London'