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
    public class LastWeekCountryAccumulatedController : ApiController
    {
        public List<int> activeDay = new List<int>();
        public List<int> deadDay = new List<int>();
        public List<int> infectedDay = new List<int>();
        public List<int> recoveredDay = new List<int>();
        public List<DateTime> dates = new List<DateTime>();




        // GET: api/LastWeekCountryAccumulated
        [HttpGet]
        [Route("api/LastWeekCountryAccumulated/{country}")]
        public LastWeekCountryAccumulated Get(string country)
        {
            CoTecDBEntities db = new CoTecDBEntities();

            LastWeekCountryAccumulated acumulado = new LastWeekCountryAccumulated();

            var sp = db.Database.SqlQuery<CountryAcumulado>("EXEC getLastWeekCountryAccumulated @Country", new SqlParameter("@Country", country));

            foreach (CountryAcumulado item in sp)
            {
                activeDay.Add(item.ACTIVE);
                deadDay.Add(item.DEAD);
                infectedDay.Add(item.INFECTED);
                recoveredDay.Add(item.RECOVERED);
                dates.Add((DateTime)item.Date);
            }

            acumulado.active_day = activeDay.ToArray();
            acumulado.dead_day = activeDay.ToArray();
            acumulado.recovered_day = activeDay.ToArray();
            acumulado.infected_day = activeDay.ToArray();
            acumulado.Dates = dates.ToArray();

            return acumulado;
        }

        // POST: api/LastWeekCountryAccumulated
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/LastWeekCountryAccumulated/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/LastWeekCountryAccumulated/5
        public void Delete(int id)
        {
        }
    }
}
