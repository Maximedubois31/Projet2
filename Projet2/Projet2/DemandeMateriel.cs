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
    
    public partial class DemandeMateriel
    {
        public Nullable<int> Quantite { get; set; }
        public Nullable<int> NumDemandeAide { get; set; }
        public Nullable<int> IdTypeMateriel { get; set; }
        public int IdDM { get; set; }
    
        public virtual DemandeAide DemandeAide { get; set; }
        public virtual TypeMateriel TypeMateriel { get; set; }
    }
}
