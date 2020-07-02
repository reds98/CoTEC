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
    public class SanityMeasurementsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/SanityMeasurements
        public IQueryable<SanityMeasurement> GetSanityMeasurements()
        {
            return db.SanityMeasurements;
        }

        // GET: api/SanityMeasurements/5
        [ResponseType(typeof(SanityMeasurement))]
        public IHttpActionResult GetSanityMeasurement(int id)
        {
            SanityMeasurement sanityMeasurement = db.SanityMeasurements.Find(id);
            if (sanityMeasurement == null)
            {
                return NotFound();
            }

            return Ok(sanityMeasurement);
        }

        // PUT: api/SanityMeasurements/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSanityMeasurement(int id, SanityMeasurement sanityMeasurement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != sanityMeasurement.Id)
            {
                return BadRequest();
            }

            db.Entry(sanityMeasurement).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!SanityMeasurementExists(id))
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

        // POST: api/SanityMeasurements
        [ResponseType(typeof(SanityMeasurement))]
        public IHttpActionResult PostSanityMeasurement(SanityMeasurement sanityMeasurement)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.SanityMeasurements.Add(sanityMeasurement);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (SanityMeasurementExists(sanityMeasurement.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = sanityMeasurement.Id }, sanityMeasurement);
        }

        // DELETE: api/SanityMeasurements/5
        [ResponseType(typeof(SanityMeasurement))]
        public IHttpActionResult DeleteSanityMeasurement(int id)
        {
            SanityMeasurement sanityMeasurement = db.SanityMeasurements.Find(id);
            if (sanityMeasurement == null)
            {
                return NotFound();
            }

            db.SanityMeasurements.Remove(sanityMeasurement);
            db.SaveChanges();

            return Ok(sanityMeasurement);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool SanityMeasurementExists(int id)
        {
            return db.SanityMeasurements.Count(e => e.Id == id) > 0;
        }
    }
}