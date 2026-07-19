/*
=======================================================================
Create Database and Schema
=======================================================================
Script Purpose:
	This is create a new database named 'DataWarehouse' after checking if it already exsist.
	If the database exists, it is dropped. Additionally, script sets up there schemas
	within the database: 'bronze', 'silver', 'gold'.

WARNING:
	Running this script will drop the entire 'DataWerehouse' database if it exists.
	All data in the database will be permanently delete. Proceed with caution
	and ensure you have proper backups before runing this script. 
*/

USE master;
GO

-- Drop and recreate the 'DataWerehouse' database.
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse;
END;
GO

-- Create database 'DataWerehouse' database

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- CREATE Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold; 
GO
