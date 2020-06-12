using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class EnforcedMeasurements
    {
        public string CountryName { get; set; }
        public int MeasurementId { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }

        public virtual Countries CountryNameNavigation { get; set; }
        public virtual SanityMeasurements Measurement { get; set; }
    }
}
