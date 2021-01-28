using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalQuestionnaire.adminPanel
{
    public partial class QuestionnaireDetails : System.Web.UI.Page
    {
        private static MedicalQuestionnaireEntities entities = new MedicalQuestionnaireEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public User getUserDetails()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            int pid = int.Parse(Request.QueryString["pid"]);
            User user = new User();
            QuestionnaireForm questionnaire = new QuestionnaireForm();

            questionnaire = entities.QuestionnaireForm.Where(e => e.ID == pid).FirstOrDefault<QuestionnaireForm>();
            user = entities.User.Where(e => e.ID == questionnaire.UserId).FirstOrDefault<User>();
            return user;

        }

        public QuestionnaireForm getQuestionnaireDetail()
        {
            int pid = int.Parse(Request.QueryString["pid"]);
            QuestionnaireForm questionnaire = new QuestionnaireForm();
            questionnaire = entities.QuestionnaireForm.Where(p => p.ID == pid).FirstOrDefault<QuestionnaireForm>();

            Answercontent.Text = questionnaire.QuestionnaireAnswer;
            return questionnaire;
        }

    }
}