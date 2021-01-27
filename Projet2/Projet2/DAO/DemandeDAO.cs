using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Projet2.Models;

namespace Projet2.DAO
{
    public class DemandeDAO
    {
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";
        public void Inserer(Demande d)
        {

            // creer connection
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            // creer commande
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "INSERT INTO Utilisateur (Description, dateDepotDemande, noteBeneficiaire, noteVolontaire, dateAnnulationDemande, dateTraitement, numCompte, idTypeAide, DateDepotDemande) VALUES (@Description, @dateDepotDemande, @noteBeneficiaire, @noteVolontaire, @dateAnnulationDemande, @dateTraitement, @numCompte, @idTypeAide, @dateDepotDemande)";

            // INJECTION SQL :
            // ---------------
            //    '','');DELETE FROM personne; --
            // INSERT INTO personne (nom, prenom) VALUES ('','');DELETE FROM personne; --, qsjhfgsj)
            var numeroCompte = select NumCompte from Utilisateur;
                

            // ajouter params commande
            cmd.Parameters.Add(new SqlParameter("Description", d.Description));
            cmd.Parameters.Add(new SqlParameter("dateDepotDemande", d.dateDepotDemande));
            cmd.Parameters.Add(new SqlParameter("noteBeneficiaire", d.noteBeneficiaire));
            cmd.Parameters.Add(new SqlParameter("noteVolontaire", d.noteVolontaire));
            cmd.Parameters.Add(new SqlParameter("dateAnnulationDemande", d.dateAnnulationDemande));
            cmd.Parameters.Add(new SqlParameter("dateTraitement", d.dateTraitement));
            cmd.Parameters.Add(new SqlParameter("numCompte", d.numCompte));
            cmd.Parameters.Add(new SqlParameter("idTypeAide", d.idTypeAide));
            cmd.Parameters.Add(new SqlParameter("dateDepotDemande", DateTime.Now.ToString()));



             
            // ouvrir connection
            cnx.Open();

            // executer commande
            cmd.ExecuteNonQuery();

            // fermer connection
            cnx.Close();
        }
    }
}
    }
}