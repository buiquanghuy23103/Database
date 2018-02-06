CREATE PROCEDURE usp_GetWithMax 
	@MaxSalary float(4),
	@MinSalary float(4)
AS
BEGIN
	SELECT * FROM dbo.Staff WHERE Salary BETWEEN @MinSalary AND @MaxSalary; 
END
GO
