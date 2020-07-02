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
    public class Patient_PathologiesController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Patient_Pathologies
        public IQueryable<Patient_Pathologies> GetPatient_Pathologies()
        {
            return db.Patient_Pathologies;
        }

        // GET: api/Patient_Pathologies/5
        [ResponseType(typeof(Patient_Pathologies))]
        public IHttpActionResult GetPatient_Pathologies(int id)
        {
            Patient_Pathologies patient_Pathologies = db.Patient_Pathologies.Find(id);
            if (patient_Pathologies == null)
            {
                return NotFound();
            }

            return Ok(patient_Pathologies);
        }

        // PUT: api/Patient_Pathologies/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPatient_Pathologies(int id, Patient_Pathologies patient_Pathologies)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != patient_Pathologies.Id)
            {
                return BadRequest();
            }

            db.Entry(patient_Pathologies).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Patient_PathologiesExists(id))
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

        // POST: api/Patient_Pathologies
        [ResponseType(typeof(Patient_Pathologies))]
        public IHttpActionResult PostPatient_Pathologies(Patient_Pathologies patient_Pathologies)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Patient_Pathologies.Add(patient_Pathologies);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = patient_Pathologies.Id }, patient_Pathologies);
        }

        // DELETE: api/Patient_Pathologies/5
        [ResponseType(typeof(Patient_Pathologies))]
        public IHttpActionResult DeletePatient_Pathologies(int id)
        {
            Patient_Pathologies patient_Pathologies = db.Patient_Pathologies.Find(id);
            if (patient_Pathologies == null)
            {
                return NotFound();
            }

            db.Patient_Pathologies.Remove(patient_Pathologies);
            db.SaveChanges();

            return Ok(patient_Pathologies);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Patient_PathologiesExists(int id)
        {
            return db.Patient_Pathologies.Count(e => e.Id == id) > 0;
        }
    }
}