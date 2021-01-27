using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Projet2.Models
{
    public class Demande
    {
        public string description { get; set; } 
        public int noteVolontaire { get; set; }
        public DateTime dateDepotDemande { get; set; }
        public int noteBeneficiaire { get; set; }
        public DateTime? dateAnnulationDemande { get; set; }
        public DateTime dateTraitement { get; set; }
        public string heureTraitement { get; set; }
        public List<TypeHelp> ListTypeHelp { get; set; } //classe catégorie
        //propriété catégorie
        public int IdTypeAide { get; set; }

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
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";
        public Demande()
        {
            ListTypeHelp = new List<TypeHelp>(); //créer une methode pour recup en base les infos 
            // creer connection
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            // creer commande
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT IdTypeAide, LibelleAide FROM TypeAide";

            cnx.Open();
            SqlDataReader dr = cmd.ExecuteReader();
    
            while(dr.Read())
            {
                TypeHelp th = new TypeHelp();
                th.Id = dr.GetInt32(dr.GetOrdinal("IdTypeAide"));
                th.Label = dr.GetString(dr.GetOrdinal("LibelleAide"));

                ListTypeHelp.Add(th);
            }

            cnx.Close();
        }
    }
}