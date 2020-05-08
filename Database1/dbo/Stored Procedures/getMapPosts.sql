﻿CREATE PROCEDURE [dbo].[getMapPosts]
	@minLat int = 0,
	@maxLat int =0,
	@minLong int =0,
	@maxLong int =0,
	@userId int =0,
	@tag nvarchar(50)='~~~~',
	@minDate datetime = '1900-11-11',
	@maxDate datetime ='3000-11-11',
	@range int = 30000,
	@latGPS float =0,
	@longGPS float =0
AS
	DECLARE @currentLocation  geography = geography::Point(@latGPS, @longGPS, 4326);
	SELECT Posts.postId, Posts.description,Posts.picture,Posts.location.Lat 'lat', 
	Posts.location.Long 'long', users.userId, users.picture as userPic
    FROM  Posts
    LEFT JOIN Users ON Posts.userId=Users.userId
	where
		Posts.location.Lat > @minLat and Posts.location.Lat < @maxLat and
		Posts.location.Long > @minLong and Posts.location.Long < @maxLong and
		Posts.timePosted > @minDate and Posts.timePosted < @maxDate and
		(@currentLocation.STDistance(geography::Point(Posts.location.Lat,Posts.location.Long, 4326)))/1000 < @range and
		((@userId!=0 and
		users.userId = @userId) or @userId=0) and 
		(@tag!='~~~~' and
		(CHARINDEX(@tag,STUFF((SELECT ','+ tagContent
		FROM PostTags WHERE [postId] = Posts.postId FOR XML PATH('')),1,1,'')) !=0)or
		@tag='~~~~')
		
RETURN 0
