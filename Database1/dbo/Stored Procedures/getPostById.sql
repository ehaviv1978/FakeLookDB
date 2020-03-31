CREATE PROCEDURE [dbo].[getPostById]
		@userId int,
        @postId int
AS
BEGIN
    SELECT top 1 Posts.postId, Posts.description,Posts.picture,Posts.location.Lat 'lat', 
	Posts.location.Long 'long', Posts.timePosted,Users.firstName,Users.lastName,users.userId,users.picture as userPic,
    STUFF((SELECT ','+ tagContent
	FROM PostTags WHERE [postId] = Posts.postId FOR XML PATH('')),1,1,'') AS postTags,
	(SELECT count (*)
	FROM PostLikes
	WHERE PostLikes.postId = Posts.postId) as postLikeAmount
	,CASE
WHEN EXISTS (
  SELECT top 1*
  FROM PostLikes
  WHERE PostLikes.postId = Posts.postId
  AND PostLikes.userId = @userId
) THEN CAST(1 AS BIT)
ELSE CAST(0 AS BIT) END
  AS 'liked'
    FROM  Posts
    LEFT JOIN Users ON Posts.userId=Users.userId
	where postId = @postId
END;