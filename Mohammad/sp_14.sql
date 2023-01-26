CREATE PROCEDURE DeleteInsurance @X INT, @Y INT, @Z INT 
AS 
	IF EXISTS(SELECT * FROM 
	Life_insurance li, Insurance i, inqury inq, Life_inq linq, Buy b
	WHERE b.ins_id = i.id and b.inq_id = inq.id and i.id = li.ins_id and inq.id = linq.inq_id 
	and li.redemption_value < @Z and linq.monthly_pay between @X and @Y and
	linq.duration = 5
	) 
	DROP TABLE Life_insurance
;