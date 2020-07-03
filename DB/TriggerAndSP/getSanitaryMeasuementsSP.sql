CREATE PROCEDURE getSanitaryMeasurementsProcedure
AS
	SELECT SM.Name, SM.Description
	FROM SanityMeasurements as SM