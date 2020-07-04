using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class CountriesSPController : ApiController
    {
        // GET: api/CountriesSP
        public IList<CountriesSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<CountriesSP>("getCountriesProcedure");


            IList<CountriesSP> list = new List<CountriesSP>();

            // Sets values in list to be returned
            foreach (CountriesSP item in sp)
            {
                CountriesSP PSP = new CountriesSP();

                PSP.Name = item.Name;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/CountriesSP/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/CountriesSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/CountriesSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/CountriesSP/5
        public void Delete(int id)
        {
        }
    }
}
