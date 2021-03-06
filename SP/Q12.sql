USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[SP_FindNearestStore]    Script Date: 3/10/2015 11:04:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_FindNearestStore](@X varchar(50),@Y varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 DECLARE @POINT geometry = geometry::STGeomFromText('POINT (' + @X + ' ' + @Y + ')', 0);
	SELECT top(5) S.STORECODE,A.X,A.Y,@POINT.STDistance(LOCATION) AS DISTANCE
	FROM ADDRESS A,STORE S
	WHERE S.ADDRESSCODE=A.ADDRESSCODE
	ORDER BY DISTANCE asc,S.STORECODE asc

END
