USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[SearchItems]    Script Date: 3/10/2015 11:00:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SearchItems](@name varchar(50),@brand varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT I.ITEMCODE,I.NAME,I.BRAND,I.PRICE,I.DESRIPTION from ITEM I
	where  I.NAME LIKE '%' + @name + '%' and I.BRAND LIKE '%' + @brand + '%'
	order by I.ITEMCODE asc
END
