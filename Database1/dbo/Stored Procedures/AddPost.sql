CREATE PROCEDURE addPost 
   @picture varchar(MAX) = null,
	@userId int,
	@description varchar(200) = null,
	@latGPS float,
	@longGPS float
AS
BEGIN
	DECLARE @geographyPoint geography = geography::Point(@latGPS, @longGPS, 4326);
    INSERT INTO 
		Posts(picture, userId,description,location,timePosted) 
	VALUES 
		(@picture, @userId,@description,@geographyPoint,CURRENT_TIMESTAMP)
END
