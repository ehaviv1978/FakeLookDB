CREATE PROCEDURE [dbo].[getUser]
	@userId int
AS
BEGIN
	SELECT u.firstName,u.lastName,u.picture,u.address,u.birthDate,u.dateJoined,u.email,u.job FROM Users u
	WHERE u.userId=@userId;
END