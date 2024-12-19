SELECT DISTINCT name
FROM Company
         JOIN Trip ON company = company.id
WHERE plane = 'Boeing'