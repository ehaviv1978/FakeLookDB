-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE AddPost 
AS
BEGIN
	INSERT INTO Posts
	VALUES ('https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg', 
	2, 'Butterfly',(geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656 )', 4326)),CURRENT_TIMESTAMP);
END
