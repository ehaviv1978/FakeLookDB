CREATE TABLE [dbo].[PostLikes] (
    [userId] INT NOT NULL,
    [postId] INT NOT NULL,
    CONSTRAINT [FK_PostLikes_Posts] FOREIGN KEY ([postId]) REFERENCES [dbo].[Posts] ([postId]),
    CONSTRAINT [FK_PostLikes_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users] ([userId]), 
    CONSTRAINT [PK_PostLikes] PRIMARY KEY ([postId], [userId])
);

