CREATE TABLE [dbo].[Users] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (50)  NOT NULL,
    [LastName]   NVARCHAR (50)  NOT NULL,
    [Password]   NVARCHAR (30)  NOT NULL,
    [BirthDate]        DATE            NULL,
    [Address]    NVARCHAR (MAX) NULL,
    [Job]        NVARCHAR (MAX) NULL,
    [DateJoined] DATE       NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);

