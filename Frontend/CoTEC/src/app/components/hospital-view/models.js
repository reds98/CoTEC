export const Patients = [
  {"column":"SSN","PK":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Hospital_Id"},
  {"column":"Hospitalized"},
  {"column":"ICU"},
  {"column":"Age"},
  {"column":"Medication"},
  {"column":"Pathology"},
  {"column":"Residence","FK":"Countries"},
  {"column":"Country_Birth","FK":"Countries"},
  {"column":"Status","FK":"PatientStatus"}
];


export const Contacted_Person = [
  {"column":"Id","PK":"Id"},
  {"column":"SSN"},
  {"column":"First_Name"},
  {"column":"Last_Name"},
  {"column":"Address"},
  {"column":"Country_Birth"},
  {"column":"Email"},
  {"column":"Age"},
  {"column":"Patient_SSN", "FK": "Patients"}
];
