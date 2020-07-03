CREATE PROCEDURE getEnforcedMeasurementsProcedure
AS
	SELECT EM.Country_Name, SM.Name, EM.Start_Date, EM.End_Date, SM.Id AS MeasurementId
	FROM EnforcedMeasurements as EM
	INNER JOIN SanityMeasurements as SM ON SM.Id = EM.Measurement_Id