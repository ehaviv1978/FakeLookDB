CREATE PROCEDURE [dbo].[removePostLike]
	@postId int,
	@userId int
AS
BEGIN
	DELETE FROM PostLikes
	WHERE PostLikes.postId= @postId and PostLikes.userId=@userId
END	
