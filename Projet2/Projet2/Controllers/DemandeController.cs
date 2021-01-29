
using Projet2.DAO;
using Projet2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet2.Dao;


namespace Projet2.Controllers
{

    public class DemandeController : Controller
    {
        // GET: Demande
        public ActionResult FaireUneDemande()
        {
            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            // faire les requetes sql
            Demande d = new Demande();
            UserDAO user = new UserDAO();
            ViewBag.listeUsers = user.GetAll();
            return View(d);
        }

        [HttpPost]
        public ActionResult FaireUneDemande(Demande d)
        {          
            
            DemandeDAO demandeDao = new DemandeDAO();
            d.NumCompte = (int)Session["idUtilisateur"];
            demandeDao.Inserer(d);

            return RedirectToAction("Accueil", "Home");
        }

            public ActionResult validerNouvelleDemande()
        {
            return View();
        }
        public ActionResult modifierDemandeAide()
        {
            return View();
        }
        public ActionResult validerModificationDemande()
        {
            return View();
        }
        public ActionResult annulerDemande()
        {
            return View();
        }
        public ActionResult RechercheDemandeAide()
        {
            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            DemandeDAO dao = new DemandeDAO();
            ViewBag.listeDemandes = dao.GetAll();
            UserDAO user = new UserDAO();
            ViewBag.listeUsers = user.GetAll();
            return View();
        }
        [HttpPost]
        public ActionResult RechercheDemandeAide(string NumDemandeAide, Reponse r)
        {
            ReponseDAO repdao = new ReponseDAO();
            r.NumCompte = (int)Session["idUtilisateur"];
            repdao.Choisir(NumDemandeAide, r.NumCompte);
            return RedirectToAction("Accueil", "Home");
        }
        public ActionResult voirDemande()
        {
            return View();
        }
        public ActionResult validerPropositionDemande(DateTime DateReponse)
        {
            return View();
        }
        public ActionResult nePlusSeProposer()
        {
            return View();
        }
        public ActionResult ouiAccesNouvelleDemande()
        {
            return View();
        }
        public ActionResult nonAccesNouvelleDemande()
        {
            return View();
        }
    }
}