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
    public class HospitalsSPController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();

        // GET: api/HospitalsSP
        public IList<HospitalsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<HospitalsSP>("getHospitalsProcedure");


            IList<HospitalsSP> list = new List<HospitalsSP>();

            foreach (HospitalsSP item in sp)
            {
                HospitalsSP PSP = new HospitalsSP();

                PSP.Id = item.Id;
                PSP.Name = item.Name;
                PSP.Manager_Name = item.Manager_Name;
                PSP.Phone = item.Phone;
                PSP.Capacity = item.Capacity;
                PSP.ICU_Capacity = item.ICU_Capacity;
                PSP.Country_Name = item.Country_Name;
                PSP.Region = item.Region;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/HospitalsSP/5
        public string Get(int id)
        {
            return "value";
        }

        // PUT: api/Hospitals/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHospital(int id, Hospitals hospital)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hospital.Id)
            {
                return BadRequest();
            }

            db.Entry(hospital).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HospitalExists(id))
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

        // POST: api/Hospitals
        [ResponseType(typeof(Hospitals))]
        public IHttpActionResult PostHospital(Hospitals hospital)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.Hospitals.Add(hospital);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (HospitalExists(hospital.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = hospital.Id }, hospital);
        }

        // DELETE: api/Hospitals/5
        [ResponseType(typeof(Hospitals))]
        public IHttpActionResult DeleteHospital(int id)
        {
            Hospitals hospital = db.Hospitals.Find(id);
            if (hospital == null)
            {
                return NotFound();
            }

            db.Hospitals.Remove(hospital);
            db.SaveChanges();

            return Ok(hospital);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool HospitalExists(int id)
        {
            return db.Hospitals.Count(e => e.Id == id) > 0;
        }
    }
}
