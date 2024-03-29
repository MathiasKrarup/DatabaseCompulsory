
# Database Schema Migrations
Compulsory Assignment in the subject Databases for Developers

In this project we implement schemas for an e-commerce application.

To do this we wrote migrations both manually and using Entity Framework.

## Authors

- [@Mathias](https://github.com/MathiasKrarup)
- [@Andreas](https://github.com/AndreasBerthelsen)
# Instructions for setting up the project
## Clone the repository
    1. Clone the repo: git clone https://github.com/MathiasKrarup/DatabaseCompulsory.git

## Ensure to have dotnet tool installed
    1. Run this command: dotnet tool install --global dotnet-ef 

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

### v0_07032024__initial-schema.sql
Running the script in this file will create our initial-schema which includes creating the Product table
### v1_07032024__add-categories.sql
Running the script in this file will create the Category table 
and modify Products to include a category_Id.
### v2_07032024__add-product-ratings.sql
Running this script in this file creates the ProductRating table &
Add foreign key to link ProductRating table with the Product table
### v2.1_07032024__add-product-ratings_rollback.sql
Running the script in this file will rollbacks to the previous version 1 before the productratings table was created
### v1_07032024__add-categories_rollback.sql
Running the script in this file will rollback to the version 0 where we created the initial schema
### v0_07032024__initial-schema_rollback.sql
Running the script in this file will rollback to before we created version 0 which included creating the initial-schema with the Product table
## Apply the EF core migrations
Step 1: Navigate to the project and run the command

dotnet ef database update

## Rollback to a specific migration
In order to rollback to a specific migration you should run the command: dotnet ef database update MigrationName

Each migration name consists of a timestamp followed by the name that was given when the migration was made
