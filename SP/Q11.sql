USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_TransactionsCities]    Script Date: 3/10/2015 11:04:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_TransactionsCities]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT CITY,COUNT(T.TRANSACTIONCODE) FROM ADDRESS A,TRANSACTIONS T,STORE S
	WHERE S.STORECODE=T.STORECODE and S.ADDRESSCODE=A.ADDRESSCODE
	GROUP BY A.CITY
	ORDER BY COUNT(T.TRANSACTIONCODE) desc,A.CITY asc
END
