IF NOT EXISTS (SELECT * FROM Course)
BEGIN
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Object-oriented Programming', 10)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Databases', 11)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Web Development', 12)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Web Programming', 13)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Software Engineering', 14)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Careless Telecommunications', 15)
	INSERT INTO [dbo].[Course]
			   ([Name]
			   ,[StartingWeek])
		 VALUES
			   (N'Professional ICT Skills', 16)		   
			   
	PRINT 'Information added successfully to table Course.'
END
ELSE
	PRINT 'You already have the Course information added.'

