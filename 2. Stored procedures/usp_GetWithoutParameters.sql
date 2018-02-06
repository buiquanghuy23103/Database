CREATE PROCEDURE usp_GetWithoutParameters 
AS
BEGIN
	SELECT * FROM dbo.Staff
	WHERE FamilyName='Mouse';
END
GO
