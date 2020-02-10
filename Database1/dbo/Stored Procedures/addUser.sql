CREATE PROCEDURE [dbo].[addUser]
	@FirstName varchar(50) = 'John',
	@LastName varchar(50) ='Doe',
	@Password varchar(50) = '1234',
	@BirthDate date = '2000-1-1',
	@Job varchar(MAX),
	@Address varchar(MAX)

AS
    INSERT INTO 
		Users (FirstName, LastName,Password,BirthDate,Job,Address,DateJoined) 
	VALUES 
		(@FirstName, @LastName,@Password,@BirthDate,@Job,@Address,CURRENT_TIMESTAMP)
return 0
