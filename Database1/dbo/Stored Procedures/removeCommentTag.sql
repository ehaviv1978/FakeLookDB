CREATE PROCEDURE [dbo].[removeCommentTag]
	@commentId int = 0,
	@tagContent nvarchar(50)
AS
	delete from CommentTags
	WHERE CommentTags.commentId= @commentId and CommentTags.tagContent=@tagContent
RETURN 0
