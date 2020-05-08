CREATE PROCEDURE addPost 
    @picture varchar(MAX) = null,
	@userId int,
	@description nvarchar(200) = null,
	@latGPS float,
	@longGPS float,
	@timePosted datetime
AS
BEGIN
	DECLARE @geographyPoint geography = geography::Point(@latGPS, @longGPS, 4326);
    INSERT INTO 
		Posts(picture, userId,description,location,timePosted) 
	VALUES 
		(@picture, @userId,@description,@geographyPoint,@timePosted)
END
