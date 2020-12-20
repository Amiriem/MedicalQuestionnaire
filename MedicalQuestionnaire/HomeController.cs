using MedicalQuestionnaire.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MedicalQuestionnaire
{
    public class HomeController 
    {
        public ActionResult Index()
        {
            MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();
            return null;
        }
        [Route("ImageUpload")]
        public JsonResult ImageUpload(ImageViewModel model)
        {
            MedicalQuestionnaire_Entities entities = new MedicalQuestionnaire_Entities();
            var file = model.ImageFile;
            byte[] imagebyte = null;
            if (file != null)
            { }

                return null;
        }

    }
}