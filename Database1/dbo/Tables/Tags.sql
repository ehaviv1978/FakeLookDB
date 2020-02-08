CREATE TABLE [dbo].[Tags] (
    [Id]        INT           IDENTITY (1, 1) NOT NULL,
    [UserId]    INT           NULL,
    [PostId]    INT           NULL,
    [CommentId] INT           NULL,
    [TagHush]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Tags_Comments] FOREIGN KEY ([CommentId]) REFERENCES [dbo].[Comments] ([Id]),
    CONSTRAINT [FK_Tags_Posts] FOREIGN KEY ([PostId]) REFERENCES [dbo].[Posts] ([Id]),
    CONSTRAINT [FK_Tags_Users] FOREIGN KEY ([UserId]) REFERENCES [dbo].[Users] ([Id])
);

