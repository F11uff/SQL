SELECT COUNT(company) as count
FROM Trip
WHERE town_from LIKE 'Rostov' and town_to = 'Moscow'