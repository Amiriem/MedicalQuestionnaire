using System;
using System.Web;
using System.Web.Services;

using MedicalQuestionnaire.Model;
using System.Web.Http;
using System.Web.UI;

namespace MedicalQuestionnaire
{
    public partial class Default : Page, IPostBackEventHandler
    {
        private static MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();

        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("Page_Load");

        }
        public void RaisePostBackEvent(string eventArgument)
        {

        }

        [WebMethod]
        public static void addUser(User user)
        {
            User _user = new User();
            _user.Name = user.Name;
            _user.Family = user.Family;
            _user.Gender = user.Gender;
            _user.Birthday = user.Birthday;
            _user.Email = user.Email;
            _user.MedicareNumber = user.MedicareNumber;
            _user.ExpirationDate = user.ExpirationDate;
            _user.PhoneNumber = user.PhoneNumber;
            _user.MedicarePhoto = user.MedicarePhoto;
            _user.PersonalPhoto = user.PersonalPhoto;

            entities.User.Add(_user);
            entities.SaveChanges();
        }
        //[WebMethod]
        //public static JsonResult ImageUpload(QuestionnaireFormModelVeiw ImageFile)
        //{
        //    Console.WriteLine("Hiiii");

        //    if (ImageFile != null)
        //    {

        //    }
        //    //return Json(0, JsonRequestBehavior.AllowGet); 
        //    return null;
        //}
        //public static System.Drawing.Image DownloadImageFromUrl(string imageUrl)
        //{
        //    System.Drawing.Image image = null;

        //    try
        //    {
        //        System.Net.HttpWebRequest webRequest = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create(imageUrl);
        //        webRequest.AllowWriteStreamBuffering = true;
        //        webRequest.Timeout = 30000;

        //        System.Net.WebResponse webResponse = webRequest.GetResponse();

        //        System.IO.Stream stream = webResponse.GetResponseStream();

        //        image = System.Drawing.Image.FromStream(stream);

        //        webResponse.Close();
        //    }
        //    catch (Exception ex)
        //    {
        //        return null;
        //    }

        //    return image;
        //}
        //public void SaveImage1(string filename, ImageFormat format, String URL)
        //{
        //    WebClient _client = new WebClient();
        //    Stream _stream = _client.OpenRead(URL);
        //    Bitmap _bitmap = new Bitmap(_stream);
        //    if (_bitmap != null)
        //        _bitmap.Save(filename, format);
        //    _stream.Flush();
        //    _stream.Close();
        //    _client.Dispose();
        //}

        //public static async Task<byte[]> DownloadFile(string url)
        //{
        //    using (var client = new HttpClient())
        //    {

        //        using (var result = await client.GetAsync(url))
        //        {
        //            if (result.IsSuccessStatusCode)
        //            {
        //                return await result.Content.ReadAsByteArrayAsync();
        //            }

        //        }
        //    }
        //    return null;
        //}
        public class AA
        {
            public HttpPostedFileBase file { get; set; }
        }
        public class BB
        {
            public string file { get; set; }
        }
        public class PostIssueDTO
        {
            public int Id { get; set; }
            public string PostType { get; set; }
            public DateTime AddedTime { get; set; }
            public string Title { get; set; }
            public string Description { get; set; }
            public string Priority { get; set; }
            public string City { get; set; }
            public string Region { get; set; }
            public HttpPostedFileBase PhotoPath { get; set; }
            public DateTime? UpdatedOn { get; set; }
            public bool IsPinned { get; set; }
            public bool IsDelected { get; set; }
        }

