CREATE TABLE [dbo].[CheckDone]
(
	[CheckId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DateOfCheck] DATETIME NOT NULL, 
    [CheckProducerId_fk] INT NOT NULL
        CONSTRAINT [FK_CheckDone_ToTable] FOREIGN KEY (CheckProducerId_fk) REFERENCES [Producer]([ProducerId])

)
