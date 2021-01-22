using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projet2.Controllers
{
    public class AuthentificationController : Controller
    {
        // GET: Authentification
        public ActionResult seDeconnecter()
        {
            return View();
        }
        public ActionResult validerConnexion()
        {
            return View();
        }
    }
}