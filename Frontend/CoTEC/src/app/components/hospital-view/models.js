export const Patients = [
  {"column":"SSN","PK":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Hospitalized"},
  {"column":"ICU"},
  {"column":"Age"},
  {"column":"Medication"},
  {"column":"Pathology"},
  {"column":"Residence","FK":"Countries"},
  {"column":"Country_Birth","FK":"Countries"},
  {"column":"Status","FK":"PatientStatus"}
];


export const contacts = [
  {"column":"SSN","PK":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Adress"},
  {"column":"Email"},
  {"column":"Age"},
  {"column":"Patient_SSN","PK":"SSN", "FK": "Patients"}
];
