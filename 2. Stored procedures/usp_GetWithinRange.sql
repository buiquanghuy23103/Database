CREATE PROCEDURE usp_GetWithinRange 
	@MinSalary float(4),
	@MaxSalary float(4)
AS
BEGIN
	SELECT * FROM dbo.Staff WHERE Salary BETWEEN @MinSalary AND @MaxSalary;
END
GO
