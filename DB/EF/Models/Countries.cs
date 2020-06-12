using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class Countries
    {
        public Countries()
        {
            CountryLocations = new HashSet<CountryLocations>();
            EnforcedMeasurements = new HashSet<EnforcedMeasurements>();
            Hospitals = new HashSet<Hospitals>();
            PatientsCountryBirthNavigation = new HashSet<Patients>();
            PatientsResidenceNavigation = new HashSet<Patients>();
        }

        public string Name { get; set; }
        public string ContinentName { get; set; }

        public virtual Continents ContinentNameNavigation { get; set; }
        public virtual ICollection<CountryLocations> CountryLocations { get; set; }
        public virtual ICollection<EnforcedMeasurements> EnforcedMeasurements { get; set; }
        public virtual ICollection<Hospitals> Hospitals { get; set; }
        public virtual ICollection<Patients> PatientsCountryBirthNavigation { get; set; }
        public virtual ICollection<Patients> PatientsResidenceNavigation { get; set; }
    }
}
