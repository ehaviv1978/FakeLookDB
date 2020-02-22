CREATE PROCEDURE [dbo].[addUser]
	@firstName varchar(50),
	@lastName varchar(50),
	@password varchar(30),
	@birthDate date,
	@address varchar(50) = null,
	@job varchar(50) = null,
	@picture varchar(MAX) = null,
	@email varchar(100)
AS
BEGIN
    INSERT INTO 
		Users (firstName, lastName,password,birthDate,job,address,dateJoined,picture,email) 
	VALUES 
		(@firstName, @lastName,@password,@birthDate,@job,@address,CURRENT_TIMESTAMP,@picture,@email)
END