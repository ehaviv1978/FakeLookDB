-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE deleteLastUser
AS
	BEGIN
		DELETE FROM Users
		WHERE ID=(SELECT MAX(id) FROM Users)
	END;
