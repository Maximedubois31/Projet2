using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet2.Models;
using Projet2.DAO;

namespace Projet2.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Home()
        {
            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            return View();
        }

        public ActionResult Contact()
        {
            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            return View();
        }

        public ActionResult Accueil()
        {
            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            Demande d = new Demande();
            DemandeDAO dao = new DemandeDAO();
            ViewBag.listeDemandes = dao.GetAll();
            return View();
        }
    }
}