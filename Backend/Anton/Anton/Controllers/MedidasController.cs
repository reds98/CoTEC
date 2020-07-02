using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Anton.Models;

namespace Anton.Controllers
{
    public class MedidasController : ApiController
    {
        
        private CoTecDBEntities db = new CoTecDBEntities();
        // GET: api/Medidas

        public Medidas[] Get()// ESTE DEVULEVE TODAS LES MEDIDAS CON EL FORMATO ESTABLECIDO DE TODOS LOS PAISES
        {
            IList<Medidas> Medidas = new List<Medidas>();
            var medidasForzadas = from enforcedMeasurement in db.EnforcedMeasurements select enforcedMeasurement;
            foreach (EnforcedMeasurement medidaForzada in medidasForzadas)
            {
                Medidas Medida = new Medidas();
                Medida.country = medidaForzada.Country_Name;
                Medida.date = medidaForzada.Start_Date;
                Medida.description = db.SanityMeasurements.Find(medidaForzada.Measurement_Id).Description;
                Medida.name = db.SanityMeasurements.Find(medidaForzada.Measurement_Id).Name;
                Medidas.Add(Medida);
            
            }
            return Medidas.ToArray();
        }



        // GET: api/Medidas/5
        [Route("api/Medidas/{pais}/{fecha}")]
        public Medidas[] Get(string  pais, string fecha)
        {
            IList<Medidas> Medidas = new List<Medidas>();
            var medidasForzadas = from enforcedMeasurement in db.EnforcedMeasurements select enforcedMeasurement;
            DateTime date = DateTime.Parse(fecha);
            DateTime endDate = date.AddDays(7);
            foreach (EnforcedMeasurement medidaForzada in medidasForzadas)
            {
                if (medidaForzada.Country_Name==pais) {

                    if (medidaForzada.Start_Date > date & medidaForzada.Start_Date<endDate) {
                        Medidas Medida = new Medidas();
                        Medida.country = medidaForzada.Country_Name;
                        Medida.date = medidaForzada.Start_Date;
                        Medida.description = db.SanityMeasurements.Find(medidaForzada.Measurement_Id).Description;
                        Medida.name = db.SanityMeasurements.Find(medidaForzada.Measurement_Id).Name;
                        Medidas.Add(Medida);
                    }
                    
                }
                

            }
            return Medidas.ToArray();
        }

 

        // POST: api/Medidas
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Medidas/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/Medidas/5
        public void Delete(int id)
        {
        }
    }
}
