using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MedicalQuestionnaire.Model
{
    public class QuestionnaireFormModelVeiw
    {
        public int UserId { get; set; }
        public string QuestionnaireAnswer { get; set; }
        public string LanguageType { get; set; }
        public System.DateTime Date { get; set; }
        public string ReferralImage { get; set; }
        public string MedicationFile { get; set; }
        public string ReferralImageName { get; set; }
        public string MedicationFileName { get; set; }

    }
}