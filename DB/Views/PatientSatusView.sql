
USE CoTecDB
GO

CREATE VIEW PatientSatusView
AS
	SELECT P.Residence,
	SUM(IIF(P.Status = 'Activo', 1, 0)) AS ACTIVE,
	SUM(IIF(P.Status = 'Recuperado', 1, 0)) AS RECOVERED,
	SUM(IIF(P.Status = 'Muerto', 1, 0)) AS DEAD,
	SUM(IIF(P.Status = 'Contagiado', 1, 0)) AS INFECTED
	FROM  dbo.Patients as P
	GROUP BY P.Residence