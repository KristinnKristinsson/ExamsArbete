CREATE PROCEDURE [dbo].[GetProducerProductionCategoryArea]

	@ProducerId int
AS
	BEGIN
		select [dbo].[Producer].[ProducerId], [dbo].[Producer].[FName], 
		[dbo].[Producer].[LName],  
		[dbo].[Production].[TypeOfProduction], [dbo].[Category].[CategoryName], 
		[dbo].[Area].[AreaName], [dbo].[Area].[AreaCode] 
		 
		from dbo.[Producer]
		INNER join dbo.[Production] on [Producer].ProductionId_fk = [Production].ProductionId
		LEFT join dbo.[Category] on [Production].CategoryId_fk = [Category].CategoryId
		LEFT join dbo.[Area] on [Producer].AreaId_fk = [Area].AreaId
		where ProducerId = @ProducerId;
	END

