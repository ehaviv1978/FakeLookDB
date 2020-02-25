CREATE PROCEDURE [dbo].[addComment]
	@postId int,
	@userId int,
	@commentContent nvarchar(50)
AS
BEGIN
	INSERT INTO 
		Comments(postId,userId,timeCommented,commentContent)
	VALUES
		(@postId,@userId,CURRENT_TIMESTAMP,@commentContent)
END
