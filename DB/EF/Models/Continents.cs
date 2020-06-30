using System;
using System.Collections.Generic;

namespace EFGetStarted.Models
{
    public partial class Continents
    {
        public Continents()
        {
            Countries = new HashSet<Countries>();
        }

        public string Name { get; set; }

        public virtual ICollection<Countries> Countries { get; set; }
    }
}
