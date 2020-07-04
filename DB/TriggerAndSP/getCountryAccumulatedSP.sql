CREATE PROCEDURE getCountryAccumulatedProcedure @Country varchar (45)
AS
	SELECT P.Residence,	SUM(IIF(P.Status = 'Activo', 1, 0)) AS ACTIVE,
	SUM(IIF(P.Status = 'Recuperado', 1, 0)) AS RECOVERED,
	SUM(IIF(P.Status = 'Muerto', 1, 0)) AS DEAD,
	SUM(IIF(P.Status = 'Recuperado', 1, 0) + IIF(P.Status = 'Muerto', 1, 0) + IIF(P.Status = 'Activo', 1, 0)) AS INFECTED
	FROM Patients as P
	GROUP BY P.Residence
	HAVING P.Residence = @Country