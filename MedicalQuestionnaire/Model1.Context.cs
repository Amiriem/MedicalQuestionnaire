﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MedicalQuestionnaire
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MedicalQuestionnaire_Entities : DbContext
    {
        public MedicalQuestionnaire_Entities()
            : base("name=MedicalQuestionnaire_Entities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Login> Login { get; set; }
        public virtual DbSet<QuestionnaireForm> QuestionnaireForm { get; set; }
        public virtual DbSet<User> User { get; set; }
    }
}
