CREATE PROCEDURE twoInsurances @A nvarchar(30), @B nvarchar(30)
AS 
	SELECT fname, lname
	FROM User_ u, Insurance i, Buy b
	WHERE u.id = b.userid and b.ins_id = i.id and i.ins_type = @A OR i.ins_type = @B
;