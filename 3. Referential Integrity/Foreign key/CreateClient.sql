CREATE TABLE Client(
	Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FirstName nvarchar(50) NOT NULL,
	FamilyName nvarchar(50) NOT NULL,
);