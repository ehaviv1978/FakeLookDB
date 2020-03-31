CREATE PROCEDURE [dbo].[allComments]
@postId int,
@userId int
AS
BEGIN
    SELECT 
        c.commentId,c.commentContent,c.timeCommented,u.firstName,u.lastName,u.picture, u.userId,
        STUFF((SELECT ','+ tagContent
	    FROM CommentTags WHERE [commentId] = c.commentId FOR XML PATH('')),1,1,'') AS commentTags,
		(SELECT count (*)
	    FROM CommentLikes
	    WHERE CommentLikes.commentId = c.commentId) as commentLikeAmount
	    ,CASE
        WHEN EXISTS (
        SELECT top 1*
        FROM CommentLikes
        WHERE CommentLikes.commentId = c.commentId
        AND CommentLikes.userId = @userId
)       THEN CAST(1 AS BIT)
        ELSE CAST(0 AS BIT) END
        AS 'liked'
    FROM  
        Comments c
		    LEFT JOIN Users u ON c.userId=u.userId
	WHERE
		c.postId = @postId
	ORDER BY C.timeCommented desc
END;