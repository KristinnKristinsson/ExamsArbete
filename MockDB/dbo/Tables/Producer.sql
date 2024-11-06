CREATE TABLE [dbo].[Producer]
(
	[ProducerId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [FName] VARCHAR(50) NOT NULL, 
    [LName] VARCHAR(50) NOT NULL, 
    [ProductionId_fk] INT NOT NULL, 
    [AreaId_fk] INT NOT NULL, 
    CONSTRAINT [FK_Producer_ToTable] FOREIGN KEY ([ProductionId_fk]) REFERENCES [Production]([ProductionId]), 
    CONSTRAINT [FK_Producer_ToTable_1] FOREIGN KEY ([AreaId_fk]) REFERENCES [Area]([AreaId])
)
