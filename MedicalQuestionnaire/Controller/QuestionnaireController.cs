using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MedicalQuestionnaire.Controller
{
    [Produces("application/json")]
    [System.Web.Mvc.Route("api/[controller]/[action]")]
    public class QuestionnaireController 
    {
        //    [HttpGet("{appId}")]
        //    [ActionName("GetById")]
        //    [Authorize(ActiveAuthenticationSchemes = "Bearer")]
        //    public dynamic GetById(string appId)
        //    {
        //        return _appRepository.GetById(appId);
        //    }

        //}

        // POST: api/Patient/UpdatePatient
        //    [HttpPost]
        //    [Authorize(ActiveAuthenticationSchemes = "Bearer")]
        //public void UpdatePatient([FromBody]Patient patient)
        //{
        //    Patient user = _userManager.GetUserAsync(HttpContext.User).Result;
        //    user.Name = patient.Name;
        //    user.Email = patient.Email;
        //    user.Coins = patient.Coins;
        //    user.UnlockedFeatures = patient.UnlockedFeatures;
        //    _patientRepository.Update(user);
    }

}