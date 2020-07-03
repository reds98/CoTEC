interface IPatient {
  SSN: number;
  First_Name: string;
  Last_Name: string;
  Hospitalized: boolean;
  ICU: boolean;
  Age: number;
  Residence: string;
  Country_Birth: string;
  Status: string;
  Medication: string;
  Pathology: string;
  Hospital_Id: number;
}

export {
  IPatient
};
