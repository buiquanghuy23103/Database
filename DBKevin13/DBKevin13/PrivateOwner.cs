//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DBKevin13
{
    using System;
    using System.Collections.Generic;
    
    public partial class PrivateOwner
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public PrivateOwner()
        {
            this.PropertyForRents = new HashSet<PropertyForRent>();
        }
    
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string FamilyName { get; set; }
        public string Street { get; set; }
        public string City { get; set; }
        public string Postcode { get; set; }
        public string TelephoneNumber { get; set; }
        public string Email { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PropertyForRent> PropertyForRents { get; set; }
    }
}
