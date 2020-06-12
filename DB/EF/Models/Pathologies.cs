using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class Pathologies
    {
        public Pathologies()
        {
            PatientPathologies = new HashSet<PatientPathologies>();
        }

        public string Name { get; set; }
        public string Symptoms { get; set; }
        public string Description { get; set; }
        public string Treatment { get; set; }

        public virtual ICollection<PatientPathologies> PatientPathologies { get; set; }
    }
}
