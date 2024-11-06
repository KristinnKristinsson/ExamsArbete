CREATE PROCEDURE [dbo].[InsertCheck]
	@CheckProducerId_fk int,
	@DateOfCheck Date
AS
	BEGIN
		SET @DateOfCheck = GETDATE()
		Insert into [dbo].[CheckDone] (CheckProducerId_fk, DateOfCheck)
		values  (@CheckProducerId_fk, @DateOfCheck);
	END
