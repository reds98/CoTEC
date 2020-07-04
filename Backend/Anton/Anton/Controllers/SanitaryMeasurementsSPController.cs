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
    public class SanitaryMeasurementsSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/SanitaryMeasurements
        public IList<SanitaryMeasurementsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<SanitaryMeasurementsSP>("getSanitaryMeasurementsProcedure");


            IList<SanitaryMeasurementsSP> list = new List<SanitaryMeasurementsSP>();

            // Sets values in list to be returned
            foreach (SanitaryMeasurementsSP item in sp)
            {
                SanitaryMeasurementsSP PSP = new SanitaryMeasurementsSP();

                PSP.Id = item.Id;
                PSP.Name = item.Name;
                PSP.Description = item.Description;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/SanitaryMeasurements/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/SanityMeasurements/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutSanityMeasurement(int id, SanityMeasurements sanityMeasurement)
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
        [ResponseType(typeof(SanityMeasurements))]
        public IHttpActionResult PostSanityMeasurement(SanityMeasurements sanityMeasurement)
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
        [ResponseType(typeof(SanityMeasurements))]
        public IHttpActionResult DeleteSanityMeasurement(int id)
        {
            SanityMeasurements sanityMeasurement = db.SanityMeasurements.Find(id);
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
