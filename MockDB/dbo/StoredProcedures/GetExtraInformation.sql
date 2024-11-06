CREATE PROCEDURE [dbo].[GetExtraInformation]
	
	@ProductionId int
	
AS
	
	BEGIN
		SELECT * FROM [dbo].[ExtraInformation]
		WHERE @ProductionId = [dbo].[ExtraInformation].[ProductionId_fk2]
	END

