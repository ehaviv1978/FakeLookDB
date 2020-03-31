CREATE TABLE [dbo].[CommentTags]
(
	[tagContent] NVARCHAR(50) NOT NULL, 
    [commentId] INT NOT NULL, 
    CONSTRAINT [PK_CommentTags] PRIMARY KEY CLUSTERED ([commentId], [tagContent]),
    CONSTRAINT [FK_CommentTags_Comments] FOREIGN KEY ([commentId]) REFERENCES [dbo].[Comments]([commentId])
)
