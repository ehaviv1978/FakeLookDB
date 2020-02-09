CREATE PROCEDURE [dbo].[searchUsers]
	@str varchar(max) = 0
AS
	select * from Users
	where CHARINDEX(@str,FirstName+LastName) !=0;
RETURN 0
