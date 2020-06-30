using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class Events
    {
        public string EventId { get; set; }
        public string Date { get; set; }
        public string PatientSsn { get; set; }

        public virtual Patients PatientSsnNavigation { get; set; }
    }
}
