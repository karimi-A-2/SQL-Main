CREATE PROCEDURE userCompanyInsurance @name nvarchar(20), @company nvarchar(25)
AS 
SELECT * FROM User_ u, Buy b, Insurance i
WHERE i.company = @company and i.ins_name = @name and b.userid = u.id and b.ins_id = i.in_id