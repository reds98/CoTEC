using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class PatientMedications
    {
        public string PatientSsn { get; set; }
        public int MedicationId { get; set; }

        public virtual Medications Medication { get; set; }
        public virtual Patients PatientSsnNavigation { get; set; }
    }
}
