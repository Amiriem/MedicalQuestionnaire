using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalQuestionnaire
{
    public partial class Password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private static readonly MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();
        [WebMethod]
        public User getUserDetails()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            int pid = int.Parse(Request.QueryString["pid"]);
            User user = new User();

            user = entities.User.Where(e => e.ID == pid).FirstOrDefault<User>();
            return user;
        }

    }
}