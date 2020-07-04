USE CoTecDB

CREATE PROCEDURE getContactedPersonProcedure
AS
	SELECT CP.First_Name, CP.Last_Name, CP.SSN, CP.Age, CP.Country_Birth, CP.Address, CP.Email, CP.Patient_SSN
	FROM Contacted_Person as CP


