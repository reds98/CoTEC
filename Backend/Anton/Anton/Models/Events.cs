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
    
    public partial class Events
    {
        public int Id { get; set; }
        public string Status_Event { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> Patient_SSN { get; set; }
    
        public virtual Patients Patients { get; set; }
        public virtual Patient_Status Patient_Status { get; set; }
    }
}
