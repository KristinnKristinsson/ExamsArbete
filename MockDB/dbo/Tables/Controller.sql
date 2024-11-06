CREATE TABLE [dbo].[Controller]
(
	[ControllerId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ControllerFName] VARCHAR(50) NOT NULL, 
    [ControllerLName] VARCHAR(50) NOT NULL, 
    [AreaId_fk] INT NOT NULL, 
    CONSTRAINT [FK_Controller_ToTable] FOREIGN KEY ([AreaId_fk]) REFERENCES [Area]([AreaId])
)
