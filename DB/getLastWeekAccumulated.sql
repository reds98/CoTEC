USE CoTecDB

CREATE PROCEDURE getLastWeekAccumulated
AS
	SELECT E.Date, SUM(IIF(E.Status_Event = 'Activo', 1, 0)) AS ACTIVE, 
	SUM(IIF(E.Status_Event = 'Recuperado', 1, 0)) AS RECOVERED,
	SUM(IIF(E.Status_Event = 'Muerto', 1, 0)) AS DEAD,
	SUM(IIF(E.Status_Event = 'Recuperado', 1, 0) + IIF(E.Status_Event = 'Muerto', 1, 0) + IIF(E.Status_Event = 'Activo', 1, 0)) AS INFECTED
	FROM Events as E
	WHERE E.Date Between DATEADD(day, -7, GETDATE())  and CONVERT(VARCHAR(10), getdate(), 126)
	GROUP BY CONVERT(VARCHAR(10), E.Date, 126), E.Date


EXEC getLastWeekAccumulated