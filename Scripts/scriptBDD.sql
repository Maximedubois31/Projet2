USE [projet2Bdd]
GO
/****** Object:  Table [dbo].[AssociationPreferenceJour]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AssociationPreferenceJour]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AssociationPreferenceJour](
	[DateChoix] [date] NULL,
	[DateRenoncementChoix] [date] NULL,
	[HeureDebutDispo] [time](7) NULL,
	[HeureFinDispo] [time](7) NULL,
	[NumCompte] [int] NULL,
	[IdJour] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BesoinMateriel]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BesoinMateriel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BesoinMateriel](
	[QuantiteMateriel] [int] NULL,
	[IdTypeMateriel] [int] NULL,
	[IdTypeAide] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CategorieAide]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CategorieAide]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CategorieAide](
	[IdCategorie] [int] NOT NULL,
	[LibelleCategorie] [nvarchar](50) NULL,
 CONSTRAINT [PK_CategorieAide] PRIMARY KEY CLUSTERED 
(
	[IdCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[CodePostal]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CodePostal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CodePostal](
	[IdCodePostal] [int] NOT NULL,
	[CodePostal] [int] NULL,
 CONSTRAINT [PK_CodePostal] PRIMARY KEY CLUSTERED 
(
	[IdCodePostal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DemandeAide]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DemandeAide]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DemandeAide](
	[NumDemandeAide] [int] NOT NULL,
	[Description] [nchar](10) NULL,
	[DateDepotDemande] [nchar](10) NULL,
	[NoteBeneficiaire] [nchar](10) NULL,
	[NoteVolontaire] [nchar](10) NULL,
	[DateAnnulationDemande] [nchar](10) NULL,
	[DateTraitement] [nchar](10) NULL,
	[NumCompte] [int] NULL,
	[IdTypeAide] [int] NULL,
 CONSTRAINT [PK_DemandeAide] PRIMARY KEY CLUSTERED 
(
	[NumDemandeAide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[DemandeMateriel]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DemandeMateriel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DemandeMateriel](
	[Quantite] [int] NULL,
	[NumDemandeAide] [int] NULL,
	[IdTypeMateriel] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Jour]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jour]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Jour](
	[IdJour] [int] NOT NULL,
	[LibelleJour] [nchar](10) NULL,
 CONSTRAINT [PK_JourBis] PRIMARY KEY CLUSTERED 
(
	[IdJour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Pays]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pays]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pays](
	[IdPays] [int] NOT NULL,
	[LibellePays] [nchar](10) NULL,
 CONSTRAINT [PK_Pays] PRIMARY KEY CLUSTERED 
(
	[IdPays] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PreferenceAide]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreferenceAide]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PreferenceAide](
	[DateDebutChoixPrefAide] [date] NULL,
	[DateFinChoixPrefAide] [date] NULL,
	[IdTypeAide] [int] NULL,
	[NumCompte] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[PreferenceCategorie]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PreferenceCategorie]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PreferenceCategorie](
	[DateDebutChoixCategorie] [date] NULL,
	[DateFinChoixCategorie] [date] NULL,
	[IdCategorie] [int] NULL,
	[NumCompte] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Repondre]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Repondre]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Repondre](
	[DateReponse] [date] NULL,
	[DateRenonciation] [date] NULL,
	[NumDemandeAide] [int] NULL,
	[NumCompte] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TypeAide]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TypeAide]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TypeAide](
	[IdTypeAide] [int] NOT NULL,
	[LibelleAide] [nvarchar](50) NULL,
	[IdCategorie] [int] NOT NULL,
 CONSTRAINT [PK_TypeAide] PRIMARY KEY CLUSTERED 
(
	[IdTypeAide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TypeMateriel]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TypeMateriel]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TypeMateriel](
	[IdTypeMateriel] [int] NOT NULL,
	[LibelleTypeMateriel] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeMateriel] PRIMARY KEY CLUSTERED 
(
	[IdTypeMateriel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Utilisateur]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Utilisateur]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Utilisateur](
	[NumCompte] [int] NOT NULL,
	[Nom] [nvarchar](50) NULL,
	[Prenom] [nvarchar](50) NULL,
	[DateDeNaissance] [date] NULL,
	[DenominationRue] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[NumeroTelephone] [int] NULL,
	[NumeroPortable] [int] NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[DateInscription] [date] NULL,
	[DateDeinscription] [date] NULL,
	[IdVille] [int] NULL,
 CONSTRAINT [PK_Utilisateur] PRIMARY KEY CLUSTERED 
(
	[NumCompte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Ville]    Script Date: 22/01/2021 11:27:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ville]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ville](
	[IdVille] [int] NOT NULL,
	[LibelleVille] [nvarchar](50) NULL,
	[IdPays] [int] NULL,
	[IdCodePostal] [int] NULL,
 CONSTRAINT [PK_Ville] PRIMARY KEY CLUSTERED 
(
	[IdVille] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[CategorieAide] ([IdCategorie], [LibelleCategorie]) VALUES (1, N'Services à domicile')
INSERT [dbo].[CategorieAide] ([IdCategorie], [LibelleCategorie]) VALUES (2, N'Services extérieurs')
GO
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (1, 31000)
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (2, 33000)
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (3, 75000)
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (4, 34000)
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (1, N'Lundi     ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (2, N'Mardi     ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (3, N'Mercredi  ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (4, N'Jeudi     ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (5, N'Vendredi  ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (6, N'Samedi    ')
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (7, N'Dimanche  ')
GO
INSERT [dbo].[Pays] ([IdPays], [LibellePays]) VALUES (1, N'France    ')
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (1, N'Travaux', 1)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (2, N'Garde d''enfant', 1)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (3, N'Garde d''animaux', 1)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (4, N'Accompagnement scolaire', 1)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (5, N'Aide administrative', 1)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (6, N'Course alimentaire', 2)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (7, N'Course rapide', 2)
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (8, N'Promenade d''animaux', 2)
GO
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (1, N'Véhicule 5 places')
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (2, N'Fourgonnette')
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (3, N'Poussette')
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (4, N'Visseuse')
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (5, N'Tronçonneuse')
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (6, N'Bétonnière')
GO
INSERT [dbo].[Utilisateur] ([NumCompte], [Nom], [Prenom], [DateDeNaissance], [DenominationRue], [Email], [NumeroTelephone], [NumeroPortable], [Login], [Password], [DateInscription], [DateDeinscription], [IdVille]) VALUES (1, N'dub', N'max', CAST(N'1995-07-09' AS Date), N'razer', N'azazer', 5050505, 6060606, N'azr', N'azer', CAST(N'2099-09-09' AS Date), CAST(N'1994-05-20' AS Date), NULL)
GO
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (1, N'Toulouse', 1, 1)
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (2, N'Bordeaux', 1, 2)
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (3, N'Paris', 1, 3)
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (4, N'Montpellier', 1, 4)
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssociationPreferenceJour_JourBis]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssociationPreferenceJour]'))
ALTER TABLE [dbo].[AssociationPreferenceJour]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPreferenceJour_JourBis] FOREIGN KEY([IdJour])
REFERENCES [dbo].[Jour] ([IdJour])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssociationPreferenceJour_JourBis]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssociationPreferenceJour]'))
ALTER TABLE [dbo].[AssociationPreferenceJour] CHECK CONSTRAINT [FK_AssociationPreferenceJour_JourBis]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssociationPreferenceJour_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssociationPreferenceJour]'))
ALTER TABLE [dbo].[AssociationPreferenceJour]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPreferenceJour_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AssociationPreferenceJour_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[AssociationPreferenceJour]'))
ALTER TABLE [dbo].[AssociationPreferenceJour] CHECK CONSTRAINT [FK_AssociationPreferenceJour_Utilisateur]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BesoinMateriel_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[BesoinMateriel]'))
ALTER TABLE [dbo].[BesoinMateriel]  WITH CHECK ADD  CONSTRAINT [FK_BesoinMateriel_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BesoinMateriel_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[BesoinMateriel]'))
ALTER TABLE [dbo].[BesoinMateriel] CHECK CONSTRAINT [FK_BesoinMateriel_TypeAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BesoinMateriel_TypeMateriel]') AND parent_object_id = OBJECT_ID(N'[dbo].[BesoinMateriel]'))
ALTER TABLE [dbo].[BesoinMateriel]  WITH CHECK ADD  CONSTRAINT [FK_BesoinMateriel_TypeMateriel] FOREIGN KEY([IdTypeMateriel])
REFERENCES [dbo].[TypeMateriel] ([IdTypeMateriel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BesoinMateriel_TypeMateriel]') AND parent_object_id = OBJECT_ID(N'[dbo].[BesoinMateriel]'))
ALTER TABLE [dbo].[BesoinMateriel] CHECK CONSTRAINT [FK_BesoinMateriel_TypeMateriel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeAide_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeAide]'))
ALTER TABLE [dbo].[DemandeAide]  WITH CHECK ADD  CONSTRAINT [FK_DemandeAide_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeAide_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeAide]'))
ALTER TABLE [dbo].[DemandeAide] CHECK CONSTRAINT [FK_DemandeAide_TypeAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeAide_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeAide]'))
ALTER TABLE [dbo].[DemandeAide]  WITH CHECK ADD  CONSTRAINT [FK_DemandeAide_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeAide_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeAide]'))
ALTER TABLE [dbo].[DemandeAide] CHECK CONSTRAINT [FK_DemandeAide_Utilisateur]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeMateriel_DemandeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeMateriel]'))
ALTER TABLE [dbo].[DemandeMateriel]  WITH CHECK ADD  CONSTRAINT [FK_DemandeMateriel_DemandeAide] FOREIGN KEY([NumDemandeAide])
REFERENCES [dbo].[DemandeAide] ([NumDemandeAide])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeMateriel_DemandeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeMateriel]'))
ALTER TABLE [dbo].[DemandeMateriel] CHECK CONSTRAINT [FK_DemandeMateriel_DemandeAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeMateriel_TypeMateriel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeMateriel]'))
ALTER TABLE [dbo].[DemandeMateriel]  WITH CHECK ADD  CONSTRAINT [FK_DemandeMateriel_TypeMateriel] FOREIGN KEY([IdTypeMateriel])
REFERENCES [dbo].[TypeMateriel] ([IdTypeMateriel])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DemandeMateriel_TypeMateriel]') AND parent_object_id = OBJECT_ID(N'[dbo].[DemandeMateriel]'))
ALTER TABLE [dbo].[DemandeMateriel] CHECK CONSTRAINT [FK_DemandeMateriel_TypeMateriel]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceAide_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceAide]'))
ALTER TABLE [dbo].[PreferenceAide]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceAide_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceAide_TypeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceAide]'))
ALTER TABLE [dbo].[PreferenceAide] CHECK CONSTRAINT [FK_PreferenceAide_TypeAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceAide_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceAide]'))
ALTER TABLE [dbo].[PreferenceAide]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceAide_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceAide_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceAide]'))
ALTER TABLE [dbo].[PreferenceAide] CHECK CONSTRAINT [FK_PreferenceAide_Utilisateur]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceCategorie_CategorieAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceCategorie]'))
ALTER TABLE [dbo].[PreferenceCategorie]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceCategorie_CategorieAide] FOREIGN KEY([IdCategorie])
REFERENCES [dbo].[CategorieAide] ([IdCategorie])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceCategorie_CategorieAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceCategorie]'))
ALTER TABLE [dbo].[PreferenceCategorie] CHECK CONSTRAINT [FK_PreferenceCategorie_CategorieAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceCategorie_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceCategorie]'))
ALTER TABLE [dbo].[PreferenceCategorie]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceCategorie_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_PreferenceCategorie_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[PreferenceCategorie]'))
ALTER TABLE [dbo].[PreferenceCategorie] CHECK CONSTRAINT [FK_PreferenceCategorie_Utilisateur]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Repondre_DemandeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[Repondre]'))
ALTER TABLE [dbo].[Repondre]  WITH CHECK ADD  CONSTRAINT [FK_Repondre_DemandeAide] FOREIGN KEY([NumDemandeAide])
REFERENCES [dbo].[DemandeAide] ([NumDemandeAide])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Repondre_DemandeAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[Repondre]'))
ALTER TABLE [dbo].[Repondre] CHECK CONSTRAINT [FK_Repondre_DemandeAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Repondre_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[Repondre]'))
ALTER TABLE [dbo].[Repondre]  WITH CHECK ADD  CONSTRAINT [FK_Repondre_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Repondre_Utilisateur]') AND parent_object_id = OBJECT_ID(N'[dbo].[Repondre]'))
ALTER TABLE [dbo].[Repondre] CHECK CONSTRAINT [FK_Repondre_Utilisateur]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TypeAide_CategorieAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[TypeAide]'))
ALTER TABLE [dbo].[TypeAide]  WITH CHECK ADD  CONSTRAINT [FK_TypeAide_CategorieAide] FOREIGN KEY([IdCategorie])
REFERENCES [dbo].[CategorieAide] ([IdCategorie])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TypeAide_CategorieAide]') AND parent_object_id = OBJECT_ID(N'[dbo].[TypeAide]'))
ALTER TABLE [dbo].[TypeAide] CHECK CONSTRAINT [FK_TypeAide_CategorieAide]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Utilisateur_Ville]') AND parent_object_id = OBJECT_ID(N'[dbo].[Utilisateur]'))
ALTER TABLE [dbo].[Utilisateur]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateur_Ville] FOREIGN KEY([IdVille])
REFERENCES [dbo].[Ville] ([IdVille])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Utilisateur_Ville]') AND parent_object_id = OBJECT_ID(N'[dbo].[Utilisateur]'))
ALTER TABLE [dbo].[Utilisateur] CHECK CONSTRAINT [FK_Utilisateur_Ville]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ville_CodePostal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ville]'))
ALTER TABLE [dbo].[Ville]  WITH CHECK ADD  CONSTRAINT [FK_Ville_CodePostal] FOREIGN KEY([IdCodePostal])
REFERENCES [dbo].[CodePostal] ([IdCodePostal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ville_CodePostal]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ville]'))
ALTER TABLE [dbo].[Ville] CHECK CONSTRAINT [FK_Ville_CodePostal]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ville_Pays]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ville]'))
ALTER TABLE [dbo].[Ville]  WITH CHECK ADD  CONSTRAINT [FK_Ville_Pays] FOREIGN KEY([IdPays])
REFERENCES [dbo].[Pays] ([IdPays])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ville_Pays]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ville]'))
ALTER TABLE [dbo].[Ville] CHECK CONSTRAINT [FK_Ville_Pays]
GO
