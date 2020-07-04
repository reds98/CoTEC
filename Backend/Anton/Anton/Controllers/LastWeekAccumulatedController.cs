using Anton.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Metadata.Edm;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Anton.Controllers
{
    public class LastWeekAccumulatedController : ApiController
    {
        public int active;
        public int dead;
        public int recovered;
        public int infected;
        public List<int> activeDay = new List<int>();
        public List<int> deadDay = new List<int>();
        public List<int> infectedDay = new List<int>();
        public List<int> recoveredDay = new List<int>();
        public List<DateTime> dates = new List<DateTime>();
        public Acumulado Get()
        {
            // GET: api/lastWeekAccumulated
            CoTecDBEntities db = new CoTecDBEntities();

        // Access stored procedure from data base
            var lWsp = db.Database.SqlQuery<LastWeekAccumulated>("getLastWeekAccumulated");
            var totalAccSp = db.Database.SqlQuery<TotalAccumulated>("getTotalAccumulated");


            Acumulado acumulado = new Acumulado();

            // Sets values in list to be returned
            foreach (LastWeekAccumulated item in lWsp)
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

            foreach (TotalAccumulated item in totalAccSp)
            {
                active = item.ACTIVE;
                recovered = item.RECOVERED;
                infected = item.INFECTED;
                dead = item.DEAD;
            }

            acumulado.ACTIVE = active;
            acumulado.RECOVERED = recovered;
            acumulado.INFECTED = infected;
            acumulado.DEAD = dead;

            return acumulado;

        }

// GET: api/lastWeekAccumulated/5
public string Get(int id)
        {
            return "value";
        }

        // POST: api/lastWeekAccumulated
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/lastWeekAccumulated/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/lastWeekAccumulated/5
        public void Delete(int id)
        {
        }
    }
}
