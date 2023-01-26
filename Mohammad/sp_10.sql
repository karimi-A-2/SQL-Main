
-- this query need to be changed in order to work

CREATE PROCEDURE ageRangeFamilyInsurance @familycount int
AS
	SELECT COUNT(*) as count_, SUM(price) sumation
	FROM Insurance i,dbo.inqury inq, health_inq hinq, Member m
	where i.id = inq.id and inq.id = hinq.inq_id and i.ins_type like 'health' and hinq.count_of_member IS NOT NULL and hinq.count_of_member = @familycount
	and m.id in(
		SELECT m1.id
		FROM Member m1
		WHERE m.id = m1.id and m1.head_id IS NOT NULL
	)
		GROUP BY m.age_range
;
