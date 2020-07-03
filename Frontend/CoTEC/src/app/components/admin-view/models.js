export const countryLocations = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Country_Name","FK":"countries"}
];
export const pathologies = [
    {"column":"Name","PK":1},
    {"column":"Symptoms"},
    {"column":"Description"},
    {"column":"Treatment"}
];
export const status = [
    {"column":"Name","PK":1}
];
export const hospitals = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"ICU_Capacity"},
    {"column":"Capacity"},
    {"column":"Manager_Name"},
    {"column":"Phone"},
    {"column":"Country_Name","FK":"countries"},
    {"column":"Region","FK":"countryLocations"}
];
export const sanity_measurements = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Description"}
];
export const enforced_measurements = [
    {"column":"Id", "PK": 1},
    {"column":"Name"},
    {"column":"Start_Date"},
    {"column":"End_Date"},
    {"column":"Country_Name","FK":"countries"},
    {"column":"MeasurementId","FK":"measures"}
];

export const medication = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Provider"}
];
