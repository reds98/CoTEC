USE CoTecDB
GO

CREATE VIEW WeeklyCases
AS
	SELECT TOP (1000) P.Residence, E.Date,
	SUM(IIF(E.Status_Event = 'Muerto', 1, 0)) AS DEATHS,
	SUM(IIF(E.Status_Event = 'Activo', 1, 0)) AS NEW_CASES
	FROM Events as E
	INNER JOIN Patients AS P ON P.SSN = E.Patient_SSN
	INNER JOIN Countries C ON P.Residence = C.Name
	WHERE E.Date Between DATEADD(day, -7, GETDATE())  and CONVERT(VARCHAR(10), getdate(), 126)
	GROUP BY P.Residence, E.Date
	ORDER BY P.Residence



