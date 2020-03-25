CREATE PROCEDURE [dbo].[updatePassword]
	@userId int = 0,
	@password nvarchar(30) = "1"
AS
	UPDATE Users
	SET password =@password
	WHERE userId = @userId
RETURN 0
