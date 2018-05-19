IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
           WHERE TABLE_NAME = N'LabReservation')
BEGIN
	SET ANSI_NULLS ON
	SET QUOTED_IDENTIFIER ON

	CREATE TABLE [dbo].[LabReservation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,	
	[CourseId] [int] NOT NULL,
	 CONSTRAINT [PK_LabReservation] PRIMARY KEY CLUSTERED 
	(
		[Id] ASC
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]

	ALTER TABLE [dbo].[LabReservation]  WITH CHECK ADD  CONSTRAINT [FK_LabReservation_Course] FOREIGN KEY([CourseId])
	REFERENCES [dbo].[Course] ([Id])
	ON DELETE CASCADE

	ALTER TABLE [dbo].[LabReservation] CHECK CONSTRAINT [FK_LabReservation_Course]
	PRINT 'Table LabReservation successfully created.'
END
ELSE
	PRINT 'You already have table LabReservation created.'

