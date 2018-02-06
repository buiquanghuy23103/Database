ALTER TABLE Orders 
ADD CONSTRAINT FK_Orders_Product FOREIGN KEY ProductId 
    REFERENCES Product(Id)