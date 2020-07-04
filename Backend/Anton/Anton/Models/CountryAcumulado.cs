using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class CountryAcumulado
    {
        public int INFECTED { get; set; }
        public int ACTIVE { get; set; }
        public int RECOVERED { get; set; }
        public int DEAD { get; set; }
        public DateTime Date { get; set; }
        public string Residence { get; set; }
    }
}