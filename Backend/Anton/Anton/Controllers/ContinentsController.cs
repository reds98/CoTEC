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
    public class ContinentsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Continents
        public IList<Continent> GetContinents()
        {
            IList<Continent> nombres = new List<Continent>();
            var continentes = from continents in db.Continents select continents;
            Continent cont = new Continent();
            foreach (Continents continente in continentes) {

                cont.Name = continente.Name;
                nombres.Add(cont);

                System.Diagnostics.Debug.WriteLine(string.Format("NOMBRE: {0}",continente.Name));
            }
            
            return nombres;
        }

        // GET: api/Continents/5
        [ResponseType(typeof(Continents))]
        public IHttpActionResult GetContinents(string id)
        {
            Continents continents = db.Continents.Find(id);
            if (continents == null)
            {
                return NotFound();
            }

            return Ok(continents);
        }

        // PUT: api/Continents/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutContinents(string id, Continents continents)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != continents.Name)
            {
                return BadRequest();
            }

            db.Entry(continents).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ContinentsExists(id))
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

        // POST: api/Continents
        [ResponseType(typeof(Continents))]
        public IHttpActionResult PostContinents(Continents continents)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Continents.Add(continents);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (ContinentsExists(continents.Name))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = continents.Name }, continents);
        }

        // DELETE: api/Continents/5
        [ResponseType(typeof(Continents))]
        public IHttpActionResult DeleteContinents(string id)
        {
            Continents continents = db.Continents.Find(id);
            if (continents == null)
            {
                return NotFound();
            }

            db.Continents.Remove(continents);
            db.SaveChanges();

            return Ok(continents);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool ContinentsExists(string id)
        {
            return db.Continents.Count(e => e.Name == id) > 0;
        }
    }
}