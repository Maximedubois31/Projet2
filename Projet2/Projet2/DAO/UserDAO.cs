using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using Projet2.Models;

namespace Projet2.Dao
{
    public class UserDAO
    {
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";
        public void Inserer(User u)
        {
            
            // creer connection
            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            // creer commande
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "INSERT INTO Utilisateur (Nom, Prenom, DateDeNaissance, Email, NumeroTelephone, NumeroPortable, Login, Password, DateInscription) VALUES (@nom, @prenom, @datedenaissance, @email, @tel, @portable, @login, @password, @dateinscription)";

            // INJECTION SQL :
            // ---------------
            //    '','');DELETE FROM personne; --
            // INSERT INTO personne (nom, prenom) VALUES ('','');DELETE FROM personne; --, qsjhfgsj)

            // ajouter params commande
            cmd.Parameters.Add(new SqlParameter("nom", u.Nom));
            cmd.Parameters.Add(new SqlParameter("prenom", u.Prenom));
            cmd.Parameters.Add(new SqlParameter("datedenaissance", u.DateNaissance));
            cmd.Parameters.Add(new SqlParameter("email", u.Email));
            cmd.Parameters.Add(new SqlParameter("tel", u.Tel));
            cmd.Parameters.Add(new SqlParameter("portable", u.Portable));
            cmd.Parameters.Add(new SqlParameter("login", u.Login));
            cmd.Parameters.Add(new SqlParameter("password", u.Password));
            cmd.Parameters.Add(new SqlParameter("dateinscription", DateTime.Now.ToString()));


            // ouvrir connection
            cnx.Open();

            // executer commande
            cmd.ExecuteNonQuery();

            // fermer connection
            cnx.Close();
        }
    }
}