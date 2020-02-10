CREATE PROCEDURE AddPost 
	@Image varchar(MAX),
	@UserId int,
	@Description varchar(MAX),
	@LocationStr varchar(MAX)
AS
	DECLARE @geographyPoint geography = geography::Point('47.65100', '-122.34900', '4326');
    INSERT INTO 
		Posts(Image, UserId,Description,Location,TimePosted) 
	VALUES 
		(@Image, @UserId,@Description,@geographyPoint,CURRENT_TIMESTAMP)
return 0
