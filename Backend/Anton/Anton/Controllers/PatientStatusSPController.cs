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
    public class PatientStatusSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/PatientStatusSP
        public IList<PatientStatusSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<PatientStatusSP>("getPacientStatusProcedure");


            IList<PatientStatusSP> list = new List<PatientStatusSP>();

            // Sets values in list to be returned
            foreach (PatientStatusSP item in sp)
            {
                PatientStatusSP PSP = new PatientStatusSP();

                PSP.Name = item.Name;
                list.Add(PSP);

            }
            return list;
        }

            // GET: api/PatientStatusSP/5
            public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Patient_Status/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPatient_Status(string id, Patient_Status patient_Status)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != patient_Status.Name)
            {
                return BadRequest();
            }

            db.Entry(patient_Status).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Patient_StatusExists(id))
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

        // POST: api/Patient_Status
        [ResponseType(typeof(Patient_Status))]
        public IHttpActionResult PostPatient_Status(Patient_Status patient_Status)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Patient_Status.Add(patient_Status);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (Patient_StatusExists(patient_Status.Name))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = patient_Status.Name }, patient_Status);
        }

        // DELETE: api/Patient_Status/5
        [ResponseType(typeof(Patient_Status))]
        public IHttpActionResult DeletePatient_Status(string id)
        {
            Patient_Status patient_Status = db.Patient_Status.Find(id);
            if (patient_Status == null)
            {
                return NotFound();
            }

            db.Patient_Status.Remove(patient_Status);
            db.SaveChanges();

            return Ok(patient_Status);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Patient_StatusExists(string id)
        {
            return db.Patient_Status.Count(e => e.Name == id) > 0;
        }
    }
}
