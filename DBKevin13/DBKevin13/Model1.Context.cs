﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DREAMHOMEEntities : DbContext
    {
        public DREAMHOMEEntities()
            : base("name=DREAMHOMEEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Branch> Branches { get; set; }
        public virtual DbSet<Client> Clients { get; set; }
        public virtual DbSet<PrivateOwner> PrivateOwners { get; set; }
        public virtual DbSet<PropertyForRent> PropertyForRents { get; set; }
        public virtual DbSet<Staff> Staffs { get; set; }
        public virtual DbSet<Viewing> Viewings { get; set; }
    }
}
