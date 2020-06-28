using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class Acumulado
    {
        public int contagiados { get; set; }
        public int activos { get; set; }
        public int recuperados { get; set; }
        public int muertos { get; set; }
        public int[] contagiados_dia { get; set; }
        public int[] activos_dia { get; set; }
        public int[] recuperados_dia { get; set; }
        public int[] muertos_dia { get; set; }
        public string[] Fechas { get; set; }
    }
}