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
    
    public partial class Hospital_Patients
    {
        public int Id { get; set; }
        public string Patient { get; set; }
        public Nullable<int> Hospital_Id { get; set; }
    
        public virtual Hospitals Hospitals { get; set; }
    }
}
