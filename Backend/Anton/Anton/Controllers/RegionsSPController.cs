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
    public class RegionsSPController : ApiController
    {
        // GET: api/Regions
        private CoTecDBEntities db = new CoTecDBEntities();
        public IList<RegionsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<RegionsSP>("getRegionsProcedure");


            IList<RegionsSP> list = new List<RegionsSP>();

            foreach (RegionsSP item in sp)
            {
                RegionsSP PSP = new RegionsSP();

                PSP.Id = item.Id;
                PSP.Name = item.Name;
                PSP.Country_Name = item.Country_Name;

                list.Add(PSP);

            }
            return list;
        }

        // GET: api/Regions/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/CountryLocations/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutCountryLocation(int id, CountryLocations countryLocation)
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
        [ResponseType(typeof(CountryLocations))]
        public IHttpActionResult PostCountryLocation(CountryLocations countryLocation)
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
        [ResponseType(typeof(CountryLocations))]
        public IHttpActionResult DeleteCountryLocation(int id)
        {
            CountryLocations countryLocation = db.CountryLocations.Find(id);
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
