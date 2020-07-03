using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class HospitalsSP
    {
        public string Name { get; set; }
        public Nullable<int> ICU_Capacity { get; set; }
        public Nullable<int> Capacity { get; set; }
        public string Manager_Name { get; set; }
        public string Phone { get; set; }
        public string Country_Name { get; set; }
        public string Region { get; set; }
    }
}