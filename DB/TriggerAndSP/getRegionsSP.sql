CREATE PROCEDURE getRegionsProcedure
AS
	SELECT CL.Name, CL.Country_Name
	FROM 
	CountryLocations as CL