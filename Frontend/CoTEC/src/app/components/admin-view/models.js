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
    {"column":"Manager_name"},
    {"column":"Phone"},
    {"column":"Country_Name","FK":"countries"}
];
export const sanity_measurements = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Description"}
];
export const enforced_measurements = [
    {"column":"Id", "PK": 1},
    {"column":"Start_Date"},
    {"column":"End_Date"},
    {"column":"Country_Name","FK":"countries"},
    {"column":"Measurements_Id","FK":"measures"}
];

export const measures = [
  {"column":"Name","PK":1},
  {"column":"Date"},
  {"column":"Provider"},
  {"column":"Description"}
];

export const medication = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Provider"}
];
