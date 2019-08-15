USE [master]
GO
/****** Object:  Database [finalProject]    Script Date: 15.08.2019 21:13:57 ******/
CREATE DATABASE [finalProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'finalProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\finalProject.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'finalProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\finalProject_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [finalProject] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [finalProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [finalProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [finalProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [finalProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [finalProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [finalProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [finalProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [finalProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [finalProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [finalProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [finalProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [finalProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [finalProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [finalProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [finalProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [finalProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [finalProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [finalProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [finalProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [finalProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [finalProject] SET  MULTI_USER 
GO
ALTER DATABASE [finalProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [finalProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [finalProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [finalProject] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [finalProject] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [finalProject] SET QUERY_STORE = OFF
GO
USE [finalProject]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 15.08.2019 21:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](1250) NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accardion]    Script Date: 15.08.2019 21:13:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accardion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Accardion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accessories]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accessories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Price] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Accessories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdminUsers]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Surname] [nvarchar](250) NOT NULL,
	[Username] [nvarchar](250) NOT NULL,
	[Pasword] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AdminUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AksesuarQurasdirma]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AksesuarQurasdirma](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainHeader] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
	[Image2] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AksesuarQurasdirma] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutoPlanet]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoPlanet](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_AutoPlanet] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Battaries]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Battaries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Price] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Battaries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChooseUs]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChooseUs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ChooseUs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChooseUsTags]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChooseUsTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_ChooseUsTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adress] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Details]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Details](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Text] [nvarchar](250) NULL,
	[Price] [nvarchar](250) NULL,
 CONSTRAINT [PK_Details] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterBottom]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterBottom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ContextLeft] [nvarchar](250) NOT NULL,
	[ContextRightFirstSpan] [nvarchar](250) NOT NULL,
	[ContextRightSecondSpan] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_FooterBottom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterMiddle]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterMiddle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstcolContext] [nvarchar](250) NOT NULL,
	[SecondcolHeader] [nvarchar](250) NOT NULL,
	[SecondcolContext] [nvarchar](250) NOT NULL,
	[ThirdcolHeader] [nvarchar](250) NOT NULL,
	[ThirdcolContextTop] [nvarchar](250) NOT NULL,
	[ThirdcolContextBottom] [nvarchar](250) NOT NULL,
	[FourthcolHeader] [nvarchar](250) NOT NULL,
	[FourthcolContextFirstspan] [nvarchar](250) NOT NULL,
	[FourthcolContextSecondspan] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_FooterMiddle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterTop]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterTop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationHeader] [nvarchar](250) NOT NULL,
	[LocationContext] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_FooterTop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeaderBottom]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderBottom](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Navbar] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_HeaderBottom] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeaderMiddle]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderMiddle](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Logo] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_HeaderMiddle] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HeaderTop]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeaderTop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[WorkTime] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_HeaderTop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSlider]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSlider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_HomeSlider] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSliderSlick]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSliderSlick](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_HomeSliderSlick] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Portfolios]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Portfolios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Portfolios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Shop] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ustun]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ustun](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Ustun] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UstunContent]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UstunContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Number] [int] NOT NULL,
	[Icon] [nvarchar](250) NOT NULL,
	[Hearder] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_UstunContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WeOffer]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WeOffer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_WeOffer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[XidmetContent]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[XidmetContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_XidmetContent] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xidmetler]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xidmetler](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Xidmetler] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[yagalama]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[yagalama](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MainHeader] [nvarchar](250) NOT NULL,
	[Image1] [nvarchar](250) NOT NULL,
	[Image2] [nvarchar](250) NOT NULL,
	[Header] [nvarchar](250) NOT NULL,
	[Context] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_yagalama] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yaglar]    Script Date: 15.08.2019 21:13:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yaglar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Price] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Yaglar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Abouts] ON 

