CREATE PROCEDURE [dbo].[GetQuestions]
	@ProducerId int
	
AS
	BEGIN
	
		select
		[dbo].[Producer].[ProducerId], 
		[dbo].[Producer].[FName], 
		[dbo].[Producer].[LName], 
		[dbo].[Producer].[ProductionId_fk], 
		[dbo].[Producer].[AreaId_fk], 
		[dbo].[Production].[ProductionId], 
		[dbo].[Production].[TypeOfProduction], 
		[dbo].[Production].[CategoryId_fk], 
		[x].[QuestionsId], [x].[Question], [x].[ProductionPrimary], [x].[ProductionSecondary], [x].[ProductionTertiary]

		from dbo.[Producer]
		INNER join dbo.[Production] on [Producer].ProductionId_fk = [Production].[ProductionId]
		
		Left JOIN [dbo].[Questions] x ON ((dbo.Production.[CategoryId_fk]= x.ProductionPrimary and [dbo].[Production].CategoryId_fk=1) 
		OR
		(dbo.Production.[CategoryId_fk]= x.ProductionSecondary and [dbo].[Production].CategoryId_fk=2) OR
		(dbo.Production.[CategoryId_fk]= x.ProductionTertiary and [dbo].[Production].CategoryId_fk=3))
		WHERE @ProducerId = [dbo].[Producer].[ProducerId]
	END