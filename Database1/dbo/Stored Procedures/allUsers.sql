
CREATE PROCEDURE [dbo].[allUsers]
AS
BEGIN
    SELECT 
        userId, firstName, lastName
    FROM 
        Users
    order by firstName
END;
