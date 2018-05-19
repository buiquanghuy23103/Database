IF NOT EXISTS (SELECT * FROM LabReservation)
BEGIN
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MB316', 1)
			   
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MB310', 2)
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MB216', 3)
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MB210', 4)
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MA325', 5)
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'Everything Goes', 6)
	INSERT INTO [dbo].[LabReservation]
			   ([Name]			   
			   ,[CourseId])
		 VALUES
			   (N'MB225', 7)		   
	PRINT 'Information added successfully to table LabReservation.'
END
ELSE
	PRINT 'You already have the LabReservation information added.'