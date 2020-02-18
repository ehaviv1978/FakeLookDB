CREATE TABLE [dbo].[PostTagPerson]
(
	[userId] INT NOT NULL , 
    [postId] INT NOT NULL, 
    PRIMARY KEY ([postId], [userId]), 
    CONSTRAINT [FK_PostTagPerson_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users]([userId]), 
    CONSTRAINT [FK_PostTagPerson_Posts] FOREIGN KEY ([postId]) REFERENCES [dbo].[Posts]([postId])
)
