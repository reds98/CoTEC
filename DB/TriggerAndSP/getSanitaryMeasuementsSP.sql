CREATE PROCEDURE getSanitaryMeasurementsProcedure
AS
	SELECT SM.Id, SM.Name, SM.Description
	FROM SanityMeasurements as SM