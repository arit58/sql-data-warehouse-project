/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates three schemas : 'bronze', 'silver', and 'gold'., if they dont exist already.
	
WARNING:
    database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

create database if not exists bronze;
create database if not exists silver;
create database if not exists gold;
