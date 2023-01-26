-- need change in instruction
CREATE PROCEDURE updateInsurance @newcontract INT
AS
	UPDATE Life_inq
	SET duration = 6
	FROM Life_inq linq , Insurance i, inqury inq
	WHERE i.ins_type = 'life' and linq.inqid = i.inqid and i.inqid = linq.inqid and linq.duration < @newcontract
;