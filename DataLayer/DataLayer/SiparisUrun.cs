//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataLayer
{
    using System;
    using System.Collections.Generic;
    
    public partial class SiparisUrun
    {
        public int Id { get; set; }
        public Nullable<int> urunlerId { get; set; }
        public Nullable<int> urunKategId { get; set; }
        public Nullable<int> MusteriId { get; set; }
        public Nullable<int> KargoSirketId { get; set; }
        public Nullable<int> ilId { get; set; }
        public Nullable<int> ilceId { get; set; }
    
        public virtual ilce ilce { get; set; }
        public virtual iller iller { get; set; }
        public virtual KargoSirket KargoSirket { get; set; }
        public virtual Musteri Musteri { get; set; }
        public virtual urunKateg urunKateg { get; set; }
        public virtual urunler urunler { get; set; }
    }
}
