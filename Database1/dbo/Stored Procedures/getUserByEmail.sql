CREATE PROCEDURE [dbo].[getUserByEmail]
	@email nvarchar(100)= ''
	
AS
	SELECT * from Users
	where email = @email;
RETURN 0
