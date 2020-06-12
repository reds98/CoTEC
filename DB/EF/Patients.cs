using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class Patients
    {
        public Patients()
        {
            ContactedPerson = new HashSet<ContactedPerson>();
            Events = new HashSet<Events>();
            PatientMedications = new HashSet<PatientMedications>();
            PatientPathologies = new HashSet<PatientPathologies>();
            PatientStatus = new HashSet<PatientStatus>();
        }

        public string Ssn { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Hospitalized { get; set; }
        public string Icu { get; set; }
        public int? Age { get; set; }
        public string Residence { get; set; }
        public string CountryBirth { get; set; }
        public int? HospitalId { get; set; }

        public virtual Countries CountryBirthNavigation { get; set; }
        public virtual Hospitals Hospital { get; set; }
        public virtual Countries ResidenceNavigation { get; set; }
        public virtual ICollection<ContactedPerson> ContactedPerson { get; set; }
        public virtual ICollection<Events> Events { get; set; }
        public virtual ICollection<PatientMedications> PatientMedications { get; set; }
        public virtual ICollection<PatientPathologies> PatientPathologies { get; set; }
        public virtual ICollection<PatientStatus> PatientStatus { get; set; }
    }
}
