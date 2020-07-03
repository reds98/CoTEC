using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class PatientStatusSPController : ApiController
    {
        // GET: api/PatientStatusSP
        public IList<PatientStatusSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<PatientStatusSP>("getPatientStatusProcedure");


            IList<PatientStatusSP> list = new List<PatientStatusSP>();

            foreach (PatientStatusSP item in sp)
            {
                PatientStatusSP PSP = new PatientStatusSP();

                PSP.Name = item.Name;
                list.Add(PSP);

            }
            return list;
        }

            // GET: api/PatientStatusSP/5
            public string Get(int id)
        {
            return "value";
        }

        // POST: api/PatientStatusSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/PatientStatusSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/PatientStatusSP/5
        public void Delete(int id)
        {
        }
    }
}
