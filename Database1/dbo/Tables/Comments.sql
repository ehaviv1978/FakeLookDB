CREATE TABLE [dbo].[Comments] (
    [commentId]     INT      IDENTITY (1, 1) NOT NULL,
    [userId] INT      NOT NULL,
    [postId] INT      NOT NULL,
    [timeCommented]   DATETIME NOT NULL,
    [commentContent] NVARCHAR(50) NOT NULL, 
    CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED ([commentId] ASC),
    CONSTRAINT [FK_Comments_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users] ([userId]), 
    CONSTRAINT [FK_Comments_ToTable] FOREIGN KEY ([postId]) REFERENCES [dbo].[Posts] ([postId])
);

