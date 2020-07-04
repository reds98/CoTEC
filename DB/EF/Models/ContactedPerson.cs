using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class ContactedPerson
    {
        public string Ssn { get; set; }
        public string PatientSsn { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Adress { get; set; }
        public string Email { get; set; }
        public int? Age { get; set; }

        public virtual Patients PatientSsnNavigation { get; set; }
    }
}
