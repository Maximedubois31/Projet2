using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Projet2.Controllers
{
    public class UtilisateurController : Controller
    {
        // GET: Utilisateur
        public ActionResult Inscription()
        {
            return View();
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