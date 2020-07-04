using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class HospitalMedications
    {
        public int HospitalId { get; set; }
        public int MedicationId { get; set; }

        public virtual Hospitals Hospital { get; set; }
        public virtual Medications Medication { get; set; }
    }
}
