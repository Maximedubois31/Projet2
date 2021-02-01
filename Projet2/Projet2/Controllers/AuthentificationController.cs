using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Projet2.Models;
using System.Data.SqlClient;

namespace Projet2.Controllers
{
    
    public class AuthentificationController : Controller
    {
        private const string CNX_STR = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=projet2Bdd;Integrated Security=True";
        // GET: Authentification
        public ActionResult seDeconnecter()
        {
            Session.Clear();
            return RedirectToAction("Authentification", "Connexion"); ;
        }
        public ActionResult Connexion()
        {  
            return View();
        }
        [HttpPost]
        public ActionResult Connexion(string txtUserName, string txtUserPass)
        {
            Session.Clear();
            // ecrire
            

            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT NumCompte FROM Utilisateur" +
                "               WHERE Login = @userName " +
                "               AND Password = @password";


            cmd.Parameters.Add(new SqlParameter("@userName", txtUserName));
            cmd.Parameters.Add(new SqlParameter("@password", txtUserPass));
            
            
            
            Authentification authen = new Authentification();
            authen.ValidateUser(txtUserName, txtUserPass);
            if (authen.valide == true)
            {
                cnx.Open();
                int NumCompte = (int)cmd.ExecuteScalar();
                Session["idUtilisateur"] = NumCompte;
                int idUtilsateur = (int)Session["idUtilisateur"];
                cnx.Close();
                return RedirectToAction("Accueil", "Home");
            }
            else
            {
                return View();
            }
            
        }
    }
}