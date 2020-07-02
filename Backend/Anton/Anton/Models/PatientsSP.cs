using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class PatientsSP
    {
        public int SSN { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public Nullable<bool> Hospitalized { get; set; }
        public Nullable<bool> ICU { get; set; }
        public Nullable<int> Age { get; set; }
        public string Residence { get; set; }
        public string Country_Birth { get; set; }
        public string Status { get; set; }
        public string Medication { get; set; }
        public string Pathology { get; set; }

    }
}