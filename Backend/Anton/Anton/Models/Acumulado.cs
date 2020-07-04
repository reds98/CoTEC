using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class Acumulado
    {
        public int INFECTED { get; set; }
        public int ACTIVE { get; set; }
        public int RECOVERED { get; set; }
        public int DEAD { get; set; }
        public int[] infected_day { get; set; }
        public int[] active_day { get; set; }
        public int[] recovered_day { get; set; }
        public int[] dead_day { get; set; }
        public DateTime[] Dates { get; set; }
    }
}