CREATE PROCEDURE usp_GetWithParameters 
	@FaNa nvarchar(50)
AS
BEGIN
	SELECT * FROM dbo.Staff WHERE FamilyName=@FaNa;
END
GO
