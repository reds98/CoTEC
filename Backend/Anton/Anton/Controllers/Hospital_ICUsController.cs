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
    public class Hospital_ICUsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Hospital_ICUs
        public IQueryable<Hospital_ICUs> GetHospital_ICUs()
        {
            return db.Hospital_ICUs;
        }

        // GET: api/Hospital_ICUs/5
        [ResponseType(typeof(Hospital_ICUs))]
        public IHttpActionResult GetHospital_ICUs(int id)
        {
            Hospital_ICUs hospital_ICUs = db.Hospital_ICUs.Find(id);
            if (hospital_ICUs == null)
            {
                return NotFound();
            }

            return Ok(hospital_ICUs);
        }

        // PUT: api/Hospital_ICUs/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHospital_ICUs(int id, Hospital_ICUs hospital_ICUs)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hospital_ICUs.Id)
            {
                return BadRequest();
            }

            db.Entry(hospital_ICUs).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Hospital_ICUsExists(id))
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

        // POST: api/Hospital_ICUs
        [ResponseType(typeof(Hospital_ICUs))]
        public IHttpActionResult PostHospital_ICUs(Hospital_ICUs hospital_ICUs)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Hospital_ICUs.Add(hospital_ICUs);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = hospital_ICUs.Id }, hospital_ICUs);
        }

        // DELETE: api/Hospital_ICUs/5
        [ResponseType(typeof(Hospital_ICUs))]
        public IHttpActionResult DeleteHospital_ICUs(int id)
        {
            Hospital_ICUs hospital_ICUs = db.Hospital_ICUs.Find(id);
            if (hospital_ICUs == null)
            {
                return NotFound();
            }

            db.Hospital_ICUs.Remove(hospital_ICUs);
            db.SaveChanges();

            return Ok(hospital_ICUs);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Hospital_ICUsExists(int id)
        {
            return db.Hospital_ICUs.Count(e => e.Id == id) > 0;
        }
    }
}