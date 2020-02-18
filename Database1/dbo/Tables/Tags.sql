CREATE TABLE [dbo].[Tags] (
    [tagId]        INT           IDENTITY (1, 1) NOT NULL,
    [tagContent]   NVARCHAR (50) NOT NULL, 
    CONSTRAINT [PK_Tags] PRIMARY KEY ([tagId])
);

