using Anton.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
namespace Anton.Controllers
{
    public class PatientsSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();
        // GET: api/TestSP
        public IList<PatientsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<PatientsSP>("getPacientsProcedure");


            IList<PatientsSP> list = new List<PatientsSP>();

            // Sets values in list to be returned
            foreach (PatientsSP item in sp)
            {
                PatientsSP PSP = new PatientsSP();

                PSP.SSN = item.SSN;
                PSP.First_Name = item.First_Name;
                PSP.Last_Name = item.Last_Name;
                PSP.Hospital_Id = item.Hospital_Id;
                PSP.Hospitalized = item.Hospitalized;
                PSP.ICU = item.ICU;
                PSP.Age = item.Age;
                PSP.Residence = item.Residence;
                PSP.Country_Birth = item.Country_Birth;
                PSP.Medication = item.Medication;
                PSP.Pathology = item.Pathology;
                PSP.Status = item.Status;

                list.Add(PSP);



                System.Diagnostics.Debug.WriteLine(string.Format("NOMBRE: {0}", item.Hospital_Id));

            }
            return list;

        }

        // GET: api/PatientsSP/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Contacted_Person/5 
        [ResponseType(typeof(void))]
        public IHttpActionResult PutContacted_Person(int id, Patients contacted_Person)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != contacted_Person.SSN)
            {
                return BadRequest();
            }

            db.Entry(contacted_Person).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Contacted_PersonExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/Contacted_Person 
        [ResponseType(typeof(Contacted_Person))]
        public IHttpActionResult PostContacted_Person(Patients contacted_Person)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Patients.Add(contacted_Person);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = contacted_Person.SSN }, contacted_Person);
        }

        // DELETE: api/Contacted_Person/5 
        [ResponseType(typeof(Contacted_Person))]
        public IHttpActionResult DeleteContacted_Person(int id)
        {
            Patients contacted_Person = db.Patients.Find(id);
            if (contacted_Person == null)
            {
                return NotFound();
            }

            db.Patients.Remove(contacted_Person);
            db.SaveChanges();

            return Ok(contacted_Person);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Contacted_PersonExists(int id)
        {
            return db.Patients.Count(e => e.SSN == id) > 0;
        }
    }
}
