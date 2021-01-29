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
            User u = new User();
            u.NumCompte = (int)Session["idUtilisateur"];
            DemandeDAO ddao = new DemandeDAO();
            ViewBag.DemandeEnCours = ddao.GetAllDemandeEnCours(u);
            ViewBag.PropositionEnCours = ddao.GetAllPropositionEnCours(u);
            return View();
        }
    }
}