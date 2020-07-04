export const CountryLocations = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Country_Name","FK":"Countries"}
];
export const Pathologies = [
    {"column":"Name","PK":1},
    {"column":"Symptoms"},
    {"column":"Description"},
    {"column":"Treatment"}
];
export const PatientStatus = [
    {"column":"Name","PK":1}
];
export const Hospitals = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"ICU_Capacity"},
    {"column":"Capacity"},
    {"column":"Manager_Name"},
    {"column":"Phone"},
    {"column":"Country_Location_Id"},
    {"column":"Country_Name","FK":"Countries"},
    {"column":"Region","FK":"Regions"}
];
export const SanitaryMeasurements = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Description"}
];
export const EnforcedMeasurements = [
    {"column":"Id", "PK": 1},
    {"column":"Name"},
    {"column":"Start_Date"},
    {"column":"End_Date"},
    {"column":"Country_Name","FK":"Countries"},
    {"column":"MeasurementId","FK":"SanitaryMeasurements"}
];

export const Medication = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Provider"}
];
