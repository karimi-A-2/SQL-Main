CREATE PROCEDURE avgEarthquake @perovience nvarchar(50)
AS
	SELECT	AVG(pinq.meterage)
	FROM Property_inq pinq, Buy b, location_ l,provience p, city c
	WHERE b.inq_id = pinq.in_id and pinq.lid = l.id and p.cityid = c.id
	GROUP BY c.id
;