INSERT [dbo].[Abouts] ([Id], [Header], [Context]) VALUES (1, N'qesem', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laboriosam incidunt eum mollitia sed sequi dolor eos voluptates provident consectetur quam, autem dignissimos perspiciatis unde, excepturi expedita vitae esse eligendi. Lorem ipsum dolor sit, amet consectetur adipisicing elit. Id impedit recusandae incidunt dolorum quia sit nesciunt, eum eaque alias deserunt voluptates omnis distinctio ad illum dolor blanditiis numquam fuga voluptate! Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore doloremque nesciunt facere debitis iusto quam cupiditate facilis accusantium ab fugit unde perferendis autem voluptate neque aliquam, omnis consectetur! Repudiandae, nemo! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Placeat inventore necessitatibus accusamus molestias repellendus error illo culpa asperiores quia, vitae voluptatem omnis at, doloribus reiciendis nihil ad eaque impedit unde.')
SET IDENTITY_INSERT [dbo].[Abouts] OFF
SET IDENTITY_INSERT [dbo].[Accardion] ON 

INSERT [dbo].[Accardion] ([Id], [Context], [Header]) VALUES (1, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero adipisci assumenda hic! Excepturi mollitia beatae, incidunt ab harum nemo commodi earum iste eaque, nostrum, vel blanditiis fuga neque natus accusantium.', N'Section 1')
INSERT [dbo].[Accardion] ([Id], [Context], [Header]) VALUES (2, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero adipisci assumenda hic! Excepturi mollitia beatae, incidunt ab harum nemo commodi earum iste eaque, nostrum, vel blanditiis fuga neque natus accusantium.', N'Section 2')
INSERT [dbo].[Accardion] ([Id], [Context], [Header]) VALUES (3, N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Libero adipisci assumenda hic! Excepturi mollitia beatae, incidunt ab harum nemo commodi earum iste eaque, nostrum, vel blanditiis fuga neque natus accusantium.', N'Section 3')
SET IDENTITY_INSERT [dbo].[Accardion] OFF
SET IDENTITY_INSERT [dbo].[Accessories] ON 

INSERT [dbo].[Accessories] ([Id], [Image], [Text], [Price]) VALUES (1, N'product3.jpg', N'alo', N'10')
INSERT [dbo].[Accessories] ([Id], [Image], [Text], [Price]) VALUES (2, N'product3.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Accessories] ([Id], [Image], [Text], [Price]) VALUES (3, N'product3.jpg', N'Castrol EDGE 0W-40 A3B4 ', N'$33.55')
INSERT [dbo].[Accessories] ([Id], [Image], [Text], [Price]) VALUES (4, N'product3.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Accessories] ([Id], [Image], [Text], [Price]) VALUES (5, N'product3.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
SET IDENTITY_INSERT [dbo].[Accessories] OFF
SET IDENTITY_INSERT [dbo].[AdminUsers] ON 

INSERT [dbo].[AdminUsers] ([Id], [Name], [Surname], [Username], [Pasword]) VALUES (1, N'Qesem', N'Qarayev', N'admin', N'AK62rX9TPIwJ2sJLyRPKmfUuLBj/lauQxAHdbtxGpIg4/FjcfMcjXqRSxnMuUmzxtw==')
SET IDENTITY_INSERT [dbo].[AdminUsers] OFF
SET IDENTITY_INSERT [dbo].[AksesuarQurasdirma] ON 

INSERT [dbo].[AksesuarQurasdirma] ([Id], [MainHeader], [Image], [Header], [Context], [Image2]) VALUES (3, N'Aksesuarlarin qurasdirilmasi', N'image_02-480x320.jpg', N'Ilkin Xidmet', N' Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus dolorum totam enim expedita rerum laborum praesentium tenetur eaque maiores amet, maxime molestiae modi alias?', N'image_08-300x200.jpg')
SET IDENTITY_INSERT [dbo].[AksesuarQurasdirma] OFF
SET IDENTITY_INSERT [dbo].[AutoPlanet] ON 

INSERT [dbo].[AutoPlanet] ([Id], [Image], [Header], [Context]) VALUES (1, N'alo', N'AUTO PLANET', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat voluptatibus quia dolore officiis sequi, animi laboriosam eos enim culpa nihil nesciunt excepturi laudantium minima mollitia, ratione dolorem magni, porro dicta.')
SET IDENTITY_INSERT [dbo].[AutoPlanet] OFF
SET IDENTITY_INSERT [dbo].[Battaries] ON 

INSERT [dbo].[Battaries] ([Id], [Image], [Text], [Price]) VALUES (1, N'product4.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Battaries] ([Id], [Image], [Text], [Price]) VALUES (2, N'product4.jpg', N'Castrol EDGE 0W-40 A3B4 ', N'$33.55')
INSERT [dbo].[Battaries] ([Id], [Image], [Text], [Price]) VALUES (3, N'product4.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
SET IDENTITY_INSERT [dbo].[Battaries] OFF
SET IDENTITY_INSERT [dbo].[ChooseUs] ON 

INSERT [dbo].[ChooseUs] ([Id], [Header], [Context]) VALUES (1, N'WHY CHOOSE US', N'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt placeat, sed quos aut blanditiis error pariatur dolores debitis ex incidunt, eius harum corporis corrupti, animi ducimus quidem architecto. Obcaecati, distinctio!')
SET IDENTITY_INSERT [dbo].[ChooseUs] OFF
SET IDENTITY_INSERT [dbo].[ChooseUsTags] ON 

INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (1, N' We get the job done right — the first time')
INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (2, N' We get the job done right — the first time')
INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (3, N' We get the job done right — the first time')
INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (4, N' We get the job done right — the first time')
INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (5, N' We get the job done right — the first time')
INSERT [dbo].[ChooseUsTags] ([Id], [Text]) VALUES (6, N' We get the job done right — the first time')
SET IDENTITY_INSERT [dbo].[ChooseUsTags] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Adress], [Phone], [Email]) VALUES (1, N'1014 Retreat Avenue, Birmingham, AL', N'+994553304456', N'dwdwd')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Details] ON 

INSERT [dbo].[Details] ([Id], [Image], [Text], [Price]) VALUES (1, N'product5.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Details] ([Id], [Image], [Text], [Price]) VALUES (2, N'product5.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Details] ([Id], [Image], [Text], [Price]) VALUES (3, N'product5.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Details] ([Id], [Image], [Text], [Price]) VALUES (4, N'product5.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
SET IDENTITY_INSERT [dbo].[Details] OFF
SET IDENTITY_INSERT [dbo].[FooterMiddle] ON 

INSERT [dbo].[FooterMiddle] ([Id], [FirstcolContext], [SecondcolHeader], [SecondcolContext], [ThirdcolHeader], [ThirdcolContextTop], [ThirdcolContextBottom], [FourthcolHeader], [FourthcolContextFirstspan], [FourthcolContextSecondspan]) VALUES (2, N'A wonderful serenity taken possession into entire soul like to these sweet of tence this spot which was the main part created the bliss often souls like mine.', N'Our Services', N'Engine Diagnostics', N'Latest News', N'How can I measure temperature', N'July 25, 2016', N'Service Hours', N'Monday
', N'7:00-16:00')
SET IDENTITY_INSERT [dbo].[FooterMiddle] OFF
SET IDENTITY_INSERT [dbo].[FooterTop] ON 

INSERT [dbo].[FooterTop] ([Id], [LocationHeader], [LocationContext], [Phone], [Email]) VALUES (1, N'Birmingham', N'1014 Retreat Avenue', N'+994553304456', N'povil99@mail.ru')
SET IDENTITY_INSERT [dbo].[FooterTop] OFF
SET IDENTITY_INSERT [dbo].[HeaderBottom] ON 

INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (1, N'Ana Sehive')
INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (2, N'Haqqimizda')
INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (3, N'Xidmetler')
INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (4, N'Alis-Veris')
INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (5, N'Elaqe')
INSERT [dbo].[HeaderBottom] ([Id], [Navbar]) VALUES (6, N'Portfolio')
SET IDENTITY_INSERT [dbo].[HeaderBottom] OFF
SET IDENTITY_INSERT [dbo].[HomeSlider] ON 

INSERT [dbo].[HomeSlider] ([Id], [Image], [Header], [Context]) VALUES (1, N'bg-page-title.jpg', N'Yaglama', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim nulla, sunt doloribus fugit non quam vero qui, officiis harum inventore laudantium nam dolorum! Quas temporibus consequuntur pariatur repellat eius veritatis?')
INSERT [dbo].[HomeSlider] ([Id], [Image], [Header], [Context]) VALUES (2, N'slider-1.jpg', N'aksesuarlarin Qurasdirilmasi', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim nulla, sunt doloribus fugit non quam vero qui, officiis harum inventore laudantium nam dolorum! Quas temporibus consequuntur pariatur repellat eius veritatis?')
INSERT [dbo].[HomeSlider] ([Id], [Image], [Header], [Context]) VALUES (3, N'slider-2.jpg', N'Masin hisseleri', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Enim nulla, sunt doloribus fugit non quam vero qui, officiis harum inventore laudantium nam dolorum! Quas temporibus consequuntur pariatur repellat eius veritatis?')
SET IDENTITY_INSERT [dbo].[HomeSlider] OFF
SET IDENTITY_INSERT [dbo].[HomeSliderSlick] ON 

INSERT [dbo].[HomeSliderSlick] ([Id], [Image]) VALUES (1, N'audi.jpg')
INSERT [dbo].[HomeSliderSlick] ([Id], [Image]) VALUES (2, N'land.jpg')
INSERT [dbo].[HomeSliderSlick] ([Id], [Image]) VALUES (3, N'mers.jpg')
INSERT [dbo].[HomeSliderSlick] ([Id], [Image]) VALUES (4, N'wosvogen.jpg')
INSERT [dbo].[HomeSliderSlick] ([Id], [Image]) VALUES (5, N'bmw.jpg')
SET IDENTITY_INSERT [dbo].[HomeSliderSlick] OFF
SET IDENTITY_INSERT [dbo].[Portfolios] ON 

INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (1, N'audi.jpg')
INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (2, N'mers.jpg')
INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (3, N'range.jpg')
INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (4, N'land.jpg')
INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (5, N'bmw.jpg')
INSERT [dbo].[Portfolios] ([Id], [Image]) VALUES (6, N'wosvogen.jpg')
SET IDENTITY_INSERT [dbo].[Portfolios] OFF
SET IDENTITY_INSERT [dbo].[Shop] ON 

INSERT [dbo].[Shop] ([Id], [Image], [Context]) VALUES (1, N'oils.jpg', N'Muherrik yaglari')
INSERT [dbo].[Shop] ([Id], [Image], [Context]) VALUES (3, N'slider2.jpg', N'Yuksek keyfiyyet')
SET IDENTITY_INSERT [dbo].[Shop] OFF
SET IDENTITY_INSERT [dbo].[UstunContent] ON 

INSERT [dbo].[UstunContent] ([Id], [Number], [Icon], [Hearder], [Context]) VALUES (2, 1, N'fas fa-certificate', N'INTERNATIONAL STANDARDS', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam quaerat suscipit excepturi repudiandae corrupti exercitationem distinctio saepe repellendus reiciendis fuga, recusandae commodi, veniam nostrum.')
INSERT [dbo].[UstunContent] ([Id], [Number], [Icon], [Hearder], [Context]) VALUES (4, 2, N'fas fa-user-shield', N'WE LOVE OUR CLIENT', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam quaerat suscipit excepturi repudiandae corrupti exercitationem distinctio saepe repellendus reiciendis fuga, recusandae commodi, veniam nostrum.')
INSERT [dbo].[UstunContent] ([Id], [Number], [Icon], [Hearder], [Context]) VALUES (5, 3, N'fas fa-car-alt', N'ONLY ORIGINAL PARTS', N'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nam quaerat suscipit excepturi repudiandae corrupti exercitationem distinctio saepe repellendus reiciendis fuga, recusandae commodi, veniam nostrum.')
SET IDENTITY_INSERT [dbo].[UstunContent] OFF
SET IDENTITY_INSERT [dbo].[WeOffer] ON 

INSERT [dbo].[WeOffer] ([Id], [Header], [Context]) VALUES (1, N'WHAT WE OFFER', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable.')
SET IDENTITY_INSERT [dbo].[WeOffer] OFF
SET IDENTITY_INSERT [dbo].[XidmetContent] ON 

INSERT [dbo].[XidmetContent] ([Id], [Image], [Header], [Context]) VALUES (1, N'yag.jpg', N'YAĞLAMA', N'"Lorem ipsum dolor sit amet, consectetur ,
                                    sed do eiusmod tempor incididunt')
INSERT [dbo].[XidmetContent] ([Id], [Image], [Header], [Context]) VALUES (2, N'maruti-car-accessories-500x500.jpg', N'QURAŞDIRILMA', N'"Lorem ipsum dolor sit amet, consectetur ,
                                    sed do eiusmod tempor incididunt')
SET IDENTITY_INSERT [dbo].[XidmetContent] OFF
SET IDENTITY_INSERT [dbo].[Xidmetler] ON 

INSERT [dbo].[Xidmetler] ([Id], [Header]) VALUES (1, N'XİDMƏTLƏR')
SET IDENTITY_INSERT [dbo].[Xidmetler] OFF
SET IDENTITY_INSERT [dbo].[yagalama] ON 

INSERT [dbo].[yagalama] ([Id], [MainHeader], [Image1], [Image2], [Header], [Context]) VALUES (7, N'Lube Oil and Filter', N'image_02-480x320.jpg', N'image_08-300x200.jpg', N'Ilkin Xidmet', N' Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus dolorum totam enim expedita rerum laborum praesentium tenetur eaque maiores amet, maxime molestiae modi alias?')
SET IDENTITY_INSERT [dbo].[yagalama] OFF
SET IDENTITY_INSERT [dbo].[Yaglar] ON 

INSERT [dbo].[Yaglar] ([Id], [Image], [Text], [Price]) VALUES (1, N'product1.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
INSERT [dbo].[Yaglar] ([Id], [Image], [Text], [Price]) VALUES (2, N'product1.jpg', N'Castrol EDGE 0W-40 A3B4 ', N'$33.55')
INSERT [dbo].[Yaglar] ([Id], [Image], [Text], [Price]) VALUES (3, N'product1.jpg', N'Castrol EDGE 0W-40 A3B4 ', N'$33.55')
INSERT [dbo].[Yaglar] ([Id], [Image], [Text], [Price]) VALUES (4, N'product1.jpg', N'Castrol EDGE 0W-40 A3B4 ', N'$33.55')
INSERT [dbo].[Yaglar] ([Id], [Image], [Text], [Price]) VALUES (5, N'product1.jpg', N'Castrol EDGE 0W-40 A3B4', N'$33.55')
SET IDENTITY_INSERT [dbo].[Yaglar] OFF
USE [master]
GO
ALTER DATABASE [finalProject] SET  READ_WRITE 
GO
