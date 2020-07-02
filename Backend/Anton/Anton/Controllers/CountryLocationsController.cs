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
    public class CountryLocationsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/CountryLocations
        public IQueryable<CountryLocation> GetCountryLocations()
        {
            return db.CountryLocations;
        }

        // GET: api/CountryLocations/5
        [ResponseType(typeof(CountryLocation))]
        public IHttpActionResult GetCountryLocation(int id)
        {
            CountryLocation countryLocation = db.CountryLocations.Find(id);
            if (countryLocation == null)
            {
                return NotFound();
            }

            return Ok(countryLocation);
        }

        // PUT: api/CountryLocations/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutCountryLocation(int id, CountryLocation countryLocation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != countryLocation.Id)
            {
                return BadRequest();
            }

            db.Entry(countryLocation).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CountryLocationExists(id))
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

        // POST: api/CountryLocations
        [ResponseType(typeof(CountryLocation))]
        public IHttpActionResult PostCountryLocation(CountryLocation countryLocation)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.CountryLocations.Add(countryLocation);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = countryLocation.Id }, countryLocation);
        }

        // DELETE: api/CountryLocations/5
        [ResponseType(typeof(CountryLocation))]
        public IHttpActionResult DeleteCountryLocation(int id)
        {
            CountryLocation countryLocation = db.CountryLocations.Find(id);
            if (countryLocation == null)
            {
                return NotFound();
            }

            db.CountryLocations.Remove(countryLocation);
            db.SaveChanges();

            return Ok(countryLocation);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CountryLocationExists(int id)
        {
            return db.CountryLocations.Count(e => e.Id == id) > 0;
        }
    }
}