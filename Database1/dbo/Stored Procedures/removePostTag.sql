CREATE PROCEDURE [dbo].[removePostTag]
	@postId int = 0,
	@tagContent nvarchar(50)
AS
	delete from PostTags
	WHERE PostTags.postId= @postId and PostTags.tagContent=@tagContent
RETURN 0
