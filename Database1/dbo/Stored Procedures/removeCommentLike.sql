CREATE PROCEDURE [dbo].[removeCommentLike]
	@userId int,
	@commentId int
AS
BEGIN
	DELETE FROM CommentLikes
	WHERE CommentLikes.commentId= @commentId and CommentLikes.userId=@userId
END	
