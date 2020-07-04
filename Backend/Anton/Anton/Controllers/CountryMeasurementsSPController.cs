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
    public class CountryMeasurementsSPController : ApiController
    {
        // GET: api/CountryMeasurementsSP
        [HttpGet]
        [Route("api/CountryMeasurementsSP/{country}/{date1}")]
        public IList<getCountryMeasurementsProcedure_Result> Get(string country, string date1)
        {
            CoTecDBEntities db = new CoTecDBEntities();

            DateTime date = DateTime.Parse(date1);
            // Access stored procedure from data base

            var sp = db.getCountryMeasurementsProcedure(country, date1);

            IList<getCountryMeasurementsProcedure_Result> list = new List<getCountryMeasurementsProcedure_Result>();

            // Sets values in list to be returned
            foreach (getCountryMeasurementsProcedure_Result item in sp)
            {
                getCountryMeasurementsProcedure_Result PSP = new getCountryMeasurementsProcedure_Result();

                PSP.Name = item.Name;
                PSP.Description = item.Description;

                list.Add(PSP);

            }
            return list;

        }

        // POST: api/CountryMeasurementsSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/CountryMeasurementsSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/CountryMeasurementsSP/5
        public void Delete(int id)
        {
        }
    }
}
