//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Airport.Entities
{
    using System;
    using System.Collections.Generic;
    
    public partial class Expedition
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Expedition()
        {
            this.Tickets = new HashSet<Ticket>();
        }
    
        public int ExpeditionId { get; set; }
        public string DepartureLocation { get; set; }
        public string RotationLocation { get; set; }
        public Nullable<System.DateTime> DepartureDatetime { get; set; }
        public Nullable<System.DateTime> RotationDatetime { get; set; }
        public Nullable<int> District { get; set; }
        public Nullable<int> AirplaneId { get; set; }
    
        public virtual Airplane Airplane { get; set; }
        public virtual District District1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ticket> Tickets { get; set; }
    }
}
