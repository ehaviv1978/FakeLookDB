CREATE PROCEDURE [dbo].[addCommentLike]
	@userId int,
	@commentId int
AS
	BEGIN
	INSERT INTO CommentLikes(userId,commentId)
	VALUES (@userId,@commentId)
END;
