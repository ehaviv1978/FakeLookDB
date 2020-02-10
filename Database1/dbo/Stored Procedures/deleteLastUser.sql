-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE deleteLastUser
AS
	BEGIN
		DELETE FROM Users
		WHERE Id=(SELECT MAX(Id) FROM Users)
	END;
