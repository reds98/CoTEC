using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class HospitalIcus
    {
        public string IcuPatient { get; set; }
        public int HospitalId { get; set; }

        public virtual Hospitals Hospital { get; set; }
    }
}
