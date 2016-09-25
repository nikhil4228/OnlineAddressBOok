--vamshi

USE master
GO
IF EXISTS (SELECT * FROM sysdatabases WHERE name = 'onlineAddressBook')
BEGIN
DROP DATABASE onlineAddressBook;
PRINT 'DATABASE onlineAddressBook IS DROPPED';
END
GO
CREATE DATABASE onlineAddressBook;
GO
PRINT 'DATABASE onlineAddressBook IS CREATED'
USE onlineAddressBook;
GO

--Tales creation

create table registration(
id int identity,
name varchar(50),
userid varchar(20) primary key,
password varchar(50),
confpass varchar(50),
passwordhint varchar(20)

);

--query

select * from registration

