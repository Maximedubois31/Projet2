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

        public void Choisir(Demande d)
        {
            // creer connection
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            // creer commande
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "INSERT INTO Repondre (DateReponse, NumDemandeAide) VALUES (@DateReponse, @NumDemandeAide)";

            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = cnx;
            cmd2.CommandText = "SELECT NumDemandeAide FROM DemandeAide" +
                "               WHERE ";

            // ajouter params commande
            cmd.Parameters.Add(new SqlParameter("DateReponse", DateTime.Now));
            cmd.Parameters.Add(new SqlParameter("NumDemandeAide", r.NumDemandeAide));


            // ouvrir connection
            cnx.Open();

            // executer commande
            cmd.ExecuteNonQuery();

            // fermer connection
            cnx.Close();
        }
    }
}