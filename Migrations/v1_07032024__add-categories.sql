CREATE TABLE Category(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL
);

ALTER TABLE Product
    ADD Category_Id INT NOT NULL;

-- Add fk constraint that links Product and category tables
ALTER TABLE Product
    ADD CONSTRAINT FK_Product_Category
        FOREIGN KEY (Category_Id) REFERENCES Category(Id);
