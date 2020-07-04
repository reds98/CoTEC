CREATE PROCEDURE getCountryMeasurementsProcedure @Country varchar(45), @Date Date
AS
	SELECT SM.Name, SM.Description
	FROM EnforcedMeasurements as EM
	INNER JOIN SanityMeasurements as SM ON SM.Id = EM.Measurement_Id
	WHERE EM.Country_Name = @Country
	GROUP BY SM.Name, SM.Description, EM.Start_Date, EM.End_Date
	HAVING @Date BETWEEN EM.Start_Date and EM.End_Date