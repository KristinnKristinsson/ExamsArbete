CREATE PROCEDURE [dbo].[GetProducer]
	@ProducerId int
AS
	BEGIN
		select * 
		from dbo.[Producer]
		where ProducerId = @ProducerId;
	END
