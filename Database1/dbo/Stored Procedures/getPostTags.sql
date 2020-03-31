CREATE PROCEDURE [dbo].[getPostTags]
	@postId int = 0
AS
	SELECT * from PostTags
	Where @postId=postId
RETURN 0
