-- By following these steps we will be able to rollback to the version 0 where we created the initial schema

-- First we have to drop the Constraint FK_Product_Category
ALTER TABLE Product
	DROP CONSTRAINT FK_Product_Category;

-- Then we drop the column Category_Id from the product table
ALTER TABLE Product
	DROP COLUMN Category_Id;

-- Lastly we will then be able to drop the Category table
Drop TABLE Category;