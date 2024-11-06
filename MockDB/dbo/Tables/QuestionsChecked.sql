CREATE TABLE [dbo].[QuestionsChecked]
(
	[QuestionsCheckedId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CheckDone_fk] INT NOT NULL
        CONSTRAINT [FK_QuestionsChecked_ToTable] FOREIGN KEY ([CheckDone_fk]) REFERENCES [CheckDone]([CheckId]), 
    [IsDone] BIT NOT NULL

)
