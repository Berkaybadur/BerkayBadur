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
    
    public partial class urunler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public urunler()
        {
            this.Depoes = new HashSet<Depo>();
            this.Gemilers = new HashSet<Gemiler>();
            this.Kargoes = new HashSet<Kargo>();
            this.SiparisUruns = new HashSet<SiparisUrun>();
        }
    
        public int UrunId { get; set; }
        public string urunAd { get; set; }
        public Nullable<int> Miktar { get; set; }
        public Nullable<decimal> Fiyat { get; set; }
        public Nullable<int> urunKategId { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Depo> Depoes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Gemiler> Gemilers { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Kargo> Kargoes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SiparisUrun> SiparisUruns { get; set; }
        public virtual urunKateg urunKateg { get; set; }
    }
}
