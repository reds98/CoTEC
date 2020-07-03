CREATE PROCEDURE getPathologiesProcedure
AS
	SELECT P.Name, P.Description, P.Symptoms, P.Treatment
	FROM Pathologies as P