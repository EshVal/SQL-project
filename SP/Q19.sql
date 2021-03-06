USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_weeklysalary]    Script Date: 3/10/2015 11:06:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_weeklysalary](@storecode int)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT sum(X.Salary) from(	
select (WN.WEEKLY_HOURS*PN.HOURLY_SALARY) Salary from WORKSIN WN,POSITION PN,STORE S,PERSON P
WHERE WN.POSITION=PN.JOB and S.STORECODE=WN.STORECODE AND P.PERSONCODE=WN.PERSONCODE AND WN.STORECODE= @storecode
 ) as x
END
