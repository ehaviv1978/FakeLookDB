CREATE PROCEDURE [dbo].[searchPosts]
	@searchParam varchar(100)
AS
	SELECT Posts.postId, Posts.description,Posts.picture
	FROM  Posts
	where CHARINDEX(@searchParam,STUFF((SELECT ','+ tagContent
	FROM PostTags WHERE [postId] = Posts.postId FOR XML PATH('')),1,1,'')) !=0 OR
		CHARINDEX(@searchParam,STUFF((SELECT ',' +
        STUFF((SELECT ','+ tagContent
	    FROM CommentTags WHERE [commentId] = c.commentId FOR XML PATH('')),1,1,'') AS commentTags
    FROM  
        Comments c
	WHERE
		c.postId = Posts.postId FOR XML PATH('')),1,1,'')) !=0;
RETURN 0
