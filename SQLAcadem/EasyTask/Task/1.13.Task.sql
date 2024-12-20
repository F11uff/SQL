SELECT town_to
FROM Trip t
         JOIN Pass_in_trip pass ON t.id = pass.trip
         JOIN Passenger p ON pass.passenger = p.id
WHERE p.name = 'Bruce Willis'