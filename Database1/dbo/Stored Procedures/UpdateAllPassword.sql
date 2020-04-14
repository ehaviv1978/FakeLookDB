CREATE PROCEDURE [dbo].[UpdateAllPassword]
	@password nvarchar(MAX) = "1"
AS
	UPDATE Users
	SET password =@password
RETURN 0