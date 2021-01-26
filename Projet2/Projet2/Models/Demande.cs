using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Projet2.Models
{
    public class Demande
    {


        public string Description { get; internal set; }
        public int noteVolontaire { get; internal set; }
        public string dateDepotDemande { get; internal set; }
        public int noteBeneficiaire { get; internal set; }
        public string dateAnnulationDemande { get; internal set; }
        public string dateTraitement { get; internal set; }
        public int numCompte { get; internal set; }

        public void creationUneDemandeATraiter()
        {

        }

        public void ajoutListeDemandeATraiter()
        {

        }

        public void valideModifDemande()
        {

        }

        public void annulerUneDemandeATraiter()
        {

        }

        public void retraitListeDemandeATraiter()
        {

        }

        public void listeDemande()
        {

        }

        public void afficherDemande()
        {

        }

        public void integrerDemandeVolontaire()
        {

        }

        public void enregistrerUneDateReponse()
        {

        }

        public void annulerUneReponse()
        {

        }

        public void filtrerListeDemandeATraiter()
        {

        }

    }
}