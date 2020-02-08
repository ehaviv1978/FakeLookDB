-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addUser]
AS
BEGIN
    INSERT INTO 
		Users (FirstName, LastName,Password,DateJoined) 
	VALUES 
		('John', 'Doe', '1234',CURRENT_TIMESTAMP)
END;
