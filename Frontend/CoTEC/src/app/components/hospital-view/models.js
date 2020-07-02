export const patients = [
  {"column":"SSN","PK":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Hospitalized"},
  {"column":"ICU"},
  {"column":"Age"},
  {"column":"Medication"},
  {"column":"Pathology"},
  {"column":"Residence","FK":"countries"},
  {"column":"Country_Birth","FK":"countries"},
  {"column":"Hospital_Id","FK":"hospitals"},
  {"column":"Status","FK":"status"}
];


export const contacts = [
  {"column":"SSN","PK":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Adress"},
  {"column":"Email"},
  {"column":"Age"},
  {"column":"Patient_SSN","PK":"SSN", "FK": "patients"}
];
