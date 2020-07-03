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
    public class PathologiesSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/PathologiesSP
        public IList<PathologiesSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<PathologiesSP>("getPathologiesProcedure");


            IList<PathologiesSP> list = new List<PathologiesSP>();

            foreach (PathologiesSP item in sp)
            {
                PathologiesSP PSP = new PathologiesSP();

                PSP.Name = item.Name;
                PSP.Symptoms = item.Symptoms;
                PSP.Description = item.Description;
                PSP.Treatment = item.Treatment;

                list.Add(PSP);

            }
            return list;
    }

        // GET: api/Pathologies/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Pathologies/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutPathology(string id, Pathologies pathology)
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
        [ResponseType(typeof(Pathologies))]
        public IHttpActionResult PostPathology(Pathologies pathology)
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
        [ResponseType(typeof(Pathologies))]
        public IHttpActionResult DeletePathology(string id)
        {
            Pathologies pathology = db.Pathologies.Find(id);
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
