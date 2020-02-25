CREATE PROCEDURE [dbo].[changeUserPicture]
	@fileUrl varchar(max) ,
	@userId int
AS
	update Users set picture = @fileUrl
	where userId=@userId
RETURN 0;

