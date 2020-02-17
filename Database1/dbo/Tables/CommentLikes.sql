CREATE TABLE [dbo].[CommentLikes] (
    [UserId]    INT NOT NULL,
    [CommentId] INT NOT NULL,
    CONSTRAINT [PK_CommentLikes] PRIMARY KEY CLUSTERED ([CommentId], [UserId]),
    CONSTRAINT [FK_CommentLikes_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id]), 
    CONSTRAINT [FK_CommentLikes_Comments] FOREIGN KEY ([CommentId]) REFERENCES [dbo].[Comments]([Id]));

