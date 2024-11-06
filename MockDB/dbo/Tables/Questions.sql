CREATE TABLE [dbo].[Questions]
(
	[QuestionsId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Question] VARCHAR(250) NOT NULL, 
    [ProductionPrimary] INT NULL, 
    [ProductionSecondary] INT NULL, 
    [ProductionTertiary] INT NULL, 
    CONSTRAINT [FK_Questions_ToTable] FOREIGN KEY ([ProductionPrimary]) REFERENCES [Category]([CategoryId]), 
    CONSTRAINT [FK_Questions_ToTable_1] FOREIGN KEY ([ProductionSecondary]) REFERENCES [Category]([CategoryId]), 
    CONSTRAINT [FK_Questions_ToTable_2] FOREIGN KEY ([ProductionTertiary]) REFERENCES [Category]([CategoryId])
)

GO
