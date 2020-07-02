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
    public class Hospital_PatientsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Hospital_Patients
        public IQueryable<Hospital_Patients> GetHospital_Patients()
        {
            return db.Hospital_Patients;
        }

        // GET: api/Hospital_Patients/5
        [ResponseType(typeof(Hospital_Patients))]
        public IHttpActionResult GetHospital_Patients(int id)
        {
            Hospital_Patients hospital_Patients = db.Hospital_Patients.Find(id);
            if (hospital_Patients == null)
            {
                return NotFound();
            }

            return Ok(hospital_Patients);
        }

        // PUT: api/Hospital_Patients/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHospital_Patients(int id, Hospital_Patients hospital_Patients)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hospital_Patients.Id)
            {
                return BadRequest();
            }

            db.Entry(hospital_Patients).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Hospital_PatientsExists(id))
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

        // POST: api/Hospital_Patients
        [ResponseType(typeof(Hospital_Patients))]
        public IHttpActionResult PostHospital_Patients(Hospital_Patients hospital_Patients)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Hospital_Patients.Add(hospital_Patients);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = hospital_Patients.Id }, hospital_Patients);
        }

        // DELETE: api/Hospital_Patients/5
        [ResponseType(typeof(Hospital_Patients))]
        public IHttpActionResult DeleteHospital_Patients(int id)
        {
            Hospital_Patients hospital_Patients = db.Hospital_Patients.Find(id);
            if (hospital_Patients == null)
            {
                return NotFound();
            }

            db.Hospital_Patients.Remove(hospital_Patients);
            db.SaveChanges();

            return Ok(hospital_Patients);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Hospital_PatientsExists(int id)
        {
            return db.Hospital_Patients.Count(e => e.Id == id) > 0;
        }
    }
}