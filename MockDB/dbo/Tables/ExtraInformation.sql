CREATE TABLE [dbo].[ExtraInformation]
(
	[ExtraInformationId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ExtraInfo] VARCHAR(250) NULL, 
    [Tips] VARCHAR(250) NULL, 
    [ProductionId_fk2] INT NOT NULL, 
    [QuestionId_fk] INT NOT NULL, 
    CONSTRAINT [FK_ExtraInformation_ToTable] FOREIGN KEY ([ProductionId_fk2]) REFERENCES [Production]([ProductionId]), 
    CONSTRAINT [FK_ExtraInformation_ToTable_1] FOREIGN KEY ([QuestionId_fk]) REFERENCES [Questions]([QuestionsId])
)
