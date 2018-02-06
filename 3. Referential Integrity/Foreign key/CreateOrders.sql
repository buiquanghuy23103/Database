CREATE TABLE Orders (
	Id int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	OrderNumber uniqueidentifier NOT NULL UNIQUE NONCLUSTERED,
	Amount int NOT NULL,
	ClientId int NOT NULL,
	ProductId int NOT NULL 
);