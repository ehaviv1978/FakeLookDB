CREATE PROCEDURE [dbo].[searchUsers]
	@searchParam varchar(100)
AS
	select * from Users
	where CHARINDEX(@searchParam,firstName+lastName) !=0;
RETURN 0
