using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicalQuestionnaire.adminPanel
{
    public partial class DataReceive : System.Web.UI.Page
    {
        private static Entities_MedicalQuestionnaire entities = new Entities_MedicalQuestionnaire();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod]
        public static List<User> readUsersData()
        {
            entities.Configuration.ProxyCreationEnabled = false;
            //User ma = db.user.First(x => x.u_id == id);
            //return Json(ma, JsonRequestBehavior.AllowGet);
            List<User> allUsers = new List<User>();
            allUsers = entities.Users.ToList();
            return allUsers;
        }
        [WebMethod]
        public static void removeUser(int userId)
        {
            entities.Configuration.ProxyCreationEnabled = false;
            User user = new User();

            user = entities.Users.Where(e => e.ID == userId).FirstOrDefault<User>();

            entities.Entry(user).State = System.Data.Entity.EntityState.Deleted;
            entities.SaveChanges();
        }
    }
}

//        var SelectedAllSending = allUsers.Select(s => new User()
//        {
//            Birthday = s.Birthday,
//          ID=s.ID,
//          Name=s.Name, 
//    Family=s.Family,  
//     Email=s.Email,  
//     UserId =s.UserId,
//    Gender =s.Gender,
//    PhoneNumber =s.PhoneNumber,
//    MedicareNumber=s.MedicareNumber,
//    ExpirationDate=s.ExpirationDate,
//      PersonalPhoto =s.PersonalPhoto,
//     MedicarePhoto =s.MedicarePhoto,

//}).ToList();