        [WebMethod]
        public static void sendFile(AA file)
        {
            if (file.file.FileName == "")
            {

            }
        }
        [Route("CreatePostIssue")]
        [HttpPost]
        [WebMethod]
        public static IHttpActionResult CreatePostIssue(BB file)
        {
            string bb = file.file;
            //HttpPostedFileBase files = file.file;
            //if(files)
            //{

            //}
            return null;
            //if (ModelState.IsValid)
            //{
            //    try
            //    {
                    //string fname = null;
                    //var userid = User.Identity.GetUserId();
                    //var httpRequest = HttpContext.Current.Request;
                    //if (httpRequest.Files.Count > 0)
                    //{
                    //    var docfiles = new List<string>();
                    //    foreach (string file in httpRequest.Files)
                    //    {
                    //        var postedFile = httpRequest.Files[file];
                    //        fname = userid + postedFile.FileName;
                    //        var filePath = HttpContext.Current.Server.MapPath("~/Images/" + fname);
                    //        postedFile.SaveAs(filePath);
                    //        docfiles.Add(filePath);
                    //    }
                    //}
                    //else
                    //{ }
                    //Post post = new Post();
                    //post.PostType = "PostIssue";
                    //post.AddedTime = DateTime.Now;
                    //post.Title = postissueDTO.Title;
                    //post.Description = postissueDTO.Description;
                    //post.Priority = postissueDTO.Priority;
                    //post.City = postissueDTO.City;
                    //post.Region = postissueDTO.Region;
                    //post.PhotoUrl = fname;
                    //post.UserId = User.Identity.GetUserId();
                    //_db.Posts.Add(post);
                    //_db.SaveChanges();
            //        return Json("success");
            //    }
            //    catch (Exception ex)
            //    {
            //       return Json("somethimg went wrong" + ex);
            //    }

            //}
            //else
            //{
            //   return Json("Model State wrong"); 
            //}

        }

