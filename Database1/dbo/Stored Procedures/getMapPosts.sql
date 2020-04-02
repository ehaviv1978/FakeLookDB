CREATE PROCEDURE [dbo].[getMapPosts]
	@minLat int = 0,
	@maxLat int =0,
	@minLong int =0,
	@maxLong int =0
AS
	SELECT Posts.postId, Posts.description,Posts.picture,Posts.location.Lat 'lat', 
	Posts.location.Long 'long', users.picture as userPic
    FROM  Posts
    LEFT JOIN Users ON Posts.userId=Users.userId
	where Posts.location.Lat > @minLat and Posts.location.Lat < @maxLat and
	Posts.location.Long > @minLong and Posts.location.Long < @maxLong
RETURN 0
