CREATE PROCEDURE [dbo].[GetAllProducers]
AS
	BEGIN
		select * 
		from dbo.[Producer];
	END
