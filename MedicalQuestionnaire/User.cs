//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class User
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public User()
        {
            this.Logins = new HashSet<Login>();
            this.QuestionnaireForms = new HashSet<QuestionnaireForm>();
        }
    
        public int ID { get; set; }
        public string Name { get; set; }
        public string Family { get; set; }
        public string Email { get; set; }
        public string UserId { get; set; }
        public string Gender { get; set; }
        public string PhoneNumber { get; set; }
        public string MedicareNumber { get; set; }
        public string ExpirationDate { get; set; }
        public string Birthday { get; set; }
        public string PersonalPhoto { get; set; }
        public string MedicarePhoto { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Login> Logins { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<QuestionnaireForm> QuestionnaireForms { get; set; }
    }
}
