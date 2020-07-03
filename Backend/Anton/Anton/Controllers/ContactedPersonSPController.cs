using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Anton.Models;

namespace Anton.Controllers
{
    public class ContactedPersonSPController : ApiController
    {
        // GET: api/ContactedPersonSP
        public IList<ContactedPersonSP> Get()
        {
            CoTecDBEntities db = new CoTecDBEntities();

            // Access stored procedure from data base
            var sp = db.Database.SqlQuery<ContactedPersonSP>("getContactedPersonProcedure");


            IList<ContactedPersonSP> list = new List<ContactedPersonSP>();

            foreach (ContactedPersonSP item in sp)
            {
                ContactedPersonSP PSP = new ContactedPersonSP();

                // Sets values in list to be returned
                PSP.First_Name = item.First_Name;
                PSP.Last_Name = item.Last_Name;
                PSP.SSN = item.SSN;
                PSP.Age = item.Age;
                PSP.Country_Birth = item.Country_Birth;
                PSP.Email = item.Email;
                PSP.Address = item.Address;

                list.Add(PSP);

            }
            return list;

        }

        // GET: api/ContactedPersonSP/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/ContactedPersonSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/ContactedPersonSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/ContactedPersonSP/5
        public void Delete(int id)
        {
        }
    }
}
