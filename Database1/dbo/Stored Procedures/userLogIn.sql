CREATE PROCEDURE [dbo].[userLogIn]
	@email nvarchar(100)= ''
AS
BEGIN
	SELECT top 1 Users.password,Users.userId 
	from Users
	where email = @email;
END
