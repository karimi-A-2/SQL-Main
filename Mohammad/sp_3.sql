CREATE PROCEDURE userReminder @period nvarchar(15)
AS	
	SELECT u.fname
	FROM Reminder r, User_ u 
	WHERE r.userID = u.id and r.ins_period = @period and r.ins_type = 'life insurance'
GO;