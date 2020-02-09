CREATE PROCEDURE [dbo].[getUser]
	@UserId int = 0
AS
	SELECT * FROM Users
	WHERE Id=@UserId;
RETURN 0
