
CREATE PROCEDURE userNotOrder
AS
    SELECT fname, lname FROM User_
    WHERE id NOT IN
    (
        SELECT id 
		FROM User_ u1 , Buy b1 , Insurance i1
        where u1.id = b1.userid AND b1.ins_id = i1.id AND i1.ins_type = 'life insurance'
    );

exec userNotOrder