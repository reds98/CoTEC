using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class SanitaryMeasurementsSPController : ApiController
    {
        // GET: api/SanitaryMeasurements
        public IList<SanitaryMeasurementsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<SanitaryMeasurementsSP>("getSanitaryMeasurementsProcedure");


            IList<SanitaryMeasurementsSP> list = new List<SanitaryMeasurementsSP>();

            foreach (SanitaryMeasurementsSP item in sp)
            {
                SanitaryMeasurementsSP PSP = new SanitaryMeasurementsSP();

                PSP.Id = item.Id;
                PSP.Name = item.Name;
                PSP.Description = item.Description;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/SanitaryMeasurements/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/SanitaryMeasurements
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/SanitaryMeasurements/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/SanitaryMeasurements/5
        public void Delete(int id)
        {
        }
    }
}
