USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchTransactions]    Script Date: 3/10/2015 11:03:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_SearchTransactions](@family varchar(50),@paymentmethod varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TRANSACTIONCODE, FIRSTNAME, LASTNAME, STORECODE, TRANSACTION_DATE, PAYMENT_METHOD  from TRANSACTIONS T,PERSON p
	where P.PERSONCODE=T.PERSONCODE and  P.LASTNAME LIKE '%' + @family + '%' and T.PAYMENT_METHOD LIKE '%' + @paymentmethod + '%' 
	order by T.TRANSACTIONCODE asc
END
