CREATE PROCEDURE getMedicationProcedure
AS
	SELECT M.Id, SELECT M.Name, M.Provider
	FROM Medications as M