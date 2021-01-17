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
        private static readonly Entities_MedicalQuestionnaire entities = new Entities_MedicalQuestionnaire();
        [WebMethod]
        public User getUserDetails()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            int pid = int.Parse(Request.QueryString["pid"]);
            User user = new User();

            user = entities.Users.Where(e => e.ID == pid).FirstOrDefault<User>();
            return user;
        }

        [WebMethod]
        public static void addRegisterationPassword(Login login)
        {
            entities.Configuration.ProxyCreationEnabled = false;
            Login _reg = new Login();
            _reg.UserId = login.UserId;
            _reg.Username = login.Username;
            _reg.Password = login.Password;

            try
            {

                entities.Logins.Add(_reg);
                entities.SaveChanges();
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