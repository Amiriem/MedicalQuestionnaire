using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.Entity.Validation;

namespace MedicalQuestionnaire.adminPanel
{
    public partial class DataReceive : System.Web.UI.Page
    {
        private static MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();

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
            allUsers = entities.User.ToList();
            return allUsers;
        }
        [WebMethod]
        public static void removeUser(int userId)
        {

            //bool isSaved = false;
            //do
            //{
            //    try
            //    {
            //        entities.Configuration.ProxyCreationEnabled = false;
            //        User user = new User();

            //        user = entities.User.Where(e => e.ID == userId).FirstOrDefault<User>();

            //        entities.User.Attach(user);

            //        entities.Entry(user).State = EntityState.Deleted;


            //        System.Diagnostics.Debug.WriteLine("user : " + user.ID + user.Name);

            //        entities.SaveChanges();

            //        isSaved = true;
            //    }
            //    catch (System.Data.Entity.Infrastructure.DbUpdateException ex)
            //    {
            //        // get failed entries
            //        var entries = ex.Entries;
            //        foreach (var entry in entries)
            //        {
            //            // change state to remove it from context 
            //            entry.State = System.Data.Entity.EntityState.Detached;
            //        }
            //    }
            //    catch (Exception ex)
            //    {
            //        Console.WriteLine(ex.Message);
            //        // quit if a severe error occurred
            //        break;
            //    }
            //}
            //while (!isSaved);

            try
            {
                entities.Configuration.ProxyCreationEnabled = false;
                User user = new User();

                user = entities.User.Where(e => e.ID == userId).FirstOrDefault<User>();

                entities.User.Attach(user);
               

                entities.Entry(user).State = EntityState.Deleted;

                Console.WriteLine("user : " + user.ID + user.Name);


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