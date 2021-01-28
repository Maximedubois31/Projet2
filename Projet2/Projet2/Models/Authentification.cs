using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Projet2.Models
{
    public class Authentification
    {

        public bool valide;

        public void finConnexion()
        {

        }

        public void pageConnexion()
        {

        }
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";
        public bool ValidateUser(string userName, string passWord)
        {
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT count(1) " +
                "              FROM Utilisateur " +
                "              WHERE Login = @userName " +
                "               AND Password = @password";

            
            cmd.Parameters.Add(new SqlParameter("@userName", userName));
            cmd.Parameters.Add(new SqlParameter("@password", passWord));

            cnx.Open();
            int nbResultats = (int)cmd.ExecuteScalar();

            if( nbResultats > 0)
            {
                valide = true;
            }
            else
            {
                valide = false;
            }
 
            return valide;
        }
    }
}