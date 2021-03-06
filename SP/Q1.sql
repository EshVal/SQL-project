USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchPersons]    Script Date: 3/10/2015 10:58:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_SearchPersons](@name varchar(50),@family varchar(50),@email varchar(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT P.PERSONCODE,P.ADDRESSCODE,P.FIRSTNAME,P.LASTNAME,P.EMAIL,P.DOB
	,A.STREET_NO,A.STREET_ADDRESS,A.CITY
	,A.ZIP,A.X,A.Y,PH.PHONE_NUMBER,PH.PHONE_TYPE from PERSON P,ADDRESS A,PHONE PH
	where P.ADDRESSCODE = A.ADDRESSCODE AND P.PERSONCODE=PH.PERSONCODE 
	AND  P.FIRSTNAME LIKE '%' + @name + '%' and P.LASTNAME LIKE '%' + @family + '%' and P.EMAIL + '%' + @email LIKE '%' 
	AND P.PERSONCODE NOT IN (SELECT PERSONCODE FROM WORKSIN)
	order by P.FIRSTNAME,P.LASTNAME,P.PERSONCODE asc
END
