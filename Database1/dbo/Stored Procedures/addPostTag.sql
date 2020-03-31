CREATE PROCEDURE [dbo].[addPostTag]
	@postId int = 0,
	@tagContent nvarchar(50)
AS
	INSERT INTO PostTags(postId,tagContent)
	VALUES (@postId	,@tagContent)
RETURN 0
