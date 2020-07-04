
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