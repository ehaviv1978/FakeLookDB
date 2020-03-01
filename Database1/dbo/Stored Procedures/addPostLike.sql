CREATE PROCEDURE [dbo].[addPostLike]
	@postId int,
	@userId int
AS
	BEGIN
	INSERT INTO PostLikes (postId,userId)
	VALUES (@postId	,@userId)
END
