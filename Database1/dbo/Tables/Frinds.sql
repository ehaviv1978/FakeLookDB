CREATE TABLE [dbo].[Frinds] (
    [userId1]  INT NOT NULL,
    [userId2]  INT NOT NULL,
    [followUser1]  BIT CONSTRAINT [DF_Frinds_1Follow] DEFAULT ((1)) NOT NULL,
    [followUser2] BIT CONSTRAINT [DF_Frinds_2Folllow] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Frinds] PRIMARY KEY CLUSTERED ([userId1], [userId2]),
    CONSTRAINT [FK_Frinds_Users] FOREIGN KEY ([userId1]) REFERENCES [dbo].[Users] ([userId]),
    CONSTRAINT [FK_Frinds_Users1] FOREIGN KEY ([userId2]) REFERENCES [dbo].[Users] ([userId])
);

