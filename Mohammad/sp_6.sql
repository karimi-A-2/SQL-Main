CREATE PROCEDURE userInvitation @invatation int, @numofinsurance int
AS
SELECT u.fname
FROM User_ u, Insurance i
WHERE u.id = i.in_id and u.invatation = (10 - @invatation)
GROUP BY u.id
HAVING COUNT(*) >= @numofinsurance