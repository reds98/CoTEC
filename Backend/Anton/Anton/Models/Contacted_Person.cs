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
    
    public partial class Contacted_Person
    {
        public int Id { get; set; }
        public Nullable<int> SSN { get; set; }
        public Nullable<int> Patient_SSN { get; set; }
        public string First_Name { get; set; }
        public string Last_Name { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public Nullable<int> Age { get; set; }
    
        public virtual Patients Patients { get; set; }
    }
}
