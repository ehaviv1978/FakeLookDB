CREATE PROCEDURE [dbo].[updatePassword]
	@userId int = 0,
	@password nvarchar(MAX) = "1"
AS
	UPDATE Users
	SET password =@password
	WHERE userId = @userId
RETURN 0
