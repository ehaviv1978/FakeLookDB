CREATE PROCEDURE [dbo].[allPosts]
AS
BEGIN
    SELECT Posts.postId, Posts.description,Posts.image,Posts.location.Lat 'lat', location.Long 'long',Posts.timePosted,Users.firstName,Users.lastName
    FROM  Posts
    LEFT JOIN Users ON Posts.UserId=Users.userId;
END;