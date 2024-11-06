CREATE PROCEDURE [dbo].[GetQuestions_1]
AS
	BEGIN
		select [QuestionsId], [Question], [ProductionPrimary], [ProductionSecondary], [ProductionTertiary] 
		from dbo.[Questions];
	END
