CREATE TRIGGER DeleteEnforcedMeasurements ON EnforcedMeasurements
INSTEAD OF DELETE
AS
BEGIN
    IF @@rowcount > 0
    BEGIN

        RAISERROR( 'Cannot delete enforced measurements, may only change state to incative', 16, 2 )
        ROLLBACK
    END
END
GO