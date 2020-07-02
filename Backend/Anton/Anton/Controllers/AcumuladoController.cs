using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using Anton.Models;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;

namespace Anton.Controllers
{
    public class AcumuladoController : ApiController
    {
        private CoTecDBEntities db = new CoTecDBEntities();
        Acumulado acumulado = new Acumulado();
        IList<int> activosArr = new List<int>();
        IList<int> recuperadosArr = new List<int>();
        IList<int> muertosArr = new List<int>();
        IList<string> FechasArr = new List<string>();

        int activos = 0;
        int muertos = 0;
        int recuperados = 0;
        int contagiados = 0;

        // GET: api/Acumulado
        public Acumulado Get()
        {

            var lects = db.Database.SqlQuery<Patients>("get");


            var eventos = from events in db.Events select events;
            foreach (Events evento in eventos)
            {
                this.ingresarArr(evento);

                if (evento.Status_Event == "nuevo activo")
                {
                    activos=activos+1;
                    //System.Diagnostics.Debug.WriteLine("ES UN ACTIVO");

                }
                else if (evento.Status_Event == "nuevo recuperado")
                {
                    recuperados = recuperados + 1;
                    activos = activos - 1;
                    //System.Diagnostics.Debug.WriteLine("ES UN RECUPERADO");
                }
                else if (evento.Status_Event == "nuevo muerto")
                {
                    muertos = muertos + 1;
                    activos = activos - 1;
                    //System.Diagnostics.Debug.WriteLine("ES UN MUERTO");
                }

                

            }

            contagiados = activos + recuperados + muertos ;
            acumulado.active = activos;
            acumulado.dead = muertos;
            acumulado.recovered = recuperados;
            acumulado.infected = contagiados;
            acumulado.infected_day =null;
            acumulado.active_day = activosArr.ToArray();
            acumulado.recovered_day = recuperadosArr.ToArray();
            acumulado.dead_day = muertosArr.ToArray();
            acumulado.Dates = FechasArr.ToArray();
            System.Diagnostics.Debug.WriteLine(string.Format("ACTIVOS: {0} MUERTOS: {1} RECUPERADOS:{2} CONTAGIADOS:{3} "
                , activos,muertos,recuperados,contagiados));
            System.Diagnostics.Debug.WriteLine(string.Format("ACTIVOSARR: {0} FECHASARR: {1} "
               ,activosArr[0],FechasArr[0]));
            return acumulado;
            //return new string[] { "value1", "value2" };
        }

        // GET: api/Acumulado/5
        public Acumulado Get(string id)
        {
            return acumulado;
        }

        // POST: api/Acumulado
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/Acumulado/5
        public void Put(int id, [FromBody]string value)
        {
            
        }

        // DELETE: api/Acumulado/5
        public void Delete(int id)
        {
        }

        public void ingresarArr(Events evento) {
            if (evento.Status_Event == "nuevo activo") {


                System.Diagnostics.Debug.WriteLine("SI ES HORA DE INSERTAR ACTIVO");
                if (!FechasArr.Contains(evento.Date.ToString()))
                {
                    FechasArr.Add(evento.Date.ToString());
                    activosArr.Add(1);
                    muertosArr.Add(0);
                    recuperadosArr.Add(0);
                }
                else {
                    int posicion = FechasArr.IndexOf(evento.Date.ToString());
                    int numeroActivos = activosArr[posicion];
                    numeroActivos = numeroActivos + 1;
                    activosArr[posicion] = numeroActivos;
                }
            }
            else if(evento.Status_Event =="nuevo muerto"){

                System.Diagnostics.Debug.WriteLine("************MUERTO**************");
                if (!FechasArr.Contains(evento.Date.ToString()))
                {
                    FechasArr.Add(evento.Date.ToString());
                    activosArr.Add(-1);
                    muertosArr.Add(1);
                    recuperadosArr.Add(0);
                }
                else
                {
                    int posicion = FechasArr.IndexOf(evento.Date.ToString());
                    int numeroActivos = activosArr[posicion];
                    numeroActivos = numeroActivos - 1;
                    activosArr[posicion] = numeroActivos;
                    int numeroMuertos = muertosArr[posicion];
                    numeroMuertos = numeroMuertos + 1;
                    muertosArr[posicion] = numeroMuertos;

                }

            }
            else if (evento.Status_Event == "nuevo recuperado")
            {

                System.Diagnostics.Debug.WriteLine("//////////RECUPERADO////////////");
                if (!FechasArr.Contains(evento.Date.ToString()))
                {
                    FechasArr.Add(evento.Date.ToString());
                    activosArr.Add(-1);
                    muertosArr.Add(0);
                    recuperadosArr.Add(1);
                }
                else
                {
                    int posicion = FechasArr.IndexOf(evento.Date.ToString());
                    int numeroActivos = activosArr[posicion];
                    numeroActivos = numeroActivos - 1;
                    activosArr[posicion] = numeroActivos;
                    int numeroRecuperados = recuperadosArr[posicion];
                    numeroRecuperados = numeroRecuperados + 1;
                    recuperadosArr[posicion] = numeroRecuperados;
                }

            }

        }
        
    }
}
