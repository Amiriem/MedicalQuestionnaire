using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalQuestionnaire.adminPanel
{
    public partial class UserDetails : System.Web.UI.Page
    {
        private static Entities_MedicalQuestionnaire entities = new Entities_MedicalQuestionnaire();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public User getUserDetails()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            int pid = int.Parse(Request.QueryString["pid"]);
            User user = new User();

            user = entities.Users.Where(e => e.ID == pid).FirstOrDefault<User>();
            return user;
        }

        public List<QuestionnaireForm> getQuestionnaireDetails()
        {
            int pid = int.Parse(Request.QueryString["pid"]);
            List<QuestionnaireForm> questionnaires = new List<QuestionnaireForm>();
            questionnaires = entities.QuestionnaireForms.Where(p => p.UserId == pid).ToList();
            return questionnaires;
        }
    }
}

