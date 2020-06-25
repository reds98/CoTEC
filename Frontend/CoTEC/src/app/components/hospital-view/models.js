export const patient = [
  {"column":"SSN","PK":1},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Hospitalized"},
  {"column":"ICU"},
  {"column":"Age"},
  {"column":"Residence","FK":"Countries"},
  {"column":"Country_Birth","FK":"Countries"},
  {"column":"Hospital_Id","FK":"Hospitals"},
  {"column":"Status","FK":"Patient_Status"}
];


export const lastContacts = [
  {"column":"SSN","PK":1},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Adress"},
  {"column":"Email"},
  {"column":"Age"},
  {"column":"Patient_SSN","PK":1, "FK": "Patients"}
];
