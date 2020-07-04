using System;
using System.Collections.Generic;

namespace EFGetStarted
{
    public partial class CountryLocations
    {
        public string Name { get; set; }
        public string CountryName { get; set; }

        public virtual Countries CountryNameNavigation { get; set; }
    }
}
