CREATE TABLE [dbo].[PostTags]
(
	[tagId] INT NOT NULL , 
    [postId] INT NOT NULL, 
    PRIMARY KEY ([tagId], [postId]), 
    CONSTRAINT [FK_PostTags_Tags] FOREIGN KEY ([tagId]) REFERENCES [dbo].[Tags]([tagId]), 
    CONSTRAINT [FK_PostTags_Posts] FOREIGN KEY ([postId]) REFERENCES [dbo].[Posts]([postId])
)
