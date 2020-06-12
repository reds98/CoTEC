using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class PatientStatus
    {
        public string Name { get; set; }
        public string PatientSsn { get; set; }

        public virtual Patients PatientSsnNavigation { get; set; }
    }
}
