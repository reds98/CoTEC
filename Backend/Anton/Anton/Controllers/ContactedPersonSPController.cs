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
    public class ContactedPersonSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();
        // GET: api/ContactedPersonSP
        public IList<ContactedPersonSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<ContactedPersonSP>("getContactedPersonProcedure");


            IList<ContactedPersonSP> list = new List<ContactedPersonSP>();

            foreach (ContactedPersonSP item in sp)
            {
                ContactedPersonSP PSP = new ContactedPersonSP();

                // Sets values in list to be returned
                PSP.First_Name = item.First_Name;
                PSP.Last_Name = item.Last_Name;
                PSP.SSN = item.SSN;
                PSP.Age = item.Age;
                PSP.Country_Birth = item.Country_Birth;
                PSP.Email = item.Email;
                PSP.Address = item.Address;
                PSP.Id = item.Id;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/ContactedPersonSP/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Contacted_Person/5 
        [ResponseType(typeof(void))]
        public IHttpActionResult PutContacted_Person(int id, Contacted_Person contacted_Person)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != contacted_Person.Id)
            {
                return BadRequest();
            }

            db.Entry(contacted_Person).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Contacted_PersonExists(id))
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

        // POST: api/Contacted_Person 
        [ResponseType(typeof(Contacted_Person))]
        public IHttpActionResult PostContacted_Person(Contacted_Person contacted_Person)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Contacted_Person.Add(contacted_Person);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = contacted_Person.Id }, contacted_Person);
        }

        // DELETE: api/Contacted_Person/5 
        [ResponseType(typeof(Contacted_Person))]
        public IHttpActionResult DeleteContacted_Person(int id)
        {
            Contacted_Person contacted_Person = db.Contacted_Person.Find(id);
            if (contacted_Person == null)
            {
                return NotFound();
            }

            db.Contacted_Person.Remove(contacted_Person);
            db.SaveChanges();

            return Ok(contacted_Person);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool Contacted_PersonExists(int id)
        {
            return db.Contacted_Person.Count(e => e.Id == id) > 0;
        }
    }
}
