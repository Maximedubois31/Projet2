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
            cmd.CommandText = "INSERT INTO DemandeAide (Description, noteBeneficiaire, noteVolontaire, dateTraitement, idTypeAide, DateDepotDemande) VALUES (@Description, @noteBeneficiaire, @noteVolontaire, @dateTraitement, @idTypeAide, @dateDepotDemande)";

            //var numeroCompte = "SELECT NumCompte FROM Utilisateur";

            // ajouter params commande
            cmd.Parameters.Add(new SqlParameter("Description", d.description));
            cmd.Parameters.Add(new SqlParameter("noteBeneficiaire", d.noteBeneficiaire));
            cmd.Parameters.Add(new SqlParameter("noteVolontaire", d.noteVolontaire));
            //cmd.Parameters.Add(new SqlParameter("dateAnnulationDemande", d.dateAnnulationDemande));
            cmd.Parameters.Add(new SqlParameter("dateTraitement", d.dateTraitement));
            //cmd.Parameters.Add(new SqlParameter("numCompte", numeroCompte));
            cmd.Parameters.Add(new SqlParameter("IdTypeAide", d.IdTypeAide));
            cmd.Parameters.Add(new SqlParameter("dateDepotDemande", DateTime.Now));

            // ouvrir connection
            cnx.Open();

            // executer commande
            cmd.ExecuteNonQuery();

            // fermer connection
            cnx.Close();
        }
    }
}
