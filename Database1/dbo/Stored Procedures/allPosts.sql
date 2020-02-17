CREATE PROCEDURE [dbo].[allPosts]
AS
BEGIN
    SELECT Posts.Id, Posts.Description,Posts.Image,Posts.Location,Posts.TimePosted,Users.FirstName,Users.LastName   
    FROM  Posts
    LEFT JOIN Users ON Posts.UserId=Users.Id;
END;