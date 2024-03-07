-- Rollbacks to the previous version 1 before the productratings table was created

-- Drop FK_Product_ProductRatings
ALTER TABLE ProductRatings
    DROP CONSTRAINT FK_Product_ProductRatings;

-- And then we drop the productRatings table
	DROP TABLE ProductRatings;