CREATE PROCEDURE getHospitalsProcedure
AS
	SELECT H.Id, H.Name, H.Manager_Name, H.Phone, H.Capacity, H.ICU_Capacity, H.Country_Name, H.Country_Location_Id, CL.Name as Region
	FROM Hospitals as H
	INNER JOIN CountryLocations as CL ON CL.Id = H.Country_Location_Id