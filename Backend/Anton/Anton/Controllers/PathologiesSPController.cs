using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class PathologiesSPController : ApiController
    {
        // GET: api/PathologiesSP
        public IList<PathologiesSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            var sp = db.Database.SqlQuery<PathologiesSP>("getPathologiesProcedure");


            IList<PathologiesSP> list = new List<PathologiesSP>();

            foreach (PathologiesSP item in sp)
            {
                PathologiesSP PSP = new PathologiesSP();

                PSP.Name = item.Name;
                PSP.Symptoms = item.Symptoms;
                PSP.Description = item.Description;
                PSP.Treatment = item.Treatment;

                list.Add(PSP);

            }
            return list;
    }

        // GET: api/Pathologies/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/Pathologies
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Pathologies/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Pathologies/5
        public void Delete(int id)
        {
        }
    }
}
