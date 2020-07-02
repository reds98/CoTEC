using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Anton.Models;

namespace Anton.Controllers
{
    public class Patient_MedicationsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Patient_Medications
        public IQueryable<Patient_Medications> GetPatient_Medications()
        {
            return db.Patient_Medications;
        }

        // GET: api/Patient_Medications/5
        [ResponseType(typeof(Patient_Medications))]
        public IHttpActionResult GetPatient_Medications(int id)
        {
            Patient_Medications patient_Medications = db.Patient_Medications.Find(id);
            if (patient_Medications == null)
            {
                return NotFound();
            }

            return Ok(patient_Medications);
        }

        // PUT: api/Patient_Medications/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPatient_Medications(int id, Patient_Medications patient_Medications)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != patient_Medications.Id)
            {
                return BadRequest();
            }

            db.Entry(patient_Medications).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Patient_MedicationsExists(id))
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

        // POST: api/Patient_Medications
        [ResponseType(typeof(Patient_Medications))]
        public IHttpActionResult PostPatient_Medications(Patient_Medications patient_Medications)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Patient_Medications.Add(patient_Medications);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = patient_Medications.Id }, patient_Medications);
        }

        // DELETE: api/Patient_Medications/5
        [ResponseType(typeof(Patient_Medications))]
        public IHttpActionResult DeletePatient_Medications(int id)
        {
            Patient_Medications patient_Medications = db.Patient_Medications.Find(id);
            if (patient_Medications == null)
            {
                return NotFound();
            }

            db.Patient_Medications.Remove(patient_Medications);
            db.SaveChanges();

            return Ok(patient_Medications);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Patient_MedicationsExists(int id)
        {
            return db.Patient_Medications.Count(e => e.Id == id) > 0;
        }
    }
}