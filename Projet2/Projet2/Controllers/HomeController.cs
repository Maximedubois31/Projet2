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
        [HttpPost]
        public ActionResult Accueil(int NumDemandeAide)
        {
            DemandeDAO dao = new DemandeDAO();
            int NumCompte = (int)Session["idUtilisateur"];
            dao.Annuler(NumDemandeAide, NumCompte);
            User u = new User();
            u.NumCompte = (int)Session["idUtilisateur"];
            ViewBag.DemandeEnCours = dao.GetAllDemandeEnCours(u);
            ViewBag.PropositionEnCours = dao.GetAllPropositionEnCours(u);
            return View();
        }

   //     [HttpPost]
    //    public ActionResult Accueil2(int NumDemandeAide, DateTime DateTraitement, string LibelleAide, string heureTraitement, string description)
    //    {
    //        DemandeDAO dao = new DemandeDAO();
     //       int NumCompte = (int)Session["idUtilisateur"];
     //       User u = new User();
      //      u.NumCompte = (int)Session["idUtilisateur"];
      //      ViewBag.DemandeAModifier = dao.GetOne(NumDemandeAide, DateTraitement, LibelleAide, heureTraitement, description);

      //      return RedirectToAction("ModifierDemandeAide", "Demande");
       // }
    }
}