        [WebMethod]
        public static void addUserQuestionnaire(QuestionnaireFormModelVeiw questionnaireForm)
        {


            //System.Drawing.Image imgs = DownloadImageFromUrl(questionnaireForm.ReferralImage);


            //using (WebClient webClient = new WebClient())
            //{
            //    byte[] data = webClient.DownloadData(questionnaireForm.ReferralImage);

            //    using (MemoryStream mem = new MemoryStream(data))
            //    {
            //        using (var yourImage = System.Drawing.Image.FromStream(mem))
            //        {
            //            // If you want it as Png
            //          //  yourImage.Save("path_to_your_file.png", ImageFormat.Png);

            //            // If you want it as Jpeg
            //            yourImage.Save("path_to_your_file.jpg", ImageFormat.Jpeg);
            //        }
            //    }

            //}​

            //string rootPath = questionnaireForm.ReferralImage;
            //SaveImage(rootPath, ImageFormat.Png, txtInputUrl.Text.Trim());

            //var hi = ImageFile;
            //DownloadRemoteImageFile(questionnaireForm.ReferralImage, "amirr");

            //if (hi != null)
            //{
            //    file.SaveAs(Server.MapPath("/UploadImage/" + file.FileName));
            //    BinaryReader reader = new BinaryReader(file.InputStream);
            //    imagebyte = reader.ReadBytes(file.ContentLength);
            //    StoreImage img = new StoreImage();
            //    img.ImageTitle = file.FileName;
            //    img.ImageByte = imagebyte;
            //    img.ImagePath = "/UploadImage/" + file.FileName;
            //    db.StoreImages.Add(img);
            //    db.SaveChanges();
            //    imgId = img.ImageId;
            //}
            //return Json(imgId, JsonRequestBehavior.AllowGet);

            //entities.User.Add(_user);

            QuestionnaireForm _questionnaireForm = new QuestionnaireForm();

            try
            {
                _questionnaireForm.Date = questionnaireForm.Date;
                _questionnaireForm.LanguageType = questionnaireForm.LanguageType;
                _questionnaireForm.QuestionnaireAnswer = questionnaireForm.QuestionnaireAnswer;
                _questionnaireForm.UserId = questionnaireForm.UserId;

                _questionnaireForm.MedicationFile = questionnaireForm.MedicationFile;
                _questionnaireForm.ReferralImage = questionnaireForm.ReferralImage;
                string s = questionnaireForm.MedicationFileName;
                string ss = questionnaireForm.ReferralImageName;

                // DownloadRemoteImageFile(questionnaireForm.ReferralImage, ss);
                //    SaveImage(ss , _questionnaireForm.ReferralImage, ImageFormat.Png);
                //WebClient webClient = new WebClient();
                //webClient.DownloadFile(questionnaireForm.MedicationFile, s);

                //using (WebClient webClient = new WebClient())
                //{
                //    byte[] data = webClient.DownloadData(questionnaireForm.ReferralImage);

                //    using (MemoryStream mem = new MemoryStream(data))
                //    {
                //        using (var yourImage = System.Drawing.Image.FromStream(mem))
                //        {
                //            // If you want it as Png
                //            //  yourImage.Save("path_to_your_file.png", ImageFormat.Png);

                //            // If you want it as Jpeg
                //            // yourImage.Save("path_to_your_file.jpg", ImageFormat.Jpeg);
                //        }
                //    }

                //}

                entities.QuestionnaireForm.Add(_questionnaireForm);
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

        //[HttpPost]
        //public ActionResult Index(QuestionnaireForm company, HttpPostedFileBase file)
        //{
        //    if (file == null)
        //    {

        //    }
        //    return null;
        //}
        //public static void SaveImage(string filename, string imageUrl, ImageFormat format)
        //{
        //    WebClient client = new WebClient();
        //    Stream stream = client.OpenRead(imageUrl);
        //    Bitmap bitmap; bitmap = new Bitmap(stream);

        //    if (bitmap != null)
        //    {
        //        bitmap.Save(filename, format);
        //    }

        //    stream.Flush();
        //    stream.Close();
        //    client.Dispose();
        //}
        //private static void DownloadRemoteImageFile(string uri, string fileName)
        //{
        //    HttpWebRequest request = (HttpWebRequest)WebRequest.Create(uri);
        //    HttpWebResponse response = (HttpWebResponse)request.GetResponse();

        //    // Check that the remote file was found. The ContentType
        //    // check is performed since a request for a non-existent
        //    // image file might be redirected to a 404-page, which would
        //    // yield the StatusCode "OK", even though the image was not
        //    // found.
        //    if ((response.StatusCode == HttpStatusCode.OK ||
        //        response.StatusCode == HttpStatusCode.Moved ||
        //        response.StatusCode == HttpStatusCode.Redirect) &&
        //        response.ContentType.StartsWith("image", StringComparison.OrdinalIgnoreCase))
        //    {

        //        // if the remote file was found, download oit
        //        using (Stream inputStream = response.GetResponseStream())
        //        using (Stream outputStream = File.OpenWrite(fileName))
        //        {
        //            byte[] buffer = new byte[4096];
        //            int bytesRead;
        //            do
        //            {
        //                bytesRead = inputStream.Read(buffer, 0, buffer.Length);
        //                outputStream.Write(buffer, 0, bytesRead);
        //            } while (bytesRead != 0);
        //        }
        //    }
        //}

        [WebMethod]
        public static void editUserQuestionnaire(User user, QuestionnaireForm questionnaireForm)
        {
            User _user = new User();
            _user.Name = user.Name;
            _user.Family = user.Family;
            _user.Gender = user.Gender;
            _user.Birthday = user.Birthday;
            _user.Email = user.Email;
            _user.MedicareNumber = user.MedicareNumber;
            _user.ExpirationDate = user.ExpirationDate;
            _user.PhoneNumber = user.PhoneNumber;
            _user.MedicarePhoto = user.MedicarePhoto;
            _user.PersonalPhoto = user.PersonalPhoto;


            QuestionnaireForm _questionnaireForm = new QuestionnaireForm();
            _questionnaireForm.Date = _questionnaireForm.Date;
            _questionnaireForm.LanguageType = _questionnaireForm.LanguageType;
            _questionnaireForm.QuestionnaireAnswer = _questionnaireForm.QuestionnaireAnswer;
            _questionnaireForm.UserId = _questionnaireForm.UserId;
            _questionnaireForm.ReferralImage = _questionnaireForm.ReferralImage;
            _questionnaireForm.MedicationFile = _questionnaireForm.MedicationFile;


            entities.User.Add(_user);
            entities.QuestionnaireForm.Add(_questionnaireForm);
            entities.SaveChanges();
        }
    }
}