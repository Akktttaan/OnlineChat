CREATE TABLE dbo.Users(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	Name NVARCHAR(500) NOT NULL UNIQUE,
	ColorOfName NVARCHAR(500) )
CREATE TABLE dbo.Chats(
	Id INT NOT NULL PRIMARY KEY IDENTITY,
	SenderId INT NOT NULL FOREIGN KEY REFERENCES dbo.Users(Id) ON DELETE CASCADE,
	Content NVARCHAR(4000) NOT NULL,
	SendTime DATETIME NOT NULL)

SELECT * FROM dbo.Users

SELECT * FROM dbo.Chats


DELETE FROM dbo.Users
DBCC CHECKIDENT (Users,RESEED,0)

DELETE FROM dbo.Chats
DBCC CHECKIDENT (Chats,RESEED,0)
