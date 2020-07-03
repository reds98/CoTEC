using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class HospitalsSPController : ApiController
    {
        // GET: api/HospitalsSP
        public IList<HospitalsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<HospitalsSP>("getHospitalsProcedure");


            IList<HospitalsSP> list = new List<HospitalsSP>();

            foreach (HospitalsSP item in sp)
            {
                HospitalsSP PSP = new HospitalsSP();

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

        // POST: api/HospitalsSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/HospitalsSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/HospitalsSP/5
        public void Delete(int id)
        {
        }
    }
}
