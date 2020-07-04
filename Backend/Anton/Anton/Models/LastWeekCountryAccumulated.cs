using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class LastWeekCountryAccumulated
    {
        public int[] infected_day { get; set; }
        public int[] active_day { get; set; }
        public int[] recovered_day { get; set; }
        public int[] dead_day { get; set; }
        public DateTime[] Dates { get; set; }
    }
}