CREATE TABLE [dbo].[Frinds] (
    [Id]       INT IDENTITY (1, 1) NOT NULL,
    [UserID1]  INT NOT NULL,
    [UserID2]  INT NOT NULL,
    [1Follow]  BIT CONSTRAINT [DF_Frinds_1Follow] DEFAULT ((1)) NOT NULL,
    [2Folllow] BIT CONSTRAINT [DF_Frinds_2Folllow] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_Frinds] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Frinds_Users] FOREIGN KEY ([UserID1]) REFERENCES [dbo].[Users] ([Id]),
    CONSTRAINT [FK_Frinds_Users1] FOREIGN KEY ([UserID2]) REFERENCES [dbo].[Users] ([Id])
);

