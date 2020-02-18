CREATE PROCEDURE [dbo].[getUser]
	@userId int
AS
BEGIN
	SELECT * FROM Users u
	WHERE u.userId=@userId;
END