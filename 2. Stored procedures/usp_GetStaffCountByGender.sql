Create Procedure usp_GetStaffCountByGender
@Gender char(1),
@StaffCount int Output
as
Begin
	Select @StaffCount = COUNT(Id)
	from dbo.Staff
	where Gender=@Gender
End