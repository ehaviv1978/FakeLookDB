CREATE TABLE [dbo].[CommentTagPerson]
(
	[userId] INT NOT NULL , 
    [commentId] INT NOT NULL, 
    PRIMARY KEY ([commentId], [userId]), 
    CONSTRAINT [FK_CommentTagPerson_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users]([userId]), 
    CONSTRAINT [FK_CommentTagPerson_Comments] FOREIGN KEY ([commentId]) REFERENCES [dbo].[Comments]([commentId])
)
