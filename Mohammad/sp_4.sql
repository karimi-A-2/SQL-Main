CREATE PROCEDURE avgName @baseinsurance nvarchar(40), @number_of_insurance INT
AS 
SELECT AVG(DATALENGTH(u.lname))
FROM User_ u, Insurance i, Life_insurance li, Buy b, inqury inq, Life_inq linq, Member m
WHERE b.ins_id = i.id and b.userid = u.id and i.id = li.ins_id and inq.id = linq.inq_id and m.relation = null and m.base_in = @baseinsurance
GROUP BY b.ins_id
HAVING COUNT(*) <= @number_of_insurance