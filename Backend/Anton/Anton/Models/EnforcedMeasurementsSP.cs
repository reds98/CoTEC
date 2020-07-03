using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class EnforcedMeasurementsSP
    {
        public string Country_Name { get; set; }
        public string Name { get; set; }
        public Nullable<System.DateTime> Start_Date { get; set; }
        public Nullable<System.DateTime> End_Date { get; set; }
        public int MeasurementId { get; set; }
    }
}