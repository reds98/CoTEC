using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class Acumulado
    {
        public int infected { get; set; }
        public int active { get; set; }
        public int recovered { get; set; }
        public int dead { get; set; }
        public int[] infected_day { get; set; }
        public int[] active_day { get; set; }
        public int[] recovered_day { get; set; }
        public int[] dead_day { get; set; }
        public string[] Dates { get; set; }
    }
}