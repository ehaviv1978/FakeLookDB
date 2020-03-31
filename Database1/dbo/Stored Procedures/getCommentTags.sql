CREATE PROCEDURE [dbo].[getCommentTags]
	@commentId int = 0
AS
	SELECT * from CommentTags
	Where @commentId=commentId
RETURN 0
