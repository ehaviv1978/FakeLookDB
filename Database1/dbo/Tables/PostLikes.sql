CREATE TABLE [dbo].[PostLikes] (
    [Id]     INT IDENTITY (1, 1) NOT NULL,
    [UserId] INT NOT NULL,
    [PostId] INT NOT NULL,
    CONSTRAINT [PK_Likes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_PostLikes_Posts] FOREIGN KEY ([PostId]) REFERENCES [dbo].[Posts] ([Id]),
    CONSTRAINT [FK_PostLikes_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

