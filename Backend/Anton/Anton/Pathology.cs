//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Anton
{
    using System;
    using System.Collections.Generic;
    
    public partial class Pathology
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Pathology()
        {
            this.Patient_Pathologies = new HashSet<Patient_Pathologies>();
        }
    
        public string Name { get; set; }
        public string Symptoms { get; set; }
        public string Description { get; set; }
        public string Treatment { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Patient_Pathologies> Patient_Pathologies { get; set; }
    }
}