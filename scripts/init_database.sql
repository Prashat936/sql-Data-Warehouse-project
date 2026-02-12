/*
---------------------------
CREATE Database and Schemas
---------------------------

Script Purpose: 
	This creates  a database named 'DataWarehouse' after  checking if it already exists.
	If the database exists, it is drpped and recreated. Additionally, the script  sets up three schemas
	within the database: 'bronze', 'silver', and 'gold'.


Warning:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	All data in the database will be permanently deleted.Proceed with caution
	and ensure you have proper backups before running this




*/

USE master;
GO

-- Drop and recreate 'databasewarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse' )
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE ; 
	DROP DATABASE DataWarehouse;
END ;
GO

-- Create the 'DataWareHouse' database
CREATE DATABASE DataWarehouse;
GO


USE DataWarehouse;
GO

--CREATE Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA sivler;
GO
CREATE SCHEMA gold;
GO
