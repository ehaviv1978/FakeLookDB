CREATE PROCEDURE [dbo].[searchPosts]
	@searchParam varchar(100)
AS
	select * from Posts
	where CHARINDEX(@searchParam,description) !=0;
RETURN 0
