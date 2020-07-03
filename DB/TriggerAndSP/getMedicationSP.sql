CREATE PROCEDURE getMedicationProcedure
AS
	SELECT M.Name, M.Provider
	FROM Medications as M