-- setup_mysql_dev.sql
-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS bdyb_dev_db;

-- Create the user if it doesn't exist and set the password
CREATE USER IF NOT EXISTS 'body_Msr_dev'@'localhost' IDENTIFIED BY 'Mr!engineer44';

-- Grant all privileges on the database to the user
GRANT ALL PRIVILEGES ON bdyb_dev_db.* TO 'body_Msr_dev'@'localhost';

-- Grant SELECT privilege on performance_schema to the user
GRANT SELECT ON performance_schema.* TO 'body_Msr_dev'@'localhost';

-- Flush the privileges to ensure all changes are applied
FLUSH PRIVILEGES;