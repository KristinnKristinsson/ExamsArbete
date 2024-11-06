DECLARE
	@QuestionId int,
	@ProductionId int
Select
	@QuestionId = 0,
	@ProductionId = 1

	While @QuestionId <= 27 AND
	@ProductionId = 1
	BEGIN
		Select * from [dbo].[ExtraInformation]
		Where @ProductionId = [dbo].[ExtraInformation].[ProductionId_fk2]
		Set @QuestionId = @QuestionId +1


	END
