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

    public class CountriesController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Countries
        public IQueryable<Countries> GetCountries()
        {
            foreach (Countries Countrie in db.Countries) {
                Console.WriteLine(string.Format("Name: {0}\\Continente: {1}",
                Countrie.Name, Countrie.Continent_Name));
                System.Diagnostics.Debug.WriteLine(Countrie.Name + "Shia " + "Feo");

            }
            return db.Countries;
        }

        // GET: api/Countries/5
        [ResponseType(typeof(Countries))]
        public IHttpActionResult GetCountries(string id)
        {
            Countries countries = db.Countries.Find(id);
            if (countries == null)
            {
                return NotFound();
            }

            return Ok(countries);
        }

        // PUT: api/Countries/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutCountries(string id, Countries countries)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != countries.Name)
            {
                return BadRequest();
            }

            db.Entry(countries).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CountriesExists(id))
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

        // POST: api/Countries
        [ResponseType(typeof(Countries))]
        public IHttpActionResult PostCountries(Countries countries)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Countries.Add(countries);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (CountriesExists(countries.Name))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = countries.Name }, countries);
        }

        // DELETE: api/Countries/5
        [ResponseType(typeof(Countries))]
        public IHttpActionResult DeleteCountries(string id)
        {
            Countries countries = db.Countries.Find(id);
            if (countries == null)
            {
                return NotFound();
            }

            db.Countries.Remove(countries);
            db.SaveChanges();

            return Ok(countries);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool CountriesExists(string id)
        {
            return db.Countries.Count(e => e.Name == id) > 0;
        }
    }
}