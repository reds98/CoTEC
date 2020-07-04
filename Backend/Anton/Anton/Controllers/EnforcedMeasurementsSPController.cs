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
    public class EnforcedMeasurementsSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/EnforcedMeasurements
        public IList<EnforcedMeasurementsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<EnforcedMeasurementsSP>("getEnforcedMeasurementsProcedure");


            // Sets values in list to be returned
            IList<EnforcedMeasurementsSP> list = new List<EnforcedMeasurementsSP>();

            foreach (EnforcedMeasurementsSP item in sp)
            {
                EnforcedMeasurementsSP PSP = new EnforcedMeasurementsSP();

                PSP.Id = item.Id;
                PSP.Country_Name = item.Country_Name;
                PSP.Name = item.Name;
                PSP.Start_Date = item.Start_Date;
                PSP.End_Date = item.End_Date;
                PSP.MeasurementId = item.MeasurementId;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/EnforcedMeasurements/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/EnforcedMeasurements/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutEnforcedMeasurement(int id, EnforcedMeasurements enforcedMeasurement)
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
        [ResponseType(typeof(EnforcedMeasurements))]
        public IHttpActionResult PostEnforcedMeasurement(EnforcedMeasurements enforcedMeasurement)
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
        [ResponseType(typeof(EnforcedMeasurements))]
        public IHttpActionResult DeleteEnforcedMeasurement(int id)
        {
            System.Diagnostics.Debug.Write("ESTA ES LA ID");
            System.Diagnostics.Debug.Write(id);
            EnforcedMeasurements enforcedMeasurement = db.EnforcedMeasurements.Find(id);
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
