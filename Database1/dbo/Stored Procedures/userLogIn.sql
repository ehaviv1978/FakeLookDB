CREATE PROCEDURE [dbo].[userLogIn]
	@email nvarchar(100)= '',
	@password nvarchar(100)=''
	
AS
	SELECT * from Users
	where email = @email AND password=@password;
RETURN 0