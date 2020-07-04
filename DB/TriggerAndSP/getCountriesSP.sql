USE CoTecDB

CREATE PROCEDURE getCountriesProcedure
AS
	SELECT C.Name
	FROM Countries as C