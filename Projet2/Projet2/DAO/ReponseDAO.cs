using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Projet2.Models;

namespace Projet2.DAO
{
    public class ReponseDAO
    {
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";

        public void Choisir(string NumDemandeAide, string NumCompte)
        {
            // creer connection
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            // creer commande
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "INSERT INTO Repondre (DateReponse, NumDemandeAide, NumCompte) VALUES (@DateReponse, @NumDemandeAide, @NumCompte)";

            // ajouter params commande
            cmd.Parameters.Add(new SqlParameter("@DateReponse", DateTime.Now));
            cmd.Parameters.Add(new SqlParameter("@NumDemandeAide", NumDemandeAide));
            cmd.Parameters.Add(new SqlParameter("@NumCompte", NumCompte));

            // ouvrir connection
            cnx.Open();

            // executer commande
            cmd.ExecuteNonQuery();

            // fermer connection
            cnx.Close();
        }
    }
}