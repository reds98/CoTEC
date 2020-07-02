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
    public class EnforcedMeasurementsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/EnforcedMeasurements
        public IQueryable<EnforcedMeasurement> GetEnforcedMeasurements()
        {
            return db.EnforcedMeasurements;
        }

        // GET: api/EnforcedMeasurements/5
        [ResponseType(typeof(string))]
        public IHttpActionResult GetEnforcedMeasurement(int id)
        {
            EnforcedMeasurement enforcedMeasurement = db.EnforcedMeasurements.Find(id);
            if (enforcedMeasurement == null)
            {
                return NotFound();
            }

            return Ok(enforcedMeasurement.Country_Name);
        }

        // PUT: api/EnforcedMeasurements/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutEnforcedMeasurement(int id, EnforcedMeasurement enforcedMeasurement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != enforcedMeasurement.Id)
            {
                return BadRequest();
            }

            db.Entry(enforcedMeasurement).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EnforcedMeasurementExists(id))
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

        // POST: api/EnforcedMeasurements
        [ResponseType(typeof(EnforcedMeasurement))]
        public IHttpActionResult PostEnforcedMeasurement(EnforcedMeasurement enforcedMeasurement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.EnforcedMeasurements.Add(enforcedMeasurement);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = enforcedMeasurement.Id }, enforcedMeasurement);
        }

        // DELETE: api/EnforcedMeasurements/5
        [ResponseType(typeof(EnforcedMeasurement))]
        public IHttpActionResult DeleteEnforcedMeasurement(int id)
        {
            EnforcedMeasurement enforcedMeasurement = db.EnforcedMeasurements.Find(id);
            if (enforcedMeasurement == null)
            {
                return NotFound();
            }

            db.EnforcedMeasurements.Remove(enforcedMeasurement);
            db.SaveChanges();

            return Ok(enforcedMeasurement);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool EnforcedMeasurementExists(int id)
        {
            return db.EnforcedMeasurements.Count(e => e.Id == id) > 0;
        }
    }
}