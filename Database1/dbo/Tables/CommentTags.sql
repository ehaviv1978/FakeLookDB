CREATE TABLE [dbo].[CommentTags]
(
	[tagId] INT NOT NULL PRIMARY KEY, 
    [commentId] INT NOT NULL, 
    CONSTRAINT [FK_CommentTags_Tags] FOREIGN KEY ([tagId]) REFERENCES [dbo].[Tags]([tagId]), 
    CONSTRAINT [FK_CommentTags_Comments] FOREIGN KEY ([commentId]) REFERENCES [dbo].[Comments]([commentId])
)
