CREATE PROCEDURE userMaxInsurance @maxprice INT
AS 
	SELECT u.fname, u.lname
	FROM User_ u, Buy b, Insurance i
	WHERE u.id = b.userid and i.type_ = 'health' and i.price < @maxprice
GO;