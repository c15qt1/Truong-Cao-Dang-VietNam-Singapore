﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class CAYQDEntities : DbContext
    {
        public CAYQDEntities()
            : base("name=CAYQDEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<CAUHOI> CAUHOI { get; set; }
        public virtual DbSet<CAUTRALOI> CAUTRALOI { get; set; }
        public virtual DbSet<LOG> LOG { get; set; }
        public virtual DbSet<NGANHHOC> NGANHHOC { get; set; }
    }
}
