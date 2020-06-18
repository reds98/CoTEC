export const country_location = [
    {"column":"Name","PK":1},
    {"column":"Country_Name","FK":"Countries"}
];
export const pathology = [
    {"column":"Name","PK":1},
    {"column":"Symptoms"},
    {"column":"Description"},
    {"column":"Treatment"}
];
export const patient_status = "F"; //!!!
export const hospital = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"ICU_Capacity"},
    {"column":"Capacity"},
    {"column":"Manager_name"},
    {"column":"Phone"},
    {"column":"Country_Name","FK":"Countries"}
];
export const sanity_measurements = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Description"}
];
export const enforced_measurements = [ //!!!
    {"column":"Start_Date"},
    {"column":"End_Date"},
    {"column":"Country_Name","FK":"Countries","PK":1},
    {"column":"Measurements_Id","FK":"EnforcedMeasurements","PK":1}
];
export const medication = [
    {"column":"Id","PK":1},
    {"column":"Name"},
    {"column":"Provider"}
];