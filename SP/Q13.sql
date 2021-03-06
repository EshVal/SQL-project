USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_FindStoresInRange]    Script Date: 3/10/2015 11:04:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_FindStoresInRange](@X varchar(50),@Y varchar(50),@RANGE int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 DECLARE @POINT geometry = geometry::STGeomFromText('POINT (' + @X + ' ' + @Y + ')', 0);
	SELECT S.STORECODE,A.X,A.Y,@POINT.STDistance(LOCATION) AS DISTANCE
	FROM ADDRESS A,STORE S
	WHERE S.ADDRESSCODE=A.ADDRESSCODE and LOCATION.STDistance(@POINT)<=@RANGE
	ORDER BY DISTANCE asc,STORECODE asc
END
