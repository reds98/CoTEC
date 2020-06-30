using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class PatientPathologies
    {
        public string PatientSsn { get; set; }
        public string PathologyName { get; set; }

        public virtual Pathologies PathologyNameNavigation { get; set; }
        public virtual Patients PatientSsnNavigation { get; set; }
    }
}
