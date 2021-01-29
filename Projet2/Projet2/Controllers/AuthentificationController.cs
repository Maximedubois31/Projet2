using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet2.Models;

namespace Projet2.Controllers
{
    public class AuthentificationController : Controller
    {
        // GET: Authentification
        public ActionResult seDeconnecter()
        {
            return View();
        }
        public ActionResult Connexion()
        {  
            return View();
        }
        [HttpPost]
        public ActionResult Connexion(string txtUserName, string txtUserPass)
        {
            Authentification authen = new Authentification();
            authen.ValidateUser(txtUserName, txtUserPass);
            if (authen.valide == true)
            {
                return RedirectToAction("Accueil", "Home");
            }
            else
            {
                return View();
            }
            
        }
    }
}