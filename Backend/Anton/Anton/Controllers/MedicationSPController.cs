using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class MedicationSPController : ApiController
    {
        // GET: api/MedicationSP
        public IList<MedicationSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<MedicationSP>("getMedicationProcedure");


            IList<MedicationSP> list = new List<MedicationSP>();

            foreach (MedicationSP item in sp)
            {
                MedicationSP PSP = new MedicationSP();

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

        // POST: api/MedicationSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/MedicationSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/MedicationSP/5
        public void Delete(int id)
        {
        }
    }
}
