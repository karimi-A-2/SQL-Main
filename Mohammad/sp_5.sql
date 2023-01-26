
-----   you may need to change name of locationid property in property_inq and pid in location

-----   this can not be done do to not accessing 
CREATE PROCEDURE nameCompanyAsc @x nvarchar(35)
AS 
	SELECT * FROM Property_inq pinq, Province p, Insurance ins, inqury inq
	WHERE ins.ins_type = 'fire' and inq.inq_type = 'fire'and pinq.inq_id = inq.id 
	and pinq.province_id = p.id and p.name = @x ORDER BY ins.price ASC