CREATE PROCEDURE [dbo].[allComments]
@postId int
AS
BEGIN
    SELECT 
        c.commentContent,c.timeCommented,u.firstName,u.lastName,u.picture
    FROM  
        Comments c
		    LEFT JOIN Users u ON c.userId=u.userId
	WHERE
		c.postId = @postId
	ORDER BY C.timeCommented desc
END;