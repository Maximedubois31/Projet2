//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Projet2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Repondre
    {
        public Nullable<System.DateTime> DateReponse { get; set; }
        public Nullable<System.DateTime> DateRenonciation { get; set; }
        public Nullable<int> NumDemandeAide { get; set; }
        public Nullable<int> NumCompte { get; set; }
        public int IdREP { get; set; }
    
        public virtual DemandeAide DemandeAide { get; set; }
        public virtual Utilisateur Utilisateur { get; set; }
    }
}
