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
    
    public partial class Personel
    {
        public int PersonelId { get; set; }
        public string PersonelTc { get; set; }
        public string PersonelFirstName { get; set; }
        public string PersonelLastName { get; set; }
        public string PersonelPhoneNumber { get; set; }
        public string PersonelAddress { get; set; }
        public Nullable<int> District { get; set; }
        public Nullable<int> AirplaneId { get; set; }
        public Nullable<int> TitleId { get; set; }
    
        public virtual Airplane Airplane { get; set; }
        public virtual District District1 { get; set; }
        public virtual Title Title { get; set; }
    }
}
