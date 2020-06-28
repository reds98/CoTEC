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
    public class EventsController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/Events
        public IQueryable<Events> GetEvents()
        {
            return db.Events;
        }

        // GET: api/Events/5
        [ResponseType(typeof(Events))]
        public IHttpActionResult GetEvents(int id)
        {
            Events events = db.Events.Find(id);
            if (events == null)
            {
                return NotFound();
            }

            return Ok(events);
        }

        // PUT: api/Events/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutEvents(int id, Events events)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != events.Id)
            {
                return BadRequest();
            }

            db.Entry(events).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EventsExists(id))
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

        // POST: api/Events
        [ResponseType(typeof(Events))]
        public IHttpActionResult PostEvents(Events events)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Events.Add(events);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (EventsExists(events.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = events.Id }, events);
        }

        // DELETE: api/Events/5
        [ResponseType(typeof(Events))]
        public IHttpActionResult DeleteEvents(int id)
        {
            Events events = db.Events.Find(id);
            if (events == null)
            {
                return NotFound();
            }

            db.Events.Remove(events);
            db.SaveChanges();

            return Ok(events);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool EventsExists(int id)
        {
            return db.Events.Count(e => e.Id == id) > 0;
        }
    }
}