CREATE PROCEDURE [dbo].[allPosts]
	@userId int
AS
BEGIN
    SELECT Posts.postId, Posts.description,Posts.picture,Posts.location.Lat 'lat', 
	Posts.location.Long 'long', Posts.timePosted,Users.firstName,Users.lastName,users.picture as userPic ,
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
	ORDER BY Posts.timePosted desc
END;