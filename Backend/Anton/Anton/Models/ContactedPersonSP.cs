using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Anton.Models
{
    public class ContactedPersonSP
    {
        public int SSN { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public Nullable<int> Age { get; set; }
        public string Email { get; set; }
        public string Country_Birth { get; set; }
        public string Address { get; set; }
    }
}