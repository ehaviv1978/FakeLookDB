CREATE PROCEDURE [dbo].[addCommentTag]
	@commentId int = 0,
	@tagContent nvarchar(50)
AS
	INSERT INTO CommentTags(commentId,tagContent)
	VALUES (@commentId	,@tagContent)
RETURN 0