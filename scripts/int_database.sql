/*
=======================================================================
Create Database and Schema
=======================================================================
Script Purpose:
	This is create a new database named 'DataWerehouse' after checking if it already exsist.
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
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWerehouse')
BEGIN
	ALTER DATABASE DataWerehouse SET SINGLE_USER ROLLBACK IMMEDIATE
	DROP DATABASE DataWerehouse;
END;

-- Create database 'DataWerehouse' database

CREATE DATABASE DataWerehouse;

USE DataWerehouse;

-- CREATE Schema
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold; 
GO
