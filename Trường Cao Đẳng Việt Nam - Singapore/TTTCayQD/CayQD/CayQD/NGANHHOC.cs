//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CayQD
{
    using System;
    using System.Collections.Generic;
    
    public partial class NGANHHOC
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NGANHHOC()
        {
            this.CAUTRALOI = new HashSet<CAUTRALOI>();
        }
    
        public int ID { get; set; }
        public string TENNGANH { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAUTRALOI> CAUTRALOI { get; set; }
    }
}
