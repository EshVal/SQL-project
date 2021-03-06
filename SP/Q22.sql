USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[SP_TOTALPRICE]    Script Date: 3/10/2015 11:07:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_TOTALPRICE]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT SUM(I.PRICE * E.QUANTITY) AS 'TOTAL PRICE' FROM ITEM I, EXISTS_IN E, STORE S 
WHERE I.ITEMCODE = E.ITEMCODE AND S.STORECODE = E.STORECODE
END
