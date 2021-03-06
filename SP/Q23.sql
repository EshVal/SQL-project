USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_stintersects]    Script Date: 3/10/2015 11:07:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_stintersects](@X1 varchar(50),@Y1 varchar(50),@X2 varchar(50),@Y2 varchar(50),@X3 varchar(50),@Y3 varchar(50),@X4 varchar(50),@Y4 varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 DECLARE @polygon geometry 
	 set @polygon= geometry::STGeomFromText('POLYGON ( (' + @X1 + ' ' + @Y1 + ',' + @X2 + ' ' + @Y2 + ',' + @X3 + ' ' + @Y3 + ',' + @X4 + ' ' + @Y4 + ',' + @X1 + ' ' + @Y1 + '))', 0);
	SELECT S.STORECODE,A.X,A.Y
	FROM ADDRESS A,STORE S
	WHERE S.ADDRESSCODE=A.ADDRESSCODE and  @polygon.STIntersects(@polygon) = 1
	order by S.STORECODE
END
