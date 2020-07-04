USE CoTecDB

CREATE PROCEDURE getTotalAccumulated
AS
	SELECT SUM(IIF(E.Status_Event = 'Activo', 1, 0)) AS ACTIVE, 
	SUM(IIF(E.Status_Event = 'Recuperado', 1, 0)) AS RECOVERED,
	SUM(IIF(E.Status_Event = 'Muerto', 1, 0)) AS DEAD,
	SUM(IIF(E.Status_Event = 'Recuperado', 1, 0) + IIF(E.Status_Event = 'Muerto', 1, 0) + IIF(E.Status_Event = 'Activo', 1, 0)) AS INFECTED
	FROM Events as E


EXEC getTotalAccumulated