using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class Medications
    {
        public Medications()
        {
            HospitalMedications = new HashSet<HospitalMedications>();
            PatientMedications = new HashSet<PatientMedications>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Provider { get; set; }

        public virtual ICollection<HospitalMedications> HospitalMedications { get; set; }
        public virtual ICollection<PatientMedications> PatientMedications { get; set; }
    }
}
