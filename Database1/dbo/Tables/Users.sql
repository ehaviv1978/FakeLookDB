CREATE TABLE [dbo].[Users] (
    [userId]         INT            IDENTITY (1, 1) NOT NULL,
    [firstName]  NVARCHAR (50)  NOT NULL,
    [lastName]   NVARCHAR (50)  NOT NULL,
    [password]   NVARCHAR (30)  NOT NULL,
    [birthDate]        DATE            NOT NULL,
    [address]    NVARCHAR (50) NULL,
    [job]        NVARCHAR (50) NULL,
    [dateJoined] DATE       NOT NULL,
    [picture] VARCHAR(MAX) NULL, 
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([userId] ASC)
);

