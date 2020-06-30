using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class SanityMeasurements
    {
        public SanityMeasurements()
        {
            EnforcedMeasurements = new HashSet<EnforcedMeasurements>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }

        public virtual ICollection<EnforcedMeasurements> EnforcedMeasurements { get; set; }
    }
}
