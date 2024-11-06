CREATE PROCEDURE [dbo].[GetChecks]
AS
	BEGIN
		select * 
		from dbo.[CheckDone];
	END
