CREATE PROCEDURE AddPost 
	@Image varchar(MAX),
	@UserId int,
	@Description varchar(MAX),
	@LatGPS float,
	@LongGPS float
AS
	DECLARE @geographyPoint geography = geography::Point(@LatGPS, @LongGPS, 4326);
    INSERT INTO 
		Posts(Image, UserId,Description,Location,TimePosted) 
	VALUES 
		(@Image, @UserId,@Description,@geographyPoint,CURRENT_TIMESTAMP)
return 0
