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
    public class Patient_StatusController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Patient_Status
        public IQueryable<Patient_Status> GetPatient_Status()
        {
            return db.Patient_Status;
        }

        // GET: api/Patient_Status/5
        [ResponseType(typeof(Patient_Status))]
        public IHttpActionResult GetPatient_Status(string id)
        {
            Patient_Status patient_Status = db.Patient_Status.Find(id);
            if (patient_Status == null)
            {
                return NotFound();
            }

            return Ok(patient_Status);
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