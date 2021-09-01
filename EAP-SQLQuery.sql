USE tempdb
IF EXISTS (SELECT *FROM sys.databases WHERE name = 'EAP')
DROP DATABASE EAP
GO

CREATE DATABASE EAP
GO

USE EAP
GO

CREATE TABLE Employee(
StudentID	INT IDENTITY PRIMARY KEY NOT NULL,
FirstName	NVARCHAR(50) NOT NULL,
LastName	NVARCHAR(50) NOT NULL,
PhoneNumber	CHAR(10) NOT NULL,
Email		VARCHAR(100) UNIQUE NOT NULL
)

INSERT INTO Employee VALUES
('FirstName1','LastName1', '0927367123', 'student1@gmail.com'),
('FirstName2','LastName2', '0893794283', 'student2@gmail.com'),
('FirstName3','LastName3', '0983712987', 'student3@gmail.com'),
('FirstName4','LastName4', '0912787216', 'student4@gmail.com'),
('FirstName5','LastName5', '0823283718', 'student5@gmail.com')
GO