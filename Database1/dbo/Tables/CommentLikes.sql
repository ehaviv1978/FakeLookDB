CREATE TABLE [dbo].[CommentLikes] (
    [userId]    INT NOT NULL,
    [commentId] INT NOT NULL,
    CONSTRAINT [PK_CommentLikes] PRIMARY KEY CLUSTERED ([commentId], [userId]),
    CONSTRAINT [FK_CommentLikes_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users] ([userId]), 
    CONSTRAINT [FK_CommentLikes_Comments] FOREIGN KEY ([commentId]) REFERENCES [dbo].[Comments]([commentId]));

