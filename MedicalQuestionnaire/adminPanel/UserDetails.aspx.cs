using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalQuestionnaire.adminPanel
{
    public partial class UserDetails : System.Web.UI.Page
    {
        private static MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public User getUserDetails()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            int pid = int.Parse(Request.QueryString["pid"]);
            User user = new User();

            user = entities.User.Where(e => e.ID == pid).FirstOrDefault<User>();
            return user;
        }

        public List<QuestionnaireForm> getQuestionnaireDetails()
        {
            int pid = int.Parse(Request.QueryString["pid"]);
            List<QuestionnaireForm> questionnaires = new List<QuestionnaireForm>();
            questionnaires = entities.QuestionnaireForm.Where(p => p.UserId == pid).ToList();
            return questionnaires;
        }
        [WebMethod]
        public static void removeQuestionnaire(int questionnaireId)
        {
            try
            {
                entities.Configuration.ProxyCreationEnabled = false;
                QuestionnaireForm questionnaire = new QuestionnaireForm();

                questionnaire = entities.QuestionnaireForm.Where(e => e.ID == questionnaireId).FirstOrDefault<QuestionnaireForm>();


                string medicalPath = "~/" + questionnaire.MedicationFile;
                string referralPath = "~/" + questionnaire.ReferralImage;

                entities.Entry(questionnaire).State = System.Data.Entity.EntityState.Deleted;


                if (entities.SaveChanges() > 0)
                {
                    string path1 = HttpContext.Current.Server.MapPath(medicalPath);
                    if (File.Exists(path1))
                    {
                        File.Delete(path1);
                    }

                    string path2 = HttpContext.Current.Server.MapPath(referralPath);
                    if (File.Exists(path2))
                    {
                        File.Delete(path2);
                    }
                }
            }
            catch (System.Data.Entity.Validation.DbEntityValidationException dbEx)
            {
                Exception raise = dbEx;
                foreach (var validationErrors in dbEx.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        string message = string.Format("{0}:{1}",
                            validationErrors.Entry.Entity.ToString(),
                            validationError.ErrorMessage);
                        // raise a new exception nesting
                        // the current instance as InnerException
                        raise = new InvalidOperationException(message, raise);
                    }
                }
                throw raise;
            }
        }
    }
}

