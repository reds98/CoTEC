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
    public class MedicationSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();
        // GET: api/MedicationSP
        public IList<MedicationSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<MedicationSP>("getMedicationProcedure");


            IList<MedicationSP> list = new List<MedicationSP>();

            foreach (MedicationSP item in sp)
            {
                MedicationSP PSP = new MedicationSP();

                PSP.Id = item.Id;
                PSP.Name = item.Name;
                PSP.Provider = item.Provider;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/MedicationSP/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Medications/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutMedication(int id, Medications medication)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != medication.Id)
            {
                return BadRequest();
            }

            db.Entry(medication).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!MedicationExists(id))
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

        // POST: api/Medications
        [ResponseType(typeof(Medications))]
        public IHttpActionResult PostMedication(Medications medication)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Medications.Add(medication);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (MedicationExists(medication.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = medication.Id }, medication);
        }

        // DELETE: api/Medications/5
        [ResponseType(typeof(Medications))]
        public IHttpActionResult DeleteMedication(int id)
        {
            Medications medication = db.Medications.Find(id);
            if (medication == null)
            {
                return NotFound();
            }

            db.Medications.Remove(medication);
            db.SaveChanges();

            return Ok(medication);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool MedicationExists(int id)
        {
            return db.Medications.Count(e => e.Id == id) > 0;
        }
    }
}
