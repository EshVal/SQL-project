USE [Assignment1]
GO
/****** Object:  StoredProcedure [dbo].[sp_insertperson]    Script Date: 3/10/2015 11:05:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_insertperson](@ADDRESSCODE VARCHAR(50),@NAME VARCHAR(50),@FAMILY VARCHAR(50),@DOB DATETIME,@EMAIL NVARCHAR(50))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.(
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
	declare @personcode int
	select @personcode=MAX(PERSONCODE)+1 FROM PERSON
	IF NOT EXISTS (SELECT * FROM PERSON )
		INSERT INTO PERSON(ADDRESSCODE,FIRSTNAME, LASTNAME, DOB, EMAIL)
       VALUES(@ADDRESSCODE,@NAME, @FAMILY, @DOB, @EMAIL)
	
	END
