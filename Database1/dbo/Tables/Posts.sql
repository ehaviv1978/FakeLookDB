CREATE TABLE [dbo].[Posts] (
    [Id]          INT               IDENTITY (1, 1) NOT NULL,
    [Image]       VARBINARY(MAX)    NOT NULL,
    [UserId]      INT               NOT NULL,
    [Description] NVARCHAR (MAX)    NULL,
    [Location]    [sys].[geography] NOT NULL,
    [TimePosted]  DATETIME          NOT NULL,
    CONSTRAINT [PK_PostsNew] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Posts_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

