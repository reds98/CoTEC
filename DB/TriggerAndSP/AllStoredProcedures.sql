

CREATE PROCEDURE getContactedPersonProcedure
AS
	SELECT CP.Id, CP.First_Name, CP.Last_Name, CP.SSN, CP.Age, CP.Country_Birth, CP.Address, CP.Email, CP.Patient_SSN
	FROM Contacted_Person as CP


CREATE PROCEDURE getCountriesProcedure
AS
	SELECT C.Name
	FROM Countries as C


CREATE PROCEDURE getEnforcedMeasurementsProcedure
AS
	SELECT EM.Id, .Country_Name, SM.Name, EM.Start_Date, EM.End_Date, SM.Id AS MeasurementId
	FROM EnforcedMeasurements as EM
	INNER JOIN SanityMeasurements as SM ON SM.Id = EM.Measurement_Id


CREATE PROCEDURE getHospitalsProcedure
AS
	SELECT H.Id, H.Name, H.Manager_Name, H.Phone, H.Capacity, H.ICU_Capacity, H.Country_Name, H.Country_Location_Id, CL.Name as Region
	FROM Hospitals as H
	INNER JOIN CountryLocations as CL ON CL.Id = H.Country_Location_Id


CREATE PROCEDURE getMedicationProcedure
AS
	SELECT M.Id, M.Name, M.Provider
	FROM Medications as M


CREATE PROCEDURE getPacientStatusProcedure
AS
	SELECT PS.Name
	FROM Patient_Status as PS


CREATE PROCEDURE getPathologiesProcedure
AS
	SELECT P.Name, P.Description, P.Symptoms, P.Treatment
	FROM Pathologies as P



CREATE PROCEDURE getPacientsProcedure
AS
	SELECT P.First_Name, P.Last_Name, P.SSN, P.Age, P.Country_Birth, P.Residence, P.Status, P.Hospital_Id, P.Hospitalized, P.ICU, M.Name AS Medication, Pt.Name AS Pathology
	FROM Patients as P
	INNER JOIN Patient_Medications as PM ON P.SSN = PM.Patient_SSN
	INNER JOIN Medications as M ON M.Id = PM.Medication_Id
	INNER JOIN Patient_Pathologies as PP ON P.SSN = PP.Patient_SSN
	INNER JOIN Pathologies as Pt ON Pt.Name = PP.Pathology_Name

	UNION
	SELECT P.First_Name, P.Last_Name, P.SSN, P.Age, P.Country_Birth, P.Residence, P.Status, P.Hospital_Id, P.Hospitalized, P.ICU, 'No tiene' AS Medication, 'No tiene' AS Pathology
	FROM Patients as P


CREATE PROCEDURE getRegionsProcedure
AS
	SELECT CL.Id, CL.Name, CL.Country_Name
	FROM 
	CountryLocations as CL


CREATE PROCEDURE getSanitaryMeasurementsProcedure
AS
	SELECT SM.Id, SM.Name, SM.Description
	FROM SanityMeasurements as SM
	
