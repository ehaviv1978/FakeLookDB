CREATE TABLE [dbo].[PostTags]
(
	[tagContent] NVARCHAR(50) NOT NULL , 
    [postId] INT NOT NULL, 
    CONSTRAINT [PK_PostTags] PRIMARY KEY CLUSTERED ([postId], [tagContent]),
    CONSTRAINT [FK_PostTags_Posts] FOREIGN KEY ([postId]) REFERENCES [dbo].[Posts]([postId])
)
