--exec dbo.usp_GetWithoutParameters;
--exec dbo.usp_GetWithParameters 'Gearloose';
--exec dbo.usp_GetWithLIKE 'se';
--exec dbo.usp_GetWithinRange 2500.55, 3500.45;
--exec dbo.usp_GetWithMax @MaxSalary=3500.45;

Declare @SubTotal int
Execute dbo.usp_GetStaffCountByGender 'F', @StaffCount=@SubTotal output
If (@SubTotal is NULL)
	print '@SubTotal is NULL';
	else
	print 'Result is '+convert(nvarchar(5),@SubTotal);