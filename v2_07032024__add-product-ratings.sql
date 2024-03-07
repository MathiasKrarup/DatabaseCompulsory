-- Create ProductRatings table
CREATE TABLE ProductRatings(
    Id INT IDENTITY(1,1) PRIMARY KEY,
    Rating INT NOT NULL,
    ProductId INT NOT NULL,
);

-- Add foreign key to link ProductRating table with Product table
ALTER TABLE ProductRatings
    ADD CONSTRAINT FK_Product_ProductRatings
        FOREIGN KEY (ProductId) REFERENCES Product(Id);
