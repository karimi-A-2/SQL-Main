CREATE PROCEDURE mobileCount @begining nvarchar(11)
AS SELECT COUNT(*) AS number_of_phonenumbers
FROM User_
WHERE phone like @begining+ '%'