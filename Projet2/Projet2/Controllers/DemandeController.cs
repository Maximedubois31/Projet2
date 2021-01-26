
using Projet2.DAO;
using Projet2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Projet2.Controllers
{
    public class DemandeController : Controller
    {
        // GET: Demande
        public ActionResult FaireUneDemande()
        {
            return View();
        }

        public ActionResult Demande(string Description, string dateDepotDemande, int noteBeneficiaire, int noteVolontaire, string dateAnnulationDemande, string dateTraitement)
        {
            Demande d = new Demande();
            d.Description = Description;
            d.dateDepotDemande = dateDepotDemande;
            d.noteBeneficiaire = noteBeneficiaire;
            d.noteVolontaire = noteVolontaire;
            d.dateAnnulationDemande = dateAnnulationDemande;
            d.dateTraitement = dateTraitement;
            

            DemandeDAO demandeDao = new DemandeDAO();
            demandeDao.Inserer(d);

            return RedirectToAction("Acceuil", "Home");
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
        public ActionResult rechercherDemande()
        {
            return View();
        }
        public ActionResult voirDemande()
        {
            return View();
        }
        public ActionResult validerPropositionDemande()
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