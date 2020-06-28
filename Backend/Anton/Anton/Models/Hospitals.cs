//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Anton.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Hospitals
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Hospitals()
        {
            this.Hospital_ICUs = new HashSet<Hospital_ICUs>();
            this.Hospital_Medications = new HashSet<Hospital_Medications>();
            this.Hospital_Patients = new HashSet<Hospital_Patients>();
            this.Patients = new HashSet<Patients>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public Nullable<int> ICU_Capacity { get; set; }
        public Nullable<int> Capacity { get; set; }
        public string Manager_Name { get; set; }
        public string Phone { get; set; }
        public string Country_Name { get; set; }
    
        public virtual Countries Countries { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hospital_ICUs> Hospital_ICUs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hospital_Medications> Hospital_Medications { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hospital_Patients> Hospital_Patients { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Patients> Patients { get; set; }
    }
}
