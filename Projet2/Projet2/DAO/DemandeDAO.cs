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
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.CommandText = "CreerDemande";

            // ajouter params commande
           
            cmd.Parameters.Add(new SqlParameter("Description", d.description));
            cmd.Parameters.Add(new SqlParameter("dateTraitement", d.dateTraitement));
            cmd.Parameters.Add(new SqlParameter("IdTypeAide", d.IdTypeAide));
            cmd.Parameters.Add(new SqlParameter("DateDepotDemande", DateTime.Now));
            cmd.Parameters.Add(new SqlParameter("HeureTraitement", d.heureTraitement));
            cmd.Parameters.Add(new SqlParameter("NumCompte", d.NumCompte));

            // ouvrir connection
            cnx.Open();

            // executer commande
            SqlDataReader dr = cmd.ExecuteReader();
            Decimal resultat = 0;
            while (dr.Read())
            {
                resultat = dr.GetDecimal(dr.GetOrdinal("NumAide"));
            }
            dr.Close();

            cmd.Parameters.Clear();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Repondre (NumDemandeAide) VALUES (@NumDemandeAide)";
            cmd.Parameters.Add(new SqlParameter("NumDemandeAide", resultat));
            cmd.ExecuteNonQuery();
            // fermer connection
            cnx.Close();
        }

        public List<Demande> GetAll()
        {

            List<Demande> resultat = new List<Demande>();

            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT R.DateReponse, R.NumDemandeAide, D.NumDemandeAide, T.LibelleAide, D.DateTraitement, D.HeureTraitement, D.Description" +
                "              FROM TypeAide T, DemandeAide D, Repondre R" +
                "              WHERE T.IdTypeAide = D.IdTypeAide" +
                "              AND R.NumDemandeAide = D.NumDemandeAide" +
                "              AND R.DateReponse is null";     


            cnx.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Demande d = new Demande();
                d.dateTraitement = dr.GetDateTime(dr.GetOrdinal("DateTraitement"));
                d.heureTraitement = dr.GetString(dr.GetOrdinal("HeureTraitement"));
                d.LibelleAide = dr.GetString(dr.GetOrdinal("LibelleAide"));
                d.description = dr.GetString(dr.GetOrdinal("Description"));
                d.NumDemandeAide = dr.GetInt32(dr.GetOrdinal("NumDemandeAide"));

                resultat.Add(d);
            }
            cnx.Close();
            return resultat;
        }

        public List<Demande> GetAllDemandeEnCours(User u)
        {
            List<Demande> ListeDemandeEnCours = new List<Demande>();

            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT D.DateTraitement, D.HeureTraitement, D.Description, D.NumDemandeAide, T.LibelleAide " +
                "              FROM DemandeAide D, TypeAide T " +
                "              WHERE NumCompte = @NumCompte" +
                "              AND T.IdTypeAide = D.IdTypeAide";
            cmd.Parameters.Add(new SqlParameter("@NumCompte", u.NumCompte));

            cnx.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Demande d = new Demande();
                d.dateTraitement = dr.GetDateTime(dr.GetOrdinal("DateTraitement"));
                d.heureTraitement = dr.GetString(dr.GetOrdinal("HeureTraitement"));
                d.LibelleAide = dr.GetString(dr.GetOrdinal("LibelleAide"));
                d.description = dr.GetString(dr.GetOrdinal("Description"));
                d.NumDemandeAide = dr.GetInt32(dr.GetOrdinal("NumDemandeAide"));

                ListeDemandeEnCours.Add(d);
            }
            cnx.Close();

            return ListeDemandeEnCours;
        }

        public List<Demande> GetAllPropositionEnCours(User u)
        {
            List<Demande> ListePropositionEnCours = new List<Demande>();

            SqlConnection cnx = new SqlConnection();
            cnx.ConnectionString = CNX_STR;

            SqlCommand cmd = new SqlCommand();
            cmd.Connection = cnx;
            cmd.CommandText = "SELECT D.DateTraitement, D.HeureTraitement, D.Description, D.NumDemandeAide, T.LibelleAide " +
                "              FROM DemandeAide D, TypeAide T, Repondre R " +
                "              WHERE R.NumCompte = @NumCompte" +
                "              AND T.IdTypeAide = D.IdTypeAide" +
                "              AND R.NumDemandeAide = D.NumDemandeAide";

            cmd.Parameters.Add(new SqlParameter("@NumCompte", u.NumCompte));

            cnx.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            while (dr.Read())
            {
                Demande d = new Demande();
                d.dateTraitement = dr.GetDateTime(dr.GetOrdinal("DateTraitement"));
                d.heureTraitement = dr.GetString(dr.GetOrdinal("HeureTraitement"));
                d.LibelleAide = dr.GetString(dr.GetOrdinal("LibelleAide"));
                d.description = dr.GetString(dr.GetOrdinal("Description"));
                d.NumDemandeAide = dr.GetInt32(dr.GetOrdinal("NumDemandeAide"));

                ListePropositionEnCours.Add(d);
            }
            cnx.Close();

            return ListePropositionEnCours;
        }

    }
}
