CREATE PROCEDURE addPost 
	@image varbinary(MAX) = null,
	@userId int,
	@description varchar(200) = null,
	@latGPS float,
	@longGPS float
AS
BEGIN
	DECLARE @geographyPoint geography = geography::Point(@latGPS, @longGPS, 4326);
    INSERT INTO 
		Posts(image, userId,description,location,timePosted) 
	VALUES 
		(@image, @userId,@description,@geographyPoint,CURRENT_TIMESTAMP)
END
