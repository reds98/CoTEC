using Anton.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Anton.Controllers
{
    public class PatientsController : ApiController
    {
        // GET: api/Patients
        public IList<PatientsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<PatientsSP>("getPatientsProcedure");


            IList<PatientsSP> list = new List<PatientsSP>();

            PatientsSP PSP = new PatientsSP();
            foreach (PatientsSP item in sp)
            {

                PSP.First_Name = item.First_Name;
                PSP.Last_Name = item.Last_Name;
                PSP.SSN = item.SSN;
                PSP.Age = item.Age;
                PSP.Country_Birth = item.Country_Birth;
                PSP.Residence = item.Residence;
                PSP.Status = item.Status;
                PSP.Hospitalized = item.Hospitalized;
                PSP.ICU = item.ICU;
                PSP.Medication = item.Medication;
                PSP.Pathology = item.Pathology;
                list.Add(PSP);

                System.Diagnostics.Debug.WriteLine(string.Format("NAME: {0} LAST_NAME: {1} SSN: {2} AGE: {3}" +
                    "BIRTH_COUNTRY: {4} RESIDENCE: {5} STATUS: {6} HOSPITALIZED: {7} ICU: {8} MEDICATION: {9} PATHOLOGY: {10}",
                    item.First_Name, item.Last_Name,
                    item.SSN, item.Age, item.Country_Birth, item.Residence, item.Status, item.Hospitalized,
                    item.ICU, item.Medication, item.Pathology));
            }
            return list;

        }

        // GET: api/Patients/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Patients
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Patients/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Patients/5
        public void Delete(int id)
        {
        }
    }
}
