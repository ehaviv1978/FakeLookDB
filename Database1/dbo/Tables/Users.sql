CREATE TABLE [dbo].[Users] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]  NVARCHAR (50)  NOT NULL,
    [LastName]   NVARCHAR (50)  NOT NULL,
    [Password]   NVARCHAR (30)  NOT NULL,
    [Age]        INT            NULL,
    [Address]    NVARCHAR (MAX) NULL,
    [Job]        NVARCHAR (MAX) NULL,
    [DateJoined] DATETIME       NOT NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([Id] ASC)
);

