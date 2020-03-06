CREATE PROCEDURE [dbo].[userLogIn]
	@email nvarchar(100)= '',
	@passsowrd nvarchar(100)=''
	
AS
	SELECT * from Users
	where email = @email AND password=@passsowrd;
RETURN 0