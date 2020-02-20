CREATE TABLE [dbo].[Posts] (
    [postId]          INT               IDENTITY (1, 1) NOT NULL,
    [picture]       VARCHAR(MAX)    NULL,
    [userId]      INT               NOT NULL,
    [description] NVARCHAR (200)    NULL,
    [location]    [sys].[geography] NOT NULL,
    [timePosted]  DATETIME          NOT NULL,
    CONSTRAINT [PK_PostsNew] PRIMARY KEY CLUSTERED ([postId] ASC),
    CONSTRAINT [FK_Posts_Users] FOREIGN KEY ([userId]) REFERENCES [dbo].[Users] ([userId])
);

