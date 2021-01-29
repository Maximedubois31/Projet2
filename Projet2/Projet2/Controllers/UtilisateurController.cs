using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet2.Models;
using Projet2.Dao;

namespace Projet2.Controllers
{
    public class UtilisateurController : Controller
    {
        // GET: Utilisateur
        public ActionResult Inscription()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Inscription(string txtNom, string txtPrenom, DateTime dateNaissance, string txtEmail, int tel, int portable, string txtLogin, string password)
        {
            User u = new User();
            u.Nom = txtNom;
            u.Prenom = txtPrenom;
            u.DateNaissance = dateNaissance;
            u.Email = txtEmail;
            u.Tel = tel;
            u.Portable = portable;
            u.Login = txtLogin;
            u.Password = password;

            UserDAO userDao = new UserDAO();
            userDao.Inserer(u);

            return RedirectToAction("Accueil", "Home");
        }
        public ActionResult validerInscription()
        {
            return View();
        }

        public ActionResult suiviNouvellesDemandes()
        {
            return View();
        }

        public ActionResult monCompte()
        {

            if (Session["idUtilisateur"] == null)
            {
                return RedirectToAction("Connexion", "Authentification");
            }
            User u = new User();
            u.NumCompte = (int)Session["idUtilisateur"];
            UserDAO udao = new UserDAO();           
            ViewBag.InfoUser = udao.GetAllInfos(u);
            return View();
        }

        public ActionResult allerPreferencesAides()
        {
            return View();
        }

        public ActionResult validerPreferencesAides()
        {
            return View();
        }

        public ActionResult allerPreferencesJournalieresEtHoraires()
        {
            return View();
        }

        public ActionResult validerPreferencesJournalieresEtHoraires()
        {
            return View();
        }

        public ActionResult saisirIndisponibilites()
        {
            return View();
        }

        public ActionResult validerIndisponibilites()
        {
            return View();
        }

        public ActionResult modifierInfosPersonnelles()
        {
            return View();
        }

        public ActionResult validerModifPerso()
        {
            return View();
        }

        public ActionResult seDesinscrire()
        {
            return View();
        }

        public ActionResult validerDesinscription()
        {
            return View();
        }
    }
}