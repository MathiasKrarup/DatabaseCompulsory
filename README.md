
# Database Schema Migrations

## Documentation for the manual migration
### Naming conventions for manual migrations
An example of how were naming the first initial-schema is:
v0_07032024__initial-schema

v0 = Version number

07032024 - Date of creation

initial-schema - Brief description

So in this case it is version 0 and
then we add the creation date and then a brief description of which changes we made.

## Naming conventions for manual rollback
An example of how were naming v0 rollback
v0_07032024__initial-schema_rollback

We use the same naming conventions here except that we add _rollback after the brief description.

## v0_07032024__initial-schema.sql
Running the script in this file will create our initial-schema which includes creating the Product table
## v1_07032024__add-categories.sql
Running the script in this file will create the Category table 
and modify Products to include a category_Id.
## v2_07032024__add-product-ratings.sql
Running this script in this file creates the ProductRating table &
Add foreign key to link ProductRating table with the Product table
## v2.1_07032024__add-product-ratings_rollback.sql
Running the script in this file will rollbacks to the previous version 1 before the productratings table was created
## v1_07032024__add-categories_rollback.sql
Running the script in this file will rollback to the version 0 where we created the initial schema
## v0_07032024__initial-schema_rollback.sql
Running the script in this file will rollback to before we created version 0 which included creating the initial-schema with the Product table
