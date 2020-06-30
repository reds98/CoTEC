using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class Hospitals
    {
        public Hospitals()
        {
            HospitalIcus = new HashSet<HospitalIcus>();
            HospitalMedications = new HashSet<HospitalMedications>();
            Patients = new HashSet<Patients>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int? IcuCapacity { get; set; }
        public int? Capacity { get; set; }
        public string ManagerName { get; set; }
        public string Phone { get; set; }
        public string CountryName { get; set; }

        public virtual Countries CountryNameNavigation { get; set; }
        public virtual ICollection<HospitalIcus> HospitalIcus { get; set; }
        public virtual ICollection<HospitalMedications> HospitalMedications { get; set; }
        public virtual ICollection<Patients> Patients { get; set; }
    }
}
