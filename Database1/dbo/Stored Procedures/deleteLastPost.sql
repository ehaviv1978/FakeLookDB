-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE deleteLastPost
	
AS
BEGIN
		DELETE FROM Posts
		WHERE Id=(SELECT MAX(Id) FROM Posts)
	END;
