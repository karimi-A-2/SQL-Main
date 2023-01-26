CREATE PROCEDURE fireInsurance
AS
	SELECT u.fname, u.lname
	FROM User_ u,Buy b,inqury i, Property_inq pink, Insurance ins, Fire_Insurance fi 
	WHERE u.id = b.userid and i.id = pink.inq_id and b.inq_id = i.id 
	and pink.uinit_count > 10 and pink.structure_type = 1 and pink.structure_type = 2 and 
	pink.structure_type = 3 and b.ins_id = ins.id and ins.ins_type = 'fire'
;
