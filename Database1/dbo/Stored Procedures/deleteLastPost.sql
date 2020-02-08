-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE deleteLastPost
	
AS
BEGIN
		DELETE FROM Posts
		WHERE ID=(SELECT MAX(id) FROM Posts)
	END;
