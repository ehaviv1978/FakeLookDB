CREATE PROCEDURE [dbo].[allPosts]
AS
BEGIN
    SELECT Posts.postId, Posts.description,Posts.picture,Posts.location.Lat 'lat', location.Long 'long',Posts.timePosted,Users.firstName,Users.lastName,users.picture as userPic
    FROM  Posts
    LEFT JOIN Users ON Posts.userId=Users.userId;
END;