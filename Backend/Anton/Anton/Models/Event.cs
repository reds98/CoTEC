//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Anton.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Event
    {
        public int Id { get; set; }
        public string Status_Event { get; set; }
        public Nullable<System.DateTime> Date { get; set; }
        public Nullable<int> Patient_SSN { get; set; }
    
        public virtual Patient Patient { get; set; }
        public virtual Patient_Status Patient_Status { get; set; }
    }
}
