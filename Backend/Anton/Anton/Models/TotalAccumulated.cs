using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class TotalAccumulated
    {
        public int INFECTED { get; set; }
        public int ACTIVE { get; set; }
        public int RECOVERED { get; set; }
        public int DEAD { get; set; }
    }
}