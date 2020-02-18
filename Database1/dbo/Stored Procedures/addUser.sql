CREATE PROCEDURE [dbo].[addUser]
	@firstName varchar(50),
	@lastName varchar(50),
	@password varchar(30),
	@birthDate date,
	@address varchar(50) = null,
	@job varchar(50) = null,
	@picture varbinary(MAX) = null
AS
BEGIN
    INSERT INTO 
		Users (firstName, lastName,password,birthDate,job,address,dateJoined,picture) 
	VALUES 
		(@firstName, @lastName,@password,@birthDate,@job,@address,CURRENT_TIMESTAMP,@picture)
END