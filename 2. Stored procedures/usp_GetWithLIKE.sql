CREATE PROCEDURE usp_GetWithLIKE 
	@FaNa nvarchar(50)
AS
BEGIN
	SELECT * FROM dbo.Staff WHERE FamilyName LIKE '%'+@FaNa+'%';
END
GO
