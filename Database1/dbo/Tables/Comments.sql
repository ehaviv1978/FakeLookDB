CREATE TABLE [dbo].[Comments] (
    [Id]     INT      IDENTITY (1, 1) NOT NULL,
    [UserId] INT      NOT NULL,
    [PostId] INT      NOT NULL,
    [Time]   DATETIME NOT NULL,
    CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Comments_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

