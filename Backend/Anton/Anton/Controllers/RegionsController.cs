using Anton.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Anton.Controllers
{
    public class RegionsController : ApiController
    {
        // GET: api/Regions
        public IList<RegionsSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<RegionsSP>("getRegionsProcedure");


            IList<RegionsSP> list = new List<RegionsSP>();

            foreach (RegionsSP item in sp)
            {
                RegionsSP PSP = new RegionsSP();

                PSP.Name = item.Name;
                PSP.Country_Name = item.Country_Name;

                list.Add(PSP);

            }
            return list;
        }

        // GET: api/Regions/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Regions
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Regions/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Regions/5
        public void Delete(int id)
        {
        }
    }
}
