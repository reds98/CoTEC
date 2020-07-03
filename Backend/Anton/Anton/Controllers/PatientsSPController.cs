using Anton.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Anton.Controllers
{
    public class PatientsSPController : ApiController
    {
        // GET: api/TestSP
        public IList<PatientsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<PatientsSP>("getPacientsProcedure");


            IList<PatientsSP> list = new List<PatientsSP>();

            foreach (PatientsSP item in sp)
            {
                PatientsSP PSP = new PatientsSP();

                PSP.SSN = item.SSN;
                PSP.First_Name = item.First_Name;
                PSP.Last_Name = item.Last_Name;
                PSP.Hospital_Id = PSP.Hospital_Id;
                PSP.Hospitalized = item.Hospitalized;
                PSP.ICU = item.ICU;
                PSP.Age = item.Age;
                PSP.Residence = item.Residence;
                PSP.Country_Birth = item.Country_Birth;
                PSP.Medication = item.Medication;
                PSP.Pathology = item.Pathology;
                PSP.Status = item.Status;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/PatientsSP/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/PatientsSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PatientsSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PatientsSP/5
        public void Delete(int id)
        {
        }
    }
}
