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
    
    public partial class Entities_MedicalQuestionnaire : DbContext
    {
        public Entities_MedicalQuestionnaire()
            : base("name=Entities_MedicalQuestionnaire")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Login> Logins { get; set; }
        public virtual DbSet<QuestionnaireForm> QuestionnaireForms { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
