using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class EnforcedMeasurementsSPController : ApiController
    {
        // GET: api/EnforcedMeasurements
        public IList<EnforcedMeasurementsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<EnforcedMeasurementsSP>("getEnforcedMeasurementsProcedure");


            IList<EnforcedMeasurementsSP> list = new List<EnforcedMeasurementsSP>();

            foreach (EnforcedMeasurementsSP item in sp)
            {
                EnforcedMeasurementsSP PSP = new EnforcedMeasurementsSP();

                PSP.Id = item.Id;
                PSP.Country_Name = item.Country_Name;
                PSP.Name = item.Name;
                PSP.Start_Date = item.Start_Date;
                PSP.End_Date = item.End_Date;
                PSP.MeasurementId = item.MeasurementId;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/EnforcedMeasurements/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/EnforcedMeasurements
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/EnforcedMeasurements/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/EnforcedMeasurements/5
        public void Delete(int id)
        {
        }
    }
}
