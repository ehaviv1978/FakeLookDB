CREATE TABLE [dbo].[CommentLikes] (
    [Id]        INT IDENTITY (1, 1) NOT NULL,
    [UserId]    INT NOT NULL,
    [CommentId] INT NOT NULL,
    CONSTRAINT [PK_CommentLikes] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CommentLikes_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

