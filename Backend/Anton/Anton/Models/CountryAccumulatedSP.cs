using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class CountryAccumulatedSP
    {
        public int ACTIVE { get; set; }
        public int INFECTED { get; set; }
        public int RECOVERED { get; set; }
        public int DEAD { get; set; }
    }
}