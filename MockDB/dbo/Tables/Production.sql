CREATE TABLE [dbo].[Production]
(
	[ProductionId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [TypeOfProduction] VARCHAR(50) NOT NULL, 
    [CategoryId_fk] INT NOT NULL, 
    CONSTRAINT [FK_Production_ToTable] FOREIGN KEY ([CategoryId_fk]) REFERENCES [Category]([CategoryId]) 
)
