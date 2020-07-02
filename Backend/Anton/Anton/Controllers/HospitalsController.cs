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
    public class HospitalsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Hospitals
        public IQueryable<Hospital> GetHospitals()
        {
            return db.Hospitals;
        }

        // GET: api/Hospitals/5
        [ResponseType(typeof(Hospital))]
        public IHttpActionResult GetHospital(int id)
        {
            Hospital hospital = db.Hospitals.Find(id);
            if (hospital == null)
            {
                return NotFound();
            }

            return Ok(hospital);
        }

        // PUT: api/Hospitals/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHospital(int id, Hospital hospital)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hospital.Id)
            {
                return BadRequest();
            }

            db.Entry(hospital).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HospitalExists(id))
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

        // POST: api/Hospitals
        [ResponseType(typeof(Hospital))]
        public IHttpActionResult PostHospital(Hospital hospital)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Hospitals.Add(hospital);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (HospitalExists(hospital.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = hospital.Id }, hospital);
        }

        // DELETE: api/Hospitals/5
        [ResponseType(typeof(Hospital))]
        public IHttpActionResult DeleteHospital(int id)
        {
            Hospital hospital = db.Hospitals.Find(id);
            if (hospital == null)
            {
                return NotFound();
            }

            db.Hospitals.Remove(hospital);
            db.SaveChanges();

            return Ok(hospital);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool HospitalExists(int id)
        {
            return db.Hospitals.Count(e => e.Id == id) > 0;
        }
    }
}