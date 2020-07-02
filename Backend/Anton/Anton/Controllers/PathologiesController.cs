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
    public class PathologiesController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Pathologies
        public IQueryable<Pathology> GetPathologies()
        {
            return db.Pathologies;
        }

        // GET: api/Pathologies/5
        [ResponseType(typeof(Pathology))]
        public IHttpActionResult GetPathology(string id)
        {
            Pathology pathology = db.Pathologies.Find(id);
            if (pathology == null)
            {
                return NotFound();
            }

            return Ok(pathology);
        }

        // PUT: api/Pathologies/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPathology(string id, Pathology pathology)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != pathology.Name)
            {
                return BadRequest();
            }

            db.Entry(pathology).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!PathologyExists(id))
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

        // POST: api/Pathologies
        [ResponseType(typeof(Pathology))]
        public IHttpActionResult PostPathology(Pathology pathology)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Pathologies.Add(pathology);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (PathologyExists(pathology.Name))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = pathology.Name }, pathology);
        }

        // DELETE: api/Pathologies/5
        [ResponseType(typeof(Pathology))]
        public IHttpActionResult DeletePathology(string id)
        {
            Pathology pathology = db.Pathologies.Find(id);
            if (pathology == null)
            {
                return NotFound();
            }

            db.Pathologies.Remove(pathology);
            db.SaveChanges();

            return Ok(pathology);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool PathologyExists(string id)
        {
            return db.Pathologies.Count(e => e.Name == id) > 0;
        }
    }
}