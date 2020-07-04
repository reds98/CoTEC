using Anton.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Anton.Controllers
{
    public class CountryAccumulatedSPController : ApiController
    {
        // GET: api/CountryAccumulatedSP

        [HttpGet]
        [Route("api/CountryAccumulatedSP/{country}")]
        public IList<CountryAccumulatedSP> Get(string country)
        {
            CoTecDBEntities db = new CoTecDBEntities();
            
            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<CountryAccumulatedSP>("EXEC getCountryAccumulatedProcedure @Country", new SqlParameter("@Country", country));


            IList<CountryAccumulatedSP> list = new List<CountryAccumulatedSP>();

            // Sets values in list to be returned
            foreach (CountryAccumulatedSP item in sp)
            {
                CountryAccumulatedSP PSP = new CountryAccumulatedSP();

                PSP.ACTIVE = item.ACTIVE;
                PSP.INFECTED = item.INFECTED;
                PSP.RECOVERED = item.RECOVERED;
                PSP.DEAD = item.DEAD;

                list.Add(PSP);

            }
            return list;

        }


        // POST: api/CountryAccumulatedSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/CountryAccumulatedSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/CountryAccumulatedSP/5
        public void Delete(int id)
        {
        }
    }
}
