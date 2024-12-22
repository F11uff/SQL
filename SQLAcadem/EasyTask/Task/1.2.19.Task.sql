SELECT DISTINCT status
FROM FamilyMembers fam
         JOIN Payments pay ON fam.member_id = pay.family_member
         JOIN Goods g ON pay.good = g.good_id
WHERE good_name = 'potato'