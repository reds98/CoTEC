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
    public class Hospital_MedicationsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Hospital_Medications
        public IQueryable<Hospital_Medications> GetHospital_Medications()
        {
            return db.Hospital_Medications;
        }

        // GET: api/Hospital_Medications/5
        [ResponseType(typeof(Hospital_Medications))]
        public IHttpActionResult GetHospital_Medications(int id)
        {
            Hospital_Medications hospital_Medications = db.Hospital_Medications.Find(id);
            if (hospital_Medications == null)
            {
                return NotFound();
            }

            return Ok(hospital_Medications);
        }

        // PUT: api/Hospital_Medications/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHospital_Medications(int id, Hospital_Medications hospital_Medications)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hospital_Medications.Id)
            {
                return BadRequest();
            }

            db.Entry(hospital_Medications).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Hospital_MedicationsExists(id))
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

        // POST: api/Hospital_Medications
        [ResponseType(typeof(Hospital_Medications))]
        public IHttpActionResult PostHospital_Medications(Hospital_Medications hospital_Medications)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Hospital_Medications.Add(hospital_Medications);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = hospital_Medications.Id }, hospital_Medications);
        }

        // DELETE: api/Hospital_Medications/5
        [ResponseType(typeof(Hospital_Medications))]
        public IHttpActionResult DeleteHospital_Medications(int id)
        {
            Hospital_Medications hospital_Medications = db.Hospital_Medications.Find(id);
            if (hospital_Medications == null)
            {
                return NotFound();
            }

            db.Hospital_Medications.Remove(hospital_Medications);
            db.SaveChanges();

            return Ok(hospital_Medications);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Hospital_MedicationsExists(int id)
        {
            return db.Hospital_Medications.Count(e => e.Id == id) > 0;
        }
    }
}