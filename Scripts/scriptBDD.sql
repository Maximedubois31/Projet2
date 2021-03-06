USE [master]
GO
/****** Object:  Database [projet2Bdd]    Script Date: 26/01/2021 10:14:21 ******/
CREATE DATABASE [projet2Bdd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'projet2Bdd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\projet2Bdd.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'projet2Bdd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\projet2Bdd_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [projet2Bdd] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [projet2Bdd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [projet2Bdd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [projet2Bdd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [projet2Bdd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [projet2Bdd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [projet2Bdd] SET ARITHABORT OFF 
GO
ALTER DATABASE [projet2Bdd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [projet2Bdd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [projet2Bdd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [projet2Bdd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [projet2Bdd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [projet2Bdd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [projet2Bdd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [projet2Bdd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [projet2Bdd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [projet2Bdd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [projet2Bdd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [projet2Bdd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [projet2Bdd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [projet2Bdd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [projet2Bdd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [projet2Bdd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [projet2Bdd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [projet2Bdd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [projet2Bdd] SET  MULTI_USER 
GO
ALTER DATABASE [projet2Bdd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [projet2Bdd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [projet2Bdd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [projet2Bdd] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [projet2Bdd] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [projet2Bdd] SET QUERY_STORE = OFF
GO
USE [projet2Bdd]
GO
/****** Object:  Table [dbo].[AssociationPreferenceJour]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AssociationPreferenceJour](
	[DateChoix] [date] NULL,
	[DateRenoncementChoix] [date] NULL,
	[HeureDebutDispo] [time](7) NULL,
	[HeureFinDispo] [time](7) NULL,
	[NumCompte] [int] NULL,
	[IdJour] [int] NULL,
	[Idapj] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Idapj] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BesoinMateriel]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BesoinMateriel](
	[QuantiteMateriel] [int] NULL,
	[IdTypeMateriel] [int] NULL,
	[IdTypeAide] [int] NULL,
	[IdBM] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdBM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategorieAide]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategorieAide](
	[IdCategorie] [int] IDENTITY(1,1) NOT NULL,
	[LibelleCategorie] [nvarchar](50) NULL,
 CONSTRAINT [PK_CategorieAide] PRIMARY KEY CLUSTERED 
(
	[IdCategorie] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CodePostal]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CodePostal](
	[IdCodePostal] [int] IDENTITY(1,1) NOT NULL,
	[CodePostal] [int] NULL,
 CONSTRAINT [PK_CodePostal] PRIMARY KEY CLUSTERED 
(
	[IdCodePostal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DemandeAide]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandeAide](
	[NumDemandeAide] [int] IDENTITY(1,1) NOT NULL,
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
GO
/****** Object:  Table [dbo].[DemandeMateriel]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemandeMateriel](
	[Quantite] [int] NULL,
	[NumDemandeAide] [int] NULL,
	[IdTypeMateriel] [int] NULL,
	[IdDM] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jour]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jour](
	[IdJour] [int] IDENTITY(1,1) NOT NULL,
	[LibelleJour] [nchar](10) NULL,
 CONSTRAINT [PK_JourBis] PRIMARY KEY CLUSTERED 
(
	[IdJour] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pays]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pays](
	[IdPays] [int] IDENTITY(1,1) NOT NULL,
	[LibellePays] [nchar](10) NULL,
 CONSTRAINT [PK_Pays] PRIMARY KEY CLUSTERED 
(
	[IdPays] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceAide]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceAide](
	[DateDebutChoixPrefAide] [date] NULL,
	[DateFinChoixPrefAide] [date] NULL,
	[IdTypeAide] [int] NULL,
	[NumCompte] [int] NULL,
	[IdPA] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PreferenceCategorie]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PreferenceCategorie](
	[DateDebutChoixCategorie] [date] NULL,
	[DateFinChoixCategorie] [date] NULL,
	[IdCategorie] [int] NULL,
	[NumCompte] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repondre]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repondre](
	[DateReponse] [date] NULL,
	[DateRenonciation] [date] NULL,
	[NumDemandeAide] [int] NULL,
	[NumCompte] [int] NULL,
	[IdREP] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdREP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAide]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAide](
	[IdTypeAide] [int] IDENTITY(1,1) NOT NULL,
	[LibelleAide] [nvarchar](50) NULL,
	[IdCategorie] [int] NOT NULL,
 CONSTRAINT [PK_TypeAide] PRIMARY KEY CLUSTERED 
(
	[IdTypeAide] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeMateriel]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeMateriel](
	[IdTypeMateriel] [int] IDENTITY(1,1) NOT NULL,
	[LibelleTypeMateriel] [nvarchar](50) NULL,
 CONSTRAINT [PK_TypeMateriel] PRIMARY KEY CLUSTERED 
(
	[IdTypeMateriel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilisateur]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilisateur](
	[NumCompte] [int] IDENTITY(1,1) NOT NULL,
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
GO
/****** Object:  Table [dbo].[Ville]    Script Date: 26/01/2021 10:14:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ville](
	[IdVille] [int] IDENTITY(1,1) NOT NULL,
	[LibelleVille] [nvarchar](50) NULL,
	[IdPays] [int] NULL,
	[IdCodePostal] [int] NULL,
 CONSTRAINT [PK_Ville] PRIMARY KEY CLUSTERED 
(
	[IdVille] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CategorieAide] ON 
GO
INSERT [dbo].[CategorieAide] ([IdCategorie], [LibelleCategorie]) VALUES (1, N'Services à domicile')
GO
INSERT [dbo].[CategorieAide] ([IdCategorie], [LibelleCategorie]) VALUES (2, N'Services extérieurs')
GO
SET IDENTITY_INSERT [dbo].[CategorieAide] OFF
GO
SET IDENTITY_INSERT [dbo].[CodePostal] ON 
GO
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (1, 31000)
GO
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (2, 33000)
GO
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (3, 75000)
GO
INSERT [dbo].[CodePostal] ([IdCodePostal], [CodePostal]) VALUES (4, 34000)
GO
SET IDENTITY_INSERT [dbo].[CodePostal] OFF
GO
SET IDENTITY_INSERT [dbo].[Jour] ON 
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (1, N'Lundi     ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (2, N'Mardi     ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (3, N'Mercredi  ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (4, N'Jeudi     ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (5, N'Vendredi  ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (6, N'Samedi    ')
GO
INSERT [dbo].[Jour] ([IdJour], [LibelleJour]) VALUES (7, N'Dimanche  ')
GO
SET IDENTITY_INSERT [dbo].[Jour] OFF
GO
SET IDENTITY_INSERT [dbo].[Pays] ON 
GO
INSERT [dbo].[Pays] ([IdPays], [LibellePays]) VALUES (1, N'France    ')
GO
SET IDENTITY_INSERT [dbo].[Pays] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeAide] ON 
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (10, N'Travaux', 1)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (11, N'Garde d''''enfant', 1)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (12, N'Garde d''''animaux', 1)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (13, N'Accompagnement scolaire', 1)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (14, N'Aide administrative', 1)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (15, N'Course alimentaire', 2)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (16, N'Course rapide', 2)
GO
INSERT [dbo].[TypeAide] ([IdTypeAide], [LibelleAide], [IdCategorie]) VALUES (17, N'Promenade d''''animaux', 2)
GO
SET IDENTITY_INSERT [dbo].[TypeAide] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeMateriel] ON 
GO
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (1, N'Véhicule 5 places')
GO
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (2, N'Fourgonnette')
GO
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (3, N'Poussette')
GO
INSERT [dbo].[TypeMateriel] ([IdTypeMateriel], [LibelleTypeMateriel]) VALUES (4, N'Visseuse')
GO
SET IDENTITY_INSERT [dbo].[TypeMateriel] OFF
GO
SET IDENTITY_INSERT [dbo].[Ville] ON 
GO
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (1, N'Toulouse', 1, 1)
GO
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (2, N'Bordeaux', 1, 2)
GO
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (3, N'Paris', 1, 3)
GO
INSERT [dbo].[Ville] ([IdVille], [LibelleVille], [IdPays], [IdCodePostal]) VALUES (4, N'Montpellier', 1, 4)
GO
SET IDENTITY_INSERT [dbo].[Ville] OFF
GO
ALTER TABLE [dbo].[AssociationPreferenceJour]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPreferenceJour_JourBis] FOREIGN KEY([IdJour])
REFERENCES [dbo].[Jour] ([IdJour])
GO
ALTER TABLE [dbo].[AssociationPreferenceJour] CHECK CONSTRAINT [FK_AssociationPreferenceJour_JourBis]
GO
ALTER TABLE [dbo].[AssociationPreferenceJour]  WITH CHECK ADD  CONSTRAINT [FK_AssociationPreferenceJour_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
ALTER TABLE [dbo].[AssociationPreferenceJour] CHECK CONSTRAINT [FK_AssociationPreferenceJour_Utilisateur]
GO
ALTER TABLE [dbo].[BesoinMateriel]  WITH CHECK ADD  CONSTRAINT [FK_BesoinMateriel_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
ALTER TABLE [dbo].[BesoinMateriel] CHECK CONSTRAINT [FK_BesoinMateriel_TypeAide]
GO
ALTER TABLE [dbo].[BesoinMateriel]  WITH CHECK ADD  CONSTRAINT [FK_BesoinMateriel_TypeMateriel] FOREIGN KEY([IdTypeMateriel])
REFERENCES [dbo].[TypeMateriel] ([IdTypeMateriel])
GO
ALTER TABLE [dbo].[BesoinMateriel] CHECK CONSTRAINT [FK_BesoinMateriel_TypeMateriel]
GO
ALTER TABLE [dbo].[DemandeAide]  WITH CHECK ADD  CONSTRAINT [FK_DemandeAide_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
ALTER TABLE [dbo].[DemandeAide] CHECK CONSTRAINT [FK_DemandeAide_TypeAide]
GO
ALTER TABLE [dbo].[DemandeAide]  WITH CHECK ADD  CONSTRAINT [FK_DemandeAide_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
ALTER TABLE [dbo].[DemandeAide] CHECK CONSTRAINT [FK_DemandeAide_Utilisateur]
GO
ALTER TABLE [dbo].[DemandeMateriel]  WITH CHECK ADD  CONSTRAINT [FK_DemandeMateriel_DemandeAide] FOREIGN KEY([NumDemandeAide])
REFERENCES [dbo].[DemandeAide] ([NumDemandeAide])
GO
ALTER TABLE [dbo].[DemandeMateriel] CHECK CONSTRAINT [FK_DemandeMateriel_DemandeAide]
GO
ALTER TABLE [dbo].[DemandeMateriel]  WITH CHECK ADD  CONSTRAINT [FK_DemandeMateriel_TypeMateriel] FOREIGN KEY([IdTypeMateriel])
REFERENCES [dbo].[TypeMateriel] ([IdTypeMateriel])
GO
ALTER TABLE [dbo].[DemandeMateriel] CHECK CONSTRAINT [FK_DemandeMateriel_TypeMateriel]
GO
ALTER TABLE [dbo].[PreferenceAide]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceAide_TypeAide] FOREIGN KEY([IdTypeAide])
REFERENCES [dbo].[TypeAide] ([IdTypeAide])
GO
ALTER TABLE [dbo].[PreferenceAide] CHECK CONSTRAINT [FK_PreferenceAide_TypeAide]
GO
ALTER TABLE [dbo].[PreferenceAide]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceAide_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
ALTER TABLE [dbo].[PreferenceAide] CHECK CONSTRAINT [FK_PreferenceAide_Utilisateur]
GO
ALTER TABLE [dbo].[PreferenceCategorie]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceCategorie_CategorieAide] FOREIGN KEY([IdCategorie])
REFERENCES [dbo].[CategorieAide] ([IdCategorie])
GO
ALTER TABLE [dbo].[PreferenceCategorie] CHECK CONSTRAINT [FK_PreferenceCategorie_CategorieAide]
GO
ALTER TABLE [dbo].[PreferenceCategorie]  WITH CHECK ADD  CONSTRAINT [FK_PreferenceCategorie_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
ALTER TABLE [dbo].[PreferenceCategorie] CHECK CONSTRAINT [FK_PreferenceCategorie_Utilisateur]
GO
ALTER TABLE [dbo].[Repondre]  WITH CHECK ADD  CONSTRAINT [FK_Repondre_DemandeAide] FOREIGN KEY([NumDemandeAide])
REFERENCES [dbo].[DemandeAide] ([NumDemandeAide])
GO
ALTER TABLE [dbo].[Repondre] CHECK CONSTRAINT [FK_Repondre_DemandeAide]
GO
ALTER TABLE [dbo].[Repondre]  WITH CHECK ADD  CONSTRAINT [FK_Repondre_Utilisateur] FOREIGN KEY([NumCompte])
REFERENCES [dbo].[Utilisateur] ([NumCompte])
GO
ALTER TABLE [dbo].[Repondre] CHECK CONSTRAINT [FK_Repondre_Utilisateur]
GO
ALTER TABLE [dbo].[TypeAide]  WITH CHECK ADD  CONSTRAINT [FK_TypeAide_CategorieAide] FOREIGN KEY([IdCategorie])
REFERENCES [dbo].[CategorieAide] ([IdCategorie])
GO
ALTER TABLE [dbo].[TypeAide] CHECK CONSTRAINT [FK_TypeAide_CategorieAide]
GO
ALTER TABLE [dbo].[Utilisateur]  WITH CHECK ADD  CONSTRAINT [FK_Utilisateur_Ville] FOREIGN KEY([IdVille])
REFERENCES [dbo].[Ville] ([IdVille])
GO
ALTER TABLE [dbo].[Utilisateur] CHECK CONSTRAINT [FK_Utilisateur_Ville]
GO
ALTER TABLE [dbo].[Ville]  WITH CHECK ADD  CONSTRAINT [FK_Ville_CodePostal] FOREIGN KEY([IdCodePostal])
REFERENCES [dbo].[CodePostal] ([IdCodePostal])
GO
ALTER TABLE [dbo].[Ville] CHECK CONSTRAINT [FK_Ville_CodePostal]
GO
ALTER TABLE [dbo].[Ville]  WITH CHECK ADD  CONSTRAINT [FK_Ville_Pays] FOREIGN KEY([IdPays])
REFERENCES [dbo].[Pays] ([IdPays])
GO
ALTER TABLE [dbo].[Ville] CHECK CONSTRAINT [FK_Ville_Pays]
GO
USE [master]
GO
ALTER DATABASE [projet2Bdd] SET  READ_WRITE 
GO
