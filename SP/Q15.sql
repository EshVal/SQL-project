USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATECOLUMN]    Script Date: 3/10/2015 11:05:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_UPDATECOLUMN](@PERSONCODE INT,@ADDRESSCODE VARCHAR(50),@NAME VARCHAR(50),@FAMILY VARCHAR(50),@DOB DATETIME,@EMAIL NVARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	 UPDATE PERSON SET ADDRESSCODE=@ADDRESSCODE,FIRSTNAME=@NAME,LASTNAME=@FAMILY,DOB=@DOB,EMAIL=@EMAIL
    WHERE PERSONCODE=@PERSONCODE 
END
