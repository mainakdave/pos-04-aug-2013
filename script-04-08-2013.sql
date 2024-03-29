USE [master]
GO
/****** Object:  Database [pos]    Script Date: 08/04/2013 17:00:58 ******/
CREATE DATABASE [pos] ON  PRIMARY 
( NAME = N'pos', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pos.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'pos_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\pos_log.ldf' , SIZE = 1536KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [pos] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pos] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [pos] SET ANSI_NULLS OFF
GO
ALTER DATABASE [pos] SET ANSI_PADDING OFF
GO
ALTER DATABASE [pos] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [pos] SET ARITHABORT OFF
GO
ALTER DATABASE [pos] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [pos] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [pos] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [pos] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [pos] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [pos] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [pos] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [pos] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [pos] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [pos] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [pos] SET  DISABLE_BROKER
GO
ALTER DATABASE [pos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [pos] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [pos] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [pos] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [pos] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [pos] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [pos] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [pos] SET  READ_WRITE
GO
ALTER DATABASE [pos] SET RECOVERY SIMPLE
GO
ALTER DATABASE [pos] SET  MULTI_USER
GO
ALTER DATABASE [pos] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [pos] SET DB_CHAINING OFF
GO
USE [pos]
GO
/****** Object:  Table [dbo].[taxType]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxType](
	[taxTypeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
	[inputTaxAccount] [nvarchar](20) NULL,
	[outputTaxAccount] [nvarchar](20) NULL,
	[refundTaxAccount] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_taxType] PRIMARY KEY CLUSTERED 
(
	[taxTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serviceType]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serviceType](
	[serviceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[serviceType] [nvarchar](100) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_serviceType] PRIMARY KEY CLUSTERED 
(
	[serviceTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[modifierMaster]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modifierMaster](
	[modifierID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[divisible] [nchar](1) NULL,
	[comment] [nvarchar](200) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_modifier_header] PRIMARY KEY CLUSTERED 
(
	[modifierID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testM]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testM](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NULL,
 CONSTRAINT [PK_testM] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[testD]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[testD](
	[id] [int] NOT NULL,
	[name2] [nchar](10) NULL,
 CONSTRAINT [PK_testD] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
	[image] [varchar](100) NULL,
	[deptName] [varchar](100) NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tableIsInsert]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tableIsInsert](
	[tableName] [varchar](50) NOT NULL,
	[isInsert] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[itemWarning]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemWarning](
	[warningID] [int] IDENTITY(1,1) NOT NULL,
	[allUser] [nchar](1) NULL,
	[users] [int] NULL,
	[warningMessage] [nvarchar](100) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemWarning] PRIMARY KEY CLUSTERED 
(
	[warningID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[itemPics]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemPics](
	[itemPicID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[image] [int] NULL,
	[reference] [nvarchar](20) NULL,
	[description] [nvarchar](100) NULL,
	[version] [timestamp] NOT NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemPics] PRIMARY KEY CLUSTERED 
(
	[itemPicID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[item]    Script Date: 08/04/2013 17:01:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[item](
	[itemID] [int] IDENTITY(1,1) NOT NULL,
	[itemName] [nvarchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](100) NULL,
	[shortDescription] [nvarchar](50) NULL,
	[deptID] [int] NULL,
	[sectionID] [int] NULL,
	[familyID] [int] NULL,
	[brandID] [int] NULL,
	[lineID] [int] NULL,
	[isStockItem] [nchar](1) NULL,
	[discontinue] [nchar](1) NULL,
	[stockMeasure] [nvarchar](20) NULL,
	[stockMeasureUnit] [float] NULL,
	[purchaseMeasure] [nvarchar](20) NULL,
	[purchaseMeasureUnit] [float] NULL,
	[saleMeasure] [nvarchar](20) NULL,
	[saleMeasureUnit] [float] NULL,
	[itemType] [int] NULL,
	[itemClass] [nvarchar](20) NULL,
	[saleAccount] [nvarchar](20) NULL,
	[purchaseAccount] [nvarchar](20) NULL,
	[costOfSaleAccount] [nvarchar](20) NULL,
	[saleReturnAccount] [nvarchar](20) NULL,
	[purchaseReturnAccount] [nvarchar](20) NULL,
	[visibleOnWeb] [nchar](1) NULL,
	[season] [nvarchar](20) NULL,
	[characteristics] [nvarchar](20) NULL,
	[warningID] [int] NULL,
	[version] [timestamp] NOT NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED 
(
	[itemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[getAssociatedItem]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getAssociatedItem] 
	-- Add the parameters for the stored procedure here
	@criteria varchar(5000)=''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Insert statements for procedure here
	if(@criteria!='')
	begin
		execute('select * from item ' +  @criteria);
	end
	
END
GO
/****** Object:  Table [dbo].[itemRestaurant]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[itemRestaurant](
	[itemRestID] [int] IDENTITY(1,1) NOT NULL,
	[itemID] [int] NULL,
	[byPortion] [nchar](1) NULL,
	[visibleSales] [nchar](1) NULL,
	[orderNo] [int] NULL,
	[isMenu] [nchar](1) NULL,
	[freePrice] [nchar](1) NULL,
	[freeMin] [float] NULL,
	[freeMax] [float] NULL,
	[couponCode] [int] NULL,
	[shortcut] [nvarchar](10) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[yield] [float] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_itemRestaurant] PRIMARY KEY CLUSTERED 
(
	[itemRestID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[format]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[format](
	[formatID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[combination] [nchar](1) NULL,
	[portion1] [float] NULL,
	[portion2] [float] NULL,
	[costSecond] [float] NULL,
	[favoriteCode] [int] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_format] PRIMARY KEY CLUSTERED 
(
	[formatID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[family]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[family](
	[deptID] [int] NOT NULL,
	[sectionID] [int] NOT NULL,
	[familyID] [int] IDENTITY(1,1) NOT NULL,
	[familyName] [varchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_family] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC,
	[sectionID] ASC,
	[familyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[department]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[department](
	[deptID] [int] IDENTITY(1,1) NOT NULL,
	[deptName] [varchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employee]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employee](
	[employeeID] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](50) NOT NULL,
	[displayName] [nvarchar](50) NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[employeeLevel] [int] NOT NULL,
	[salesPassword] [varbinary](8000) NULL,
	[clockinPassword] [varbinary](8000) NULL,
	[employeeRole] [int] NOT NULL,
	[locked] [int] NULL,
	[active] [int] NULL,
	[image] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[location] [nvarchar](50) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employeeRole_Purchase]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Purchase](
	[employeeRoleID] [int] NOT NULL,
	[purchaseOrderCreate] [int] NULL,
	[purchaseOrderModify] [int] NULL,
	[purchaseOrderDelete] [int] NULL,
	[purchaseOrderVisible] [int] NULL,
	[purchaseDeliveryCreate] [int] NULL,
	[purchaseDeliveryModify] [int] NULL,
	[purchaseDeliveryDelete] [int] NULL,
	[purchaseDeliveryVisible] [int] NULL,
	[supplierCreationCreate] [int] NULL,
	[supplierCreationModify] [int] NULL,
	[supplierCreationDelete] [int] NULL,
	[supplierCreationVisible] [int] NULL,
	[supplierPriceListCreate] [int] NULL,
	[supplierPriceListModify] [int] NULL,
	[supplierPriceListDelete] [int] NULL,
	[supplierPriceListVisible] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Purchase] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Loyalty]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Loyalty](
	[employeeRoleID] [int] NOT NULL,
	[createCard] [int] NULL,
	[swipeCardOnSale] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Loyalty] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[currency]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[currency](
	[currencyID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](200) NULL,
	[isMain] [char](1) NULL,
	[decimalsQuantity] [int] NULL,
	[initials] [varchar](10) NULL,
	[ISOCurrencyCode] [varchar](50) NULL,
	[defaultExchangeRate] [float] NULL,
	[isReturnGivenInMainCurrency] [char](1) NULL,
	[isApplyExchangeRateByDefault] [char](1) NULL,
	[isShowInitialInFrontOfTotal] [char](1) NULL,
	[image] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_currency] PRIMARY KEY CLUSTERED 
(
	[currencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[brand]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[brand](
	[brandID] [int] IDENTITY(1,1) NOT NULL,
	[brandName] [nvarchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_brand] PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[commentID] [int] IDENTITY(1,1) NOT NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_comment] PRIMARY KEY CLUSTERED 
(
	[commentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[company]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[company](
	[companyID] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](300) NULL,
	[address1] [varchar](300) NULL,
	[address2] [varchar](300) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[zipcode] [varchar](20) NULL,
	[region] [varchar](100) NULL,
	[officePhone] [varchar](20) NULL,
	[officeFax] [varchar](20) NULL,
	[taxtID] [varchar](50) NULL,
	[vatID] [varchar](50) NULL,
	[logo] [varchar](100) NULL,
	[salesEmail] [varchar](100) NULL,
	[supportEmail] [varchar](100) NULL,
	[contactUsEmail] [varchar](100) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[companyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[employeeRole_ClosingReport]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_ClosingReport](
	[employeeRoleID] [int] NOT NULL,
	[cashCount] [int] NULL,
	[declared] [int] NULL,
	[reportByPaymentType] [int] NULL,
	[seller] [int] NULL,
	[saleSummary] [int] NULL,
	[collectionsOrPayments] [int] NULL,
	[returnSummary] [int] NULL,
	[returnDetail] [int] NULL,
	[voidSummary] [int] NULL,
	[voidDetail] [int] NULL,
	[complimentary] [int] NULL,
	[saleBySection] [int] NULL,
	[saleByItem] [int] NULL,
	[discountDetail] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_ClosingReport] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Classification]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Classification](
	[employeeRoleID] [int] NOT NULL,
	[departmentCreate] [int] NULL,
	[departmentModify] [int] NULL,
	[departmentDelete] [int] NULL,
	[departmentVisible] [int] NULL,
	[sectionCreate] [int] NULL,
	[sectionModify] [int] NULL,
	[sectionDelete] [int] NULL,
	[sectionVisible] [int] NULL,
	[familyCreate] [int] NULL,
	[familyModify] [int] NULL,
	[familyDelete] [int] NULL,
	[familyVisible] [int] NULL,
	[brandCreate] [int] NULL,
	[brandModify] [int] NULL,
	[brandDelete] [int] NULL,
	[brandVisible] [int] NULL,
	[lineCreate] [int] NULL,
	[lineModify] [int] NULL,
	[lineDelete] [int] NULL,
	[lineVisible] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Classification] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole](
	[employeeRoleID] [int] IDENTITY(1,1) NOT NULL,
	[description] [nvarchar](50) NULL,
	[saleMenu] [int] NULL,
	[userMenu] [int] NULL,
	[tableMenu] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeAddress]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[employeeAddress](
	[employeeID] [int] NOT NULL,
	[organization] [varchar](100) NULL,
	[pobox] [nvarchar](20) NULL,
	[addr1] [nvarchar](100) NULL,
	[addr2] [nvarchar](100) NULL,
	[city] [nvarchar](50) NULL,
	[state] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[landline] [nvarchar](20) NULL,
	[mobile1] [nvarchar](15) NULL,
	[mobile2] [nvarchar](15) NULL,
	[birthdate] [date] NULL,
	[anniversary] [date] NULL,
	[wife] [nvarchar](50) NULL,
	[child1] [nvarchar](50) NULL,
	[child2] [nvarchar](50) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeAddress] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[commentSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[commentSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@commentID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into comment( reference, description, image, bgColor, textColor, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @image, @bgColor, @textColor, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('comment', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @commentID = -1)
	BEGIN
	select * from comment;
	select @isInserted = isInsert from tableIsInsert where tableName = 'comment';
	
	if(@isInserted!=1) select(IDENT_CURRENT('comment')) as nextID;
	else select(IDENT_CURRENT('comment')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @commentID != -1)
	BEGIN
	select * from comment where commentID=@commentID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'comment';
	
	if(@isInserted!=1) select(IDENT_CURRENT('comment')) as nextID;
	else select(IDENT_CURRENT('comment')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE comment SET
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE commentID = @commentID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM comment WHERE commentID=@commentID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[brandSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[brandSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@brandID INTEGER = -1,
	@brandName varchar(100) = '',
    @description nvarchar(50) = '',
    -- @image varchar(100) = '',
    -- @bgColor nvarchar(20) = '',
    -- @textColor nvarchar(20) = '',
    -- @costCenter nvarchar(10) = '',
    -- @saleAcct nvarchar(20) = '',
    -- @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into brand ( brandName, description, createDate, lastModified, createUser, modifyUser) values
	(  @brandName, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('brand', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @brandID = -1)
	BEGIN
	select * from brand;
	select @isInserted = isInsert from tableIsInsert where tableName = 'brand';
	
	if(@isInserted!=1) select(IDENT_CURRENT('brand')) as nextID;
	else select(IDENT_CURRENT('brand')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1)
	BEGIN
	select * from brand where brandID=@brandID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'brand';
	
	if(@isInserted!=1) select(IDENT_CURRENT('brand')) as nextID;
	else select(IDENT_CURRENT('brand')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE brand SET
		brandName = @brandName,
		description = @description, 
		-- image = @image, 
		-- bgColor = @bgColor, 
		-- textColor = @textColor, 
		-- costCenter = @costCenter, 
		-- saleAcct = @saleAcct, 
		-- purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE brandId = @brandId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM brand WHERE brandId = @brandId
	END
END
GO
/****** Object:  Table [dbo].[companyStore]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companyStore](
	[storeID] [int] IDENTITY(1,1) NOT NULL,
	[companyID] [int] NOT NULL,
	[name] [varchar](300) NULL,
	[address1] [varchar](300) NULL,
	[address2] [varchar](300) NULL,
	[city] [varchar](100) NULL,
	[state] [varchar](100) NULL,
	[country] [varchar](100) NULL,
	[zipcode] [varchar](20) NULL,
	[region] [varchar](100) NULL,
	[logo] [varchar](100) NULL,
	[officePhone] [varchar](20) NULL,
	[officeFax] [varchar](20) NULL,
	[taxtID] [varchar](50) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_companyStore] PRIMARY KEY CLUSTERED 
(
	[storeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[companySelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[companySelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@companyID int = -1,
    @name varchar(300) = '',
    @address1 varchar(300) = '',
    @address2 varchar(300) = '',
    @city varchar(100) = '',
    @state varchar(100) = '',
    @country varchar(100) = '',
    @zipcode varchar(20) = '',
    @region varchar(100) = '',
    @officePhone varchar(20) = '',
    @officeFax varchar(20) = '',
    @taxtID varchar(50) = '',
    @vatID varchar(50) = '',
    @logo varchar(100) = '',
    @salesEmail varchar(100) = '',
    @supportEmail varchar(100) = '',
    @contactUsEmail varchar(100) = '',
	
	-- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	INSERT INTO [dbo].[company] ([name], [address1], [address2], [city], [state], [country], [zipcode], [region], [officePhone], [officeFax], [taxtID], [vatID], [logo], [salesEmail], [supportEmail], [contactUsEmail], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @name, @address1, @address2, @city, @state, @country, @zipcode, @region, @officePhone, @officeFax, @taxtID, @vatID, @logo, @salesEmail, @supportEmail, @contactUsEmail, GETDATE(), @createUser, GETDATE(), @modifyUser
	
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('company', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @companyID = -1)
	BEGIN
	select * from company;
	select @isInserted = isInsert from tableIsInsert where tableName = 'company';
	
	if(@isInserted!=1) select(IDENT_CURRENT('company')) as nextID;
	else select(IDENT_CURRENT('company')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @companyID != -1)
	BEGIN
	select * from company where companyID=@companyID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'company';
	
	if(@isInserted!=1) select(IDENT_CURRENT('company')) as nextID;
	else select(IDENT_CURRENT('company')+1) as nextID;
	END
	
	
	
	IF @StatementType = 'Update'
	BEGIN
	
	UPDATE [dbo].[company]
	SET    [name] = @name, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [country] = @country, [zipcode] = @zipcode, [region] = @region, [officePhone] = @officePhone, [officeFax] = @officeFax, [taxtID] = @taxtID, [vatID] = @vatID, [logo] = @logo, [salesEmail] = @salesEmail, [supportEmail] = @supportEmail, [contactUsEmail] = @contactUsEmail, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [companyID] = @companyID
	
	END
	
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM company WHERE companyId = @companyId
	END
	
END
GO
/****** Object:  Table [dbo].[employeeRole_Item]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Item](
	[employeeRoleID] [int] NOT NULL,
	[salePriceCreate] [int] NULL,
	[salePriceModify] [int] NULL,
	[salePriceDelete] [int] NULL,
	[salePriceVisible] [int] NULL,
	[costCreate] [int] NULL,
	[costModify] [int] NULL,
	[costDelete] [int] NULL,
	[costVisible] [int] NULL,
	[itemCreate] [int] NULL,
	[itemModify] [int] NULL,
	[itemDelete] [int] NULL,
	[itemVisible] [int] NULL,
	[modifierCreate] [int] NULL,
	[modifierModify] [int] NULL,
	[modifierDelete] [int] NULL,
	[modifierVisible] [int] NULL,
	[formatCreate] [int] NULL,
	[formatModify] [int] NULL,
	[formatDelete] [int] NULL,
	[formatVisible] [int] NULL,
	[fixedItemCreate] [int] NULL,
	[fixedItemModify] [int] NULL,
	[fixedItemDelete] [int] NULL,
	[fixedItemVisible] [int] NULL,
	[priceListCreate] [int] NULL,
	[priceListModify] [int] NULL,
	[priceListDelete] [int] NULL,
	[priceListVisible] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Item] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Inventory]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Inventory](
	[employeeRoleID] [int] NOT NULL,
	[allowInventoryToGoNegative] [int] NULL,
	[declareInventory] [int] NULL,
	[declareWastage] [int] NULL,
	[inventoryAdjustment] [int] NULL,
	[closeInventory] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Form]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Form](
	[employeeRoleID] [int] NOT NULL,
	[tableCreate] [int] NULL,
	[tableModify] [int] NULL,
	[tableDelete] [int] NULL,
	[tableVisible] [int] NULL,
	[salesCreate] [int] NULL,
	[salesModify] [int] NULL,
	[salesDelete] [int] NULL,
	[salesVisible] [int] NULL,
	[deliveryCreate] [int] NULL,
	[deliveryModify] [int] NULL,
	[deliveryDelete] [int] NULL,
	[deliveryVisible] [int] NULL,
	[takeAwayCreate] [int] NULL,
	[takeAwayModify] [int] NULL,
	[takeAwayDelete] [int] NULL,
	[takeAwayVisible] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Form] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Customer]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Customer](
	[employeeRoleID] [int] NOT NULL,
	[customerMasterCreate] [int] NULL,
	[customerMasterModify] [int] NULL,
	[customerMasterDelete] [int] NULL,
	[customerMasterVisible] [int] NULL,
	[consultBalanceCreate] [int] NULL,
	[consultBalanceModify] [int] NULL,
	[consultBalanceDelete] [int] NULL,
	[consultBalanceVisible] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Customer] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[departmentSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[departmentSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@deptName varchar(100) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
    
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into department ( deptName, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	(  @deptName, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('department', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from department;
	select @isInserted = isInsert from tableIsInsert where tableName = 'department';
	
	if(@isInserted!=1) select(IDENT_CURRENT('department')) as nextID;
	else select(IDENT_CURRENT('department')+1) as nextID;
	
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1)
	BEGIN
	select * from department where deptID=@deptID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'department';
	
	if(@isInserted!=1) select(IDENT_CURRENT('department')) as nextID;
	else select(IDENT_CURRENT('department')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE department SET
		deptName = @deptName,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM department WHERE deptId = @deptId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[currencySelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[currencySelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@currencyID INTEGER = -1,
	@description nvarchar(200) = '',
	@isMain char(1) = '',
    @decimalsQuantity int = -1,
    @initials varchar(10) = '',
    @ISOCurrencyCode varchar(50) = '',
    @defaultExchangeRate float = -1,
    @isReturnGivenInMainCurrency char(1) = '',
    @isApplyExchangeRateByDefault char(1) = '',
    @isShowInitialInFrontOfTotal char(1) = '',
    @image varchar(100) = '',
    
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	INSERT INTO [dbo].[currency] ([description], [isMain], [decimalsQuantity], [initials], [ISOCurrencyCode], [defaultExchangeRate], [isReturnGivenInMainCurrency], [isApplyExchangeRateByDefault], [isShowInitialInFrontOfTotal], [image], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @description, @isMain, @decimalsQuantity, @initials, @ISOCurrencyCode, @defaultExchangeRate, @isReturnGivenInMainCurrency, @isApplyExchangeRateByDefault, @isShowInitialInFrontOfTotal, @image, GETDATE(), @createUser, GETDATE(), @modifyUser
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('currency', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @currencyID = -1)
	BEGIN
	select * from currency;
	select @isInserted = isInsert from tableIsInsert where tableName = 'currency';
	
	if(@isInserted!=1) select(IDENT_CURRENT('currency')) as nextID;
	else select(IDENT_CURRENT('currency')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @currencyID != -1)
	BEGIN
	select * from currency where currencyID=@currencyID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'currency';
	
	if(@isInserted!=1) select(IDENT_CURRENT('currency')) as nextID;
	else select(IDENT_CURRENT('currency')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE currency SET
		[description] = @description, 
		[isMain] = @isMain, 
		[decimalsQuantity] = @decimalsQuantity, 
		[initials] = @initials, 
		[ISOCurrencyCode] = @ISOCurrencyCode, 
		[defaultExchangeRate] = @defaultExchangeRate, 
		[isReturnGivenInMainCurrency] = @isReturnGivenInMainCurrency, 
		[isApplyExchangeRateByDefault] = @isApplyExchangeRateByDefault, 
		[isShowInitialInFrontOfTotal] = @isShowInitialInFrontOfTotal, 
		[image] = @image, 
		
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE currencyId = @currencyId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM currency WHERE currencyId = @currencyId
	END
END
GO
/****** Object:  Table [dbo].[currencyPiece]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currencyPiece](
	[currencyPieceID] [int] NOT NULL,
	[currencyID] [int] IDENTITY(1,1) NOT NULL,
	[currencyPiece] [float] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_currencyPiece] PRIMARY KEY CLUSTERED 
(
	[currencyPieceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Table]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Table](
	[employeeRoleID] [int] NOT NULL,
	[openTableOfOtherEmployee] [int] NULL,
	[changeRoom] [int] NULL,
	[changeTable] [int] NULL,
	[modifyCover] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Table] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_System]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_System](
	[employeeRoleID] [int] NOT NULL,
	[exitToWindow] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_System] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_SalesReport]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_SalesReport](
	[employeeRoleID] [int] NOT NULL,
	[byPaymentType] [int] NULL,
	[salesSummary] [int] NULL,
	[byTable] [int] NULL,
	[byHours] [int] NULL,
	[byDepartment] [int] NULL,
	[bySection] [int] NULL,
	[byServiceTax] [int] NULL,
	[returns] [int] NULL,
	[voids] [int] NULL,
	[pendingCollection] [int] NULL,
	[profitMargin] [int] NULL,
	[complimentary] [int] NULL,
	[vouchers] [int] NULL,
	[salesByFormat] [int] NULL,
	[staffMealReport] [int] NULL,
	[salesByPortion] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_SalesReport] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_Sale]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_Sale](
	[employeeRoleID] [int] NOT NULL,
	[credit] [int] NULL,
	[voidBill] [int] NULL,
	[roundBill] [int] NULL,
	[addItem] [int] NULL,
	[discount] [int] NULL,
	[billModification] [int] NULL,
	[voidLine] [int] NULL,
	[returnItem] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_Sale] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeRole_PurchaseInventoryReport]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeRole_PurchaseInventoryReport](
	[employeeRoleID] [int] NOT NULL,
	[purchaseOrderReport] [int] NULL,
	[purchaseDeliveryNote] [int] NULL,
	[inventory] [int] NULL,
	[purchaseSalesAndStock] [int] NULL,
	[currentStock] [int] NULL,
	[consumption] [int] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeRole_PurchaseInventoryReport] PRIMARY KEY CLUSTERED 
(
	[employeeRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employeeSetting]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employeeSetting](
	[employeeID] [int] NOT NULL,
	[emailID] [nvarchar](50) NULL,
	[mailServerID] [nvarchar](50) NULL,
	[emailUserName] [nvarchar](50) NULL,
	[emailPassword] [nvarchar](300) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_employeeSetting] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[familySelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[familySelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@sectionID INTEGER = -1,
	@familyID INTEGER = -1,
	@familyName varchar(100) = '',
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into family ( deptID, sectionID, familyName, reference, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	( @deptID, @sectionID, @familyName, @reference, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('family', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from family;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1)
	BEGIN
	select * from family where deptID=@deptID and sectionID=@sectionID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1 AND @familyID != -1)
	BEGIN
	select * from family where deptID=@deptID and sectionID=@sectionID and familyID=@familyID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'family';
	
	if(@isInserted!=1) select(IDENT_CURRENT('family')) as nextID;
	else select(IDENT_CURRENT('family')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE family SET
		deptId = @deptId,
		sectionID=@sectionID,
		familyName = @familyName,
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId and sectionID=@sectionID and familyID=@familyID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM family WHERE deptId = @deptId and sectionID=@sectionID and familyID=@familyID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[itemPicsSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemPicsSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@itemPicID INTEGER = -1,
	@itemID INTEGER = -1,
	@reference varchar(20) = '',
    @description nvarchar(100) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into itemPics ( itemID, reference, description, createDate, lastModified, createUser, modifyUser) values
	(  @itemID, @reference, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF (@StatementType = 'Select' AND @itemID = -1)
	BEGIN
	select * from itemPics
	END
	
	IF (@StatementType = 'Select' AND @itemID != -1)
	BEGIN
	select * from itemPics where itemPicID=@itemPicID
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemPics SET
		reference = @reference,
		description = @description, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE itemPicID=@itemPicID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemPics WHERE itemPicID=@itemPicID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[formatSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[formatSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@formatID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @combination nchar(1) = '',
    @portion1 float = -1,
    @portion2 float = -1,
    @costSecond float = -1,
    @favoriteCode int = -1,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into format( reference, description, image, bgColor, textColor, combination, portion1, portion2, costSecond, favoriteCode, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @image, @bgColor, @textColor, @combination, @portion1, @portion2, @costSecond, @favoriteCode, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('format', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @formatID = -1)
	BEGIN
	select * from format;
	select @isInserted = isInsert from tableIsInsert where tableName = 'format';
	
	if(@isInserted!=1) select(IDENT_CURRENT('format')) as nextID;
	else select(IDENT_CURRENT('format')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @formatID != -1)
	BEGIN
	select * from format where formatID=@formatID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'format';
	
	if(@isInserted!=1) select(IDENT_CURRENT('format')) as nextID;
	else select(IDENT_CURRENT('format')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE format SET
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		combination = @combination,
		portion1 = @portion1,
		portion2 = @portion2,
		costSecond = @costSecond,
		favoriteCode = @favoriteCode,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE formatID = @formatID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM format WHERE formatID=@formatID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[itemSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
@itemID	int = -1,
@itemName	nvarchar(100) ='',
@reference	nvarchar(25) ='',
@description	nvarchar(100) ='',
@shortDescription	nvarchar(50) ='',
@deptID	int =-1,
@sectionID	int =-1,
@familyID	int =-1,
@brandID	int =-1,
@lineID	int =-1,
@isStockItem	nchar(1) ='0',
@discontinue	nchar(1) ='0',
@stockMeasure	nvarchar(20) ='',
@stockMeasureUnit	float =-1,
@purchaseMeasure	nvarchar(20) ='',
@purchaseMeasureUnit	float =-1,
@saleMeasure	nvarchar(20) ='',
@saleMeasureUnit	float =-1,
@itemType	int =-1,
@itemClass	nvarchar(20) ='',
@saleAccount	nvarchar(20) ='',
@purchaseAccount	nvarchar(20) ='',
@costOfSaleAccount	nvarchar(20) ='',
@saleReturnAccount	nvarchar(20) ='',
@purchaseReturnAccount	nvarchar(20) ='',
@visibleOnWeb	nchar(1) ='0',
@season	nvarchar(20) ='',
@characteristics	nvarchar(20) ='',
@warningID	int =-1,

@allUser nchar(1) = '-1',
@users INTEGER = '-1',
@warningMessage nvarchar(100) = '',

@itemPicID INTEGER = -1,
@referencePic varchar(20) = '',
@descriptionPic nvarchar(100) = '',

@itemRestID INTEGER = -1,
@byPortion nchar(1) = '',
@visibleSales nchar(1) = '',
@orderNo int = '',
@isMenu nchar(1) = '',
@freePrice nchar(1) = '',
@freeMin float = 0,
@freeMax float = 0,
@couponCode int = 0,
@shortcut nvarchar(10) = '',
@bgColor nvarchar(20) = '',
@textColor nvarchar(20) = '',
@yield float = 0,

@createUser int = -1,
@modifyUser	int = -1,

@StatementType varchar(20) ='',

@NewId int output,
@NewPicId int output
		
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	declare @HasError int;
	set @HasError = 0;
	
	-- Insert statements for procedure here
	declare @isError int;
	set @isError = 0;
	
	if @StatementType = 'Insert'
	begin
		begin transaction
		
		/* step 1: Insert into ItemWarning */
		insert into itemWarning ( allUser, users, warningMessage, createDate, lastModified, createUser, modifyUser) values
		(@allUser, @users, @warningMessage, GETDATE(), GETDATE(), @createUser, @modifyUser);
		select @warningID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		/* step 2: Insert into Item */
		insert into item (itemName, reference, description, shortDescription, deptID, sectionID, familyID, brandID, lineID, isStockItem, discontinue, stockMeasure, stockMeasureUnit, purchaseMeasure, purchaseMeasureUnit, saleMeasure, saleMeasureUnit, itemType, itemClass, saleAccount, purchaseAccount, costOfSaleAccount, saleReturnAccount, purchaseReturnAccount, visibleOnWeb, season, characteristics, warningID, createDate, lastModified, createUser, modifyUser) values
		(@itemName, @reference, @description, @shortDescription, @deptID, @sectionID, @familyID, @brandID, @lineID, @isStockItem, @discontinue, @stockMeasure, @stockMeasureUnit, @purchaseMeasure, @purchaseMeasureUnit, @saleMeasure, @saleMeasureUnit, @itemType, @itemClass, @saleAccount, @purchaseAccount, @costOfSaleAccount, @saleReturnAccount, @purchaseReturnAccount, @visibleOnWeb, @season, @characteristics, @warningID, GETDATE(), GETDATE(), @createUser, @modifyUser);
		SELECT @newID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		insert into tableIsInsert(tableName, isInsert) values('item', 1);
		if(@@ERROR!=0) set @HasError = 1;
		
		/* step 3: Insert into ItemPics */
		insert into itemPics ( itemID, reference, description, createDate, lastModified, createUser, modifyUser) values
		(@newID, @referencePic, @descriptionPic, GETDATE(), GETDATE(), @createUser, @modifyUser);
		select @NewPicId = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		/* step 4: Insert into ItemRestaurant */
		insert into itemRestaurant ( itemID, byPortion, visibleSales, orderNo, isMenu, freePrice, freeMin, freeMax, couponCode, shortcut, bgColor, textColor, yield, createDate, lastModified, createUser, modifyUser) values
		(@newID, @byPortion, @visibleSales, @orderNo, @isMenu, @freePrice, @freeMin, @freeMax, @couponCode, @shortcut, @bgColor, @textColor, @yield, GETDATE(), GETDATE(), @createUser, @modifyUser);
		SELECT @newID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		insert into tableIsInsert(tableName, isInsert) values('itemRestaurant', 1);
		if(@@ERROR!=0) set @HasError = 1;
		
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	if (@StatementType = 'Select' and @itemID = -1)
	begin
		select * from item
		inner join itemWarning
		on item.warningID=itemWarning.warningID
		inner join itemPics
		on itemPics.itemID = item.itemID
		inner join itemRestaurant
		on itemRestaurant.itemID = item.itemID;
		
		select @isInserted = isInsert from tableIsInsert where tableName = 'item';
		if(@isInserted!=1) select(IDENT_CURRENT('item')) as nextID;
		else select(IDENT_CURRENT('item')+1) as nextID;
	end
	if (@StatementType = 'Select' and @itemID != -1)
	begin
		select * from item
		inner join itemWarning
		on item.warningID=itemWarning.warningID
		inner join itemPics
		on itemPics.itemID = item.itemID
		inner join itemRestaurant
		on itemRestaurant.itemID = item.itemID
		where item.itemID=@itemID;
		
		
		select @isInserted = isInsert from tableIsInsert where tableName = 'item';
		if(@isInserted!=1) select(IDENT_CURRENT('item')) as nextID;
		else select(IDENT_CURRENT('item')+1) as nextID;
	end

	if @StatementType = 'Update'
	begin
		begin transaction
		
		update item set
			itemName=@itemName,
			reference=@reference,
			description=@description,
			shortDescription=@shortDescription, 
			deptID=@deptID, 
			sectionID=@sectionID, 
			familyID=@familyID, 
			brandID=@brandID, 
			lineID=@lineID, 
			isStockItem=@isStockItem, 
			discontinue=@discontinue, 
			stockMeasure=@stockMeasure, 
			stockMeasureUnit=@stockMeasureUnit, 
			purchaseMeasure=@purchaseMeasure, 
			purchaseMeasureUnit=@purchaseMeasureUnit, 
			saleMeasure=@saleMeasure, 
			saleMeasureUnit=@saleMeasureUnit, 
			itemType=@itemType, 
			itemClass=@itemClass, 
			saleAccount=@saleAccount, 
			purchaseAccount=@purchaseAccount, 
			costOfSaleAccount=@costOfSaleAccount, 
			saleReturnAccount=@saleReturnAccount, 
			purchaseReturnAccount=@purchaseReturnAccount, 
			visibleOnWeb=@visibleOnWeb, 
			season=@season, 
			characteristics=@characteristics, 
			warningID=@warningID,
			lastModified=GETDATE(), 
			modifyUser=@modifyUser 
		where itemID=@itemID;
		if(@@ERROR!=0) set @HasError = 1;
		
		UPDATE itemWarning SET
			allUser = @allUser,
			users = @users, 
			warningMessage = @warningMessage,
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		WHERE warningID = @warningID;
		if(@@ERROR!=0) set @HasError = 1;
		
		UPDATE itemPics SET
			reference = @reference,
			description = @description, 
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		WHERE itemPicID=@itemPicID;
		if(@@ERROR!=0) set @HasError = 1;
		
		UPDATE itemRestaurant SET
			byPortion = @byPortion, 
			visibleSales = @visibleSales, 
			orderNo = @orderNo, 
			isMenu = @isMenu, 
			freePrice = @freePrice, 
			freeMin = @freeMin, 
			freeMax = @freeMax,
			couponCode = @couponCode,
			shortcut = @shortcut,
			bgColor = @bgColor,
			textColor = @textColor,
			yield = @yield,
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		WHERE itemRestID = @itemRestID
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
		
	if @StatementType = 'Delete'
	begin
		begin transaction
		delete from item where itemID = @itemID;
		if(@@ERROR!=0) set @HasError = 1;
		
		DELETE FROM itemWarning WHERE warningID = @warningID
		if(@@ERROR!=0) set @HasError = 1;
		
		DELETE FROM itemPics WHERE itemPicID=@itemPicID
		if(@@ERROR!=0) set @HasError = 1;
		
		DELETE FROM itemRestaurant WHERE itemRestID = @itemRestID
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
END
GO
/****** Object:  StoredProcedure [dbo].[itemRestaurantSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemRestaurantSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@itemRestID INTEGER = -1,
	@itemID integer = -1,
    @byPortion nchar(1) = '',
    @visibleSales nchar(1) = '',
    @orderNo int = '',
    @isMenu nchar(1) = '',
    @freePrice nchar(1) = '',
    @freeMin float = 0,
    @freeMax float = 0,
    @couponCode int = 0,
    @shortcut nvarchar(10) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @yield float = 0,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into itemRestaurant ( itemID, byPortion, visibleSales, orderNo, isMenu, freePrice, freeMin, freeMax, couponCode, shortcut, bgColor, textColor, yield, createDate, lastModified, createUser, modifyUser) values
	(  @itemID, @byPortion, @visibleSales, @orderNo, @isMenu, @freePrice, @freeMin, @freeMax, @couponCode, @shortcut, @bgColor, @textColor, @yield, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('itemRestaurant', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @itemRestID = -1)
	BEGIN
	select * from itemRestaurant;
	select @isInserted = isInsert from tableIsInsert where tableName = 'itemRestaurant';
	
	if(@isInserted!=1) select(IDENT_CURRENT('itemRestaurant')) as nextID;
	else select(IDENT_CURRENT('itemRestaurant')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @itemRestID != -1)
	BEGIN
	select * from itemRestaurant where itemRestID=@itemRestID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'itemRestaurant';
	
	if(@isInserted!=1) select(IDENT_CURRENT('itemRestaurant')) as nextID;
	else select(IDENT_CURRENT('itemRestaurant')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemRestaurant SET
		itemID = @itemID,
		byPortion = @byPortion, 
		visibleSales = @visibleSales, 
		orderNo = @orderNo, 
		isMenu = @isMenu, 
		freePrice = @freePrice, 
		freeMin = @freeMin, 
		freeMax = @freeMax,
		couponCode = @couponCode,
		shortcut = @shortcut,
		bgColor = @bgColor,
		textColor = @textColor,
		yield = @yield,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE itemRestID = @itemRestID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemRestaurant WHERE itemRestID = @itemRestID
	END
END
GO
/****** Object:  Table [dbo].[line]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[line](
	[brandID] [int] NOT NULL,
	[lineID] [int] IDENTITY(1,1) NOT NULL,
	[lineName] [nvarchar](100) NULL,
	[description] [nvarchar](50) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_line] PRIMARY KEY CLUSTERED 
(
	[lineID] ASC,
	[brandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[itemWarningSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[itemWarningSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@warningID INTEGER = -1,
	@allUser nchar(1) = '-1',
	@users INTEGER = '-1',
	@warningMessage nvarchar(100) = '',
	@createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into itemWarning ( allUser, users, warningMessage, createDate, lastModified, createUser, modifyUser) values
	(  @allUser, @users, @warningMessage, GETDATE(), GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF (@StatementType = 'Select' AND @warningID = -1)
	BEGIN
	select * from itemWarning
	END
	
	IF (@StatementType = 'Select' AND @warningID != -1)
	BEGIN
	select * from itemWarning where warningID=@warningID
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE itemWarning SET
		allUser = @allUser,
		users = @users, 
		warningMessage = @warningMessage,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE warningID = @warningID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM itemWarning WHERE warningID = @warningID
	END
END
GO
/****** Object:  Table [dbo].[modifierDetail]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[modifierDetail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modifierID] [int] NOT NULL,
	[itemID] [int] NOT NULL,
	[isItem] [nchar](1) NULL,
	[portion] [float] NULL,
	[priceChange] [float] NULL,
	[position] [int] NULL,
	[formatID] [int] NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_modifier_detail_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[TestSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TestSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@deptName varchar(100) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	IF @StatementType = 'Insert'
	BEGIN
	insert into test ( deptName, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, createUser, modifyUser) values
	(  @deptName, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), @createUser, @modifyUser);
	
	SELECT @newID = SCOPE_IDENTITY();
	END
	
	IF @StatementType = 'Select'
	BEGIN
	select * from test
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE test SET
		deptName = @deptName,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct, 
		modifyUser = @modifyUser
	WHERE deptId = @deptId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM test WHERE deptId = @deptId
	END
END
GO
/****** Object:  Table [dbo].[taxGroup]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taxGroup](
	[taxGroupID] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](20) NULL,
	[state] [nvarchar](20) NULL,
	[city] [nvarchar](20) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[category] [nvarchar](20) NULL,
	[comment] [nvarchar](100) NULL,
	[serviceTypeID] [int] NULL,
	[inclusive] [nchar](1) NULL,
	[line] [int] NULL,
	[taxTypeID] [int] NULL,
	[isPerAmount] [nchar](1) NULL,
	[amount] [float] NULL,
	[percentage] [float] NULL,
	[isExempt] [nchar](1) NULL,
	[afterDiscount] [nchar](1) NULL,
	[afterLine] [nchar](1) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_taxGroup] PRIMARY KEY CLUSTERED 
(
	[taxGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[taxTypeSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[taxTypeSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@taxTypeID INTEGER = -1,
	@description nvarchar(50) = '',
    @inputTaxAccount nvarchar(20) = '',
    @outputTaxAccount nvarchar(20) = '',
    @refundTaxAccount nvarchar(10) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into taxType ( description, inputTaxAccount, outputTaxAccount, refundTaxAccount, createDate, lastModified, createUser, modifyUser) values
	(  @description, @inputTaxAccount, @outputTaxAccount, @refundTaxAccount, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('taxType', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @taxTypeID = -1)
	BEGIN
	select * from taxType;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxType')) as nextID;
	else select(IDENT_CURRENT('taxType')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @taxTypeID != -1)
	BEGIN
	select * from taxType where taxTypeID=@taxTypeID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxType')) as nextID;
	else select(IDENT_CURRENT('taxType')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE taxType SET
		description = @description, 
		inputTaxAccount = @inputTaxAccount, 
		outputTaxAccount = @outputTaxAccount, 
		refundTaxAccount = @refundTaxAccount, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE taxTypeID=@taxTypeID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM taxType WHERE taxTypeID=@taxTypeID
	END
END
GO
/****** Object:  Table [dbo].[paymentType]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[paymentType](
	[paymentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](200) NULL,
	[currencyCode] [int] NULL,
	[isCashPayment] [char](1) NULL,
	[isAssociateTheClient] [char](1) NULL,
	[isVisibleAtPOS] [char](1) NULL,
	[isPending] [char](1) NULL,
	[round] [int] NULL,
	[keepTheChange] [int] NULL,
	[bankCommission] [varchar](20) NULL,
	[image] [varchar](200) NULL,
	[isDisableOverPayment] [char](1) NULL,
	[isOpenCashDrawer] [char](1) NULL,
	[isLinkSoftwareForHotel] [char](1) NULL,
	[isApplicableWithOtherPaymentType] [char](1) NULL,
	[associatedDLL] [varchar](200) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_paymentType] PRIMARY KEY CLUSTERED 
(
	[paymentTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[modifierMasterSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[modifierMasterSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@modifierID INTEGER = -1,
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @divisible nchar(1) = '',
    @comment nvarchar(200) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into modifierMaster ( reference, description, divisible, comment, createDate, lastModified, createUser, modifyUser) values
	( @reference, @description, @divisible, @comment, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('modifierMaster', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @modifierID = -1)
	BEGIN
	select * from modifierMaster;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierMaster';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierMaster')) as nextID;
	else select(IDENT_CURRENT('modifierMaster')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @modifierID != -1)
	BEGIN
	select * from modifierMaster where modifierID=@modifierID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierMaster';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierMaster')) as nextID;
	else select(IDENT_CURRENT('modifierMaster')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE modifierMaster SET
		reference = @reference,
		description = @description, 
		divisible = @divisible, 
		comment = @comment, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE modifierID = @modifierID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM modifierMaster WHERE modifierID = @modifierID
	END
END
GO
/****** Object:  Table [dbo].[section]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[section](
	[deptID] [int] NOT NULL,
	[sectionID] [int] IDENTITY(1,1) NOT NULL,
	[sectionName] [varchar](100) NULL,
	[reference] [nvarchar](25) NULL,
	[description] [nvarchar](50) NULL,
	[image] [varchar](100) NULL,
	[bgColor] [nvarchar](20) NULL,
	[textColor] [nvarchar](20) NULL,
	[costCenter] [nvarchar](10) NULL,
	[saleAcct] [nvarchar](20) NULL,
	[purchaseAcct] [nvarchar](20) NULL,
	[version] [timestamp] NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_section] PRIMARY KEY CLUSTERED 
(
	[sectionID] ASC,
	[deptID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sp_TestD]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TestD] 
	-- Add the parameters for the stored procedure here
	@id int = -1,
	@name2 varchar(10) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
	BEGIN
		insert into testD (id, name2) values (@id, @name2);
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[taxGroupSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[taxGroupSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@taxGroupID INTEGER = -1,
	@country nvarchar(20) = '',
	@state nvarchar(20) = '',
	@city nvarchar(20) = '',
	@reference nvarchar(25) = '',
	@description nvarchar(50) = '',
    @category nvarchar(20) = '',
    @comment nvarchar(100) = '',
    @serviceTypeID int = -1,
    @inclusive nchar(1) = '',
    @line int = -1,
    @taxTypeID int = -1,
    @isPerAmount nchar(1) = '',
    @amount float = 0,
    @percentage float = 0,
    @isExempt nchar(1) = '',
    @afterDiscount nchar(1) = '',
    @afterLine nchar(1) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into taxGroup ( country, state, city, reference, description, category, comment, serviceTypeID, inclusive, line, taxTypeID, isPerAmount, amount, percentage, isExempt, afterDiscount, afterLine, createDate, lastModified, createUser, modifyUser) values
	(  @country, @state, @city, @reference, @description, @category, @comment, @serviceTypeID, @inclusive, @line, @taxTypeID, @isPerAmount, @amount, @percentage, @isExempt, @afterDiscount, @afterLine, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('taxGroup', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @taxGroupID = -1)
	BEGIN
	select * from taxGroup;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxGroup';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxGroup')) as nextID;
	else select(IDENT_CURRENT('taxGroup')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @taxGroupID != -1)
	BEGIN
	select * from taxGroup where taxGroupID=@taxGroupID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'taxGroup';
	
	if(@isInserted!=1) select(IDENT_CURRENT('taxGroup')) as nextID;
	else select(IDENT_CURRENT('taxGroup')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE taxGroup SET
		country = @country, 
		city = @city, 
		reference = @reference, 
		description = @description,
		category = @category,
		comment = @comment,
		serviceTypeID = @serviceTypeID,
		line = @line,
		taxTypeID = @taxTypeID,
		isPerAmount = @isPerAmount,
		amount = @amount,
		percentage = @percentage,
		isExempt = @isExempt,
		afterDiscount = @afterDiscount,
		afterLine = @afterLine, 
		
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE taxGroupID=@taxGroupID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM taxGroup WHERE taxGroupID=@taxGroupID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sectionSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sectionSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@deptID INTEGER = -1,
	@sectionID INTEGER = -1,
	@sectionName varchar(100) = '',
	@reference varchar(25) = '',
    @description nvarchar(50) = '',
    @image varchar(100) = '',
    @bgColor nvarchar(20) = '',
    @textColor nvarchar(20) = '',
    @costCenter nvarchar(10) = '',
    @saleAcct nvarchar(20) = '',
    @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	insert into section ( deptID, sectionName, reference, description, image, bgColor, textColor, costCenter, saleAcct, purchaseAcct, createDate, lastModified, createUser, modifyUser) values
	( @deptID, @sectionName, @reference, @description, @image, @bgColor, @textColor, @costCenter, @saleAcct, @purchaseAcct, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('section', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @deptID = -1)
	BEGIN
	select * from section;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1)
	BEGIN
	select * from section where deptID=@deptID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @deptID != -1 AND @sectionID != -1)
	BEGIN
	select * from section where deptID=@deptID and sectionID=@sectionID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'section';
	
	if(@isInserted!=1) select(IDENT_CURRENT('section')) as nextID;
	else select(IDENT_CURRENT('section')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE section SET
		deptId = @deptId,
		sectionName = @sectionName,
		reference = @reference,
		description = @description, 
		image = @image, 
		bgColor = @bgColor, 
		textColor = @textColor, 
		costCenter = @costCenter, 
		saleAcct = @saleAcct, 
		purchaseAcct = @purchaseAcct, 
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE deptId = @deptId and sectionID=@sectionID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM section WHERE deptId = @deptId and sectionID=@sectionID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[paymentTypeSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[paymentTypeSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@paymentTypeID int = -1,
    @description varchar(200) = '',
    @currencyCode int = -1,
    @isCashPayment char(1) = '',
    @isAssociateTheClient char(1) = '',
    @isVisibleAtPOS char(1) = '',
    @isPending char(1) = '',
    @round int = -1,
    @keepTheChange int = -1,
    @bankCommission varchar(20) = '',
    @image varchar(200) = '',
    @isDisableOverPayment char(1) = '',
    @isOpenCashDrawer char(1) = '',
    @isLinkSoftwareForHotel char(1) = '',
    @isApplicableWithOtherPaymentType char(1) = '',
    @associatedDLL varchar(200) = '',
    
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	INSERT INTO [dbo].[paymentType] ([description], [currencyCode], [isCashPayment], [isAssociateTheClient], [isVisibleAtPOS], [isPending], [round], [keepTheChange], [bankCommission], [image], [isDisableOverPayment], [isOpenCashDrawer], [isLinkSoftwareForHotel], [isApplicableWithOtherPaymentType], [associatedDLL], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @description, @currencyCode, @isCashPayment, @isAssociateTheClient, @isVisibleAtPOS, @isPending, @round, @keepTheChange, @bankCommission, @image, @isDisableOverPayment, @isOpenCashDrawer, @isLinkSoftwareForHotel, @isApplicableWithOtherPaymentType, @associatedDLL, GETDATE(), @createUser, GETDATE(), @modifyUser
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('paymentType', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @paymentTypeID = -1)
	BEGIN
	select * from paymentType;
	select @isInserted = isInsert from tableIsInsert where tableName = 'paymentType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('paymentType')) as nextID;
	else select(IDENT_CURRENT('paymentType')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @paymentTypeID != -1)
	BEGIN
	select * from paymentType where paymentTypeID=@paymentTypeID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'paymentType';
	
	if(@isInserted!=1) select(IDENT_CURRENT('paymentType')) as nextID;
	else select(IDENT_CURRENT('paymentType')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE paymentType SET
		[description] = @description, 
		[currencyCode] = @currencyCode, 
		[isCashPayment] = @isCashPayment, 
		[isAssociateTheClient] = @isAssociateTheClient, 
		[isVisibleAtPOS] = @isVisibleAtPOS, 
		[isPending] = @isPending, 
		[round] = @round, 
		[keepTheChange] = @keepTheChange, 
		[bankCommission] = @bankCommission, 
		[image] = @image, 
		[isDisableOverPayment] = @isDisableOverPayment, 
		[isOpenCashDrawer] = @isOpenCashDrawer, 
		[isLinkSoftwareForHotel] = @isLinkSoftwareForHotel, 
		[isApplicableWithOtherPaymentType] = @isApplicableWithOtherPaymentType, 
		[associatedDLL] = @associatedDLL, 
		
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE paymentTypeId = @paymentTypeId
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM paymentType WHERE paymentTypeId = @paymentTypeId
	END
END
GO
/****** Object:  StoredProcedure [dbo].[modifierDetailSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[modifierDetailSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@ID INTEGER = -1,
	@modifierID INTEGER = -1,
	@itemID INTEGER = -1,
	@isItem nchar(1) = '',
    @portion float = 0,
    @priceChange float = 0,
    @position integer = -1,
    @formatID integer = -1,
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	insert into modifierDetail ( modifierID, itemID, isItem, portion, priceChange, position, formatID, createDate, lastModified, createUser, modifyUser) values
	( @modifierID, @itemID, @isItem, @portion, @priceChange, @position, @formatID, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('modifierDetail', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @ID = -1)
	BEGIN
	select * from modifierDetail;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierDetail';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierDetail')) as nextID;
	else select(IDENT_CURRENT('modifierDetail')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @ID != -1)
	BEGIN
	select * from modifierDetail where ID=@ID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'modifierDetail';
	
	if(@isInserted!=1) select(IDENT_CURRENT('modifierDetail')) as nextID;
	else select(IDENT_CURRENT('modifierDetail')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE modifierDetail SET
		modifierID = @modifierID,
		itemID = @itemID, 
		isItem = @isItem, 
		portion = @portion,
		priceChange = @priceChange,
		position = @position,
		formatID = @formatID,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE ID = @ID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM modifierDetail WHERE ID = @ID
	END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_TestM]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_TestM] 
	-- Add the parameters for the stored procedure here
	@name varchar(10) = '',
	@name2 varchar(10) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    
    declare @newID int;
    declare @HasError int;
    set @HasError = 0;
    
	BEGIN TRANSACTION
	insert into testM (name) values (@name);
	
	if (@@ERROR != 0)
	begin
		set @HasError = 1;
	end
	
	SELECT @newID = SCOPE_IDENTITY();

	EXECUTE sp_TestD @newID,@name2;
	
	if (@@ERROR != 0)
	begin
		set @HasError = 1;
	end
	
	if (@HasError <> 0)
	begin
		rollback transaction
	end
	else
	begin
		commit transaction
	end
END
GO
/****** Object:  StoredProcedure [dbo].[lineSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[lineSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@brandID INTEGER = -1,
	@lineID INTEGER = -1,
	@lineName varchar(100) = '',
    @description nvarchar(50) = '',
    -- @image varchar(100) = '',
    -- @bgColor nvarchar(20) = '',
    -- @textColor nvarchar(20) = '',
    -- @costCenter nvarchar(10) = '',
    -- @saleAcct nvarchar(20) = '',
    -- @purchaseAcct nvarchar(20) = '',
    -- @version timestamp,
    -- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- convert datetime from string
	-- SET @createDate = CONVERT(datetime, @createDate);

    -- Insert statements for procedure here
    declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	insert into line ( brandID, lineName, description, createDate, lastModified, createUser, modifyUser) values
	( @brandID, @lineName, @description, GETDATE(), GETDATE(), @createUser, @modifyUser);
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('line', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @brandID = -1 AND @lineID = -1)
	BEGIN
	select * from line;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1)
	BEGIN
	select * from line where brandID=@brandID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @brandID != -1 AND @lineID != -1)
	BEGIN
	select * from line where brandID=@brandID and lineID=@lineID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'line';
	
	if(@isInserted!=1) select(IDENT_CURRENT('line')) as nextID;
	else select(IDENT_CURRENT('line')+1) as nextID;
	END
	
	IF @StatementType = 'Update'
	BEGIN
	UPDATE line SET
		brandID = @brandID,
		lineName = @lineName,
		description = @description, 
		-- image = @image, 
		-- bgColor = @bgColor, 
		-- textColor = @textColor, 
		-- costCenter = @costCenter, 
		-- saleAcct = @saleAcct, 
		-- purchaseAcct = @purchaseAcct,
		lastModified = GETDATE(),
		modifyUser = @modifyUser
	WHERE brandId = @brandId and lineID=@lineID
	END
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM line WHERE brandId = @brandId and lineID=@lineID
	END
END
GO
/****** Object:  Table [dbo].[companyStoreSystem]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[companyStoreSystem](
	[systemID] [int] IDENTITY(1,1) NOT NULL,
	[storeID] [int] NULL,
	[systemName] [varchar](100) NULL,
	[createDate] [datetime] NULL,
	[createUser] [int] NULL,
	[lastModified] [datetime] NULL,
	[modifyUser] [int] NULL,
 CONSTRAINT [PK_companyStoreSystem] PRIMARY KEY CLUSTERED 
(
	[systemID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[companyStoreSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[companyStoreSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@storeID int = -1,
	@companyID int = -1,
    @name varchar(300) = '',
    @address1 varchar(300) = '',
    @address2 varchar(300) = '',
    @city varchar(100) = '',
    @state varchar(100) = '',
    @country varchar(100) = '',
    @zipcode varchar(20) = '',
    @region varchar(100) = '',
    @logo varchar(100) = '',
    @officePhone varchar(20) = '',
    @officeFax varchar(20) = '',
    @taxtID varchar(50) = '',
    
	-- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	INSERT INTO [dbo].[companyStore] ( [companyID],  [name], [address1], [address2], [city], [state], [country], [zipcode], [region], [logo], [officePhone], [officeFax], [taxtID], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @companyID, @name, @address1, @address2, @city, @state, @country, @zipcode, @region, @logo, @officePhone, @officeFax, @taxtID, GETDATE(), @createUser, GETDATE(), @modifyUser
	
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('companyStore', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @companyID = -1)
	BEGIN
	select * from companyStore;
	select @isInserted = isInsert from tableIsInsert where tableName = 'companyStore';
	
	if(@isInserted!=1) select(IDENT_CURRENT('companyStore')) as nextID;
	else select(IDENT_CURRENT('companyStore')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @companyID != -1)
	BEGIN
	select * from companyStore where companyID=@companyID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'companyStore';
	
	if(@isInserted!=1) select(IDENT_CURRENT('companyStore')) as nextID;
	else select(IDENT_CURRENT('companyStore')+1) as nextID;
	END
	
	
	IF @StatementType = 'Update'
	BEGIN
	
	UPDATE [dbo].[companyStore]
	SET    [companyID] = @companyID, [name]  = @name, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [country] = @country, [zipcode] = @zipcode, [region] = @region, [logo] = @logo, [officePhone] = @officePhone, [officeFax] = @officeFax, [taxtID] = @taxtID, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  storeID = @storeId
	
	END
	
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM companyStore WHERE storeID = @storeId
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[employeeSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[employeeSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@employeeID INTEGER = -1,
	@userName nvarchar(50)='',
	@displayName nvarchar(50)='',
	@firstName nvarchar(50)='',
	@lastName nvarchar(50)='',
	@employeeLevel int=-1,
	@salesPassword  nvarchar(300)='',
	@clockinPassword nvarchar(300)='',
	@employeeRole int=-1,
	@locked int = 0,
	@active int = 0,
	@image varchar(50) = '',
	@language varchar(50) = '',
	@location varchar(50) = '',
	
	@organization varchar(100) = '',
	@pobox varchar(20) = '',
	@addr1 varchar(100) = '',
	@addr2 varchar(100) = '',
	@city varchar(50) = '',
	@state varchar(50) = '',
	@country varchar(50) = '',
	@landline varchar(20) = '',
	@mobile1 varchar(15) = '',
	@mobile2 varchar(15) = '',
	@birthdate date='',
	@anniversary date='',
	@wife varchar(50) = '',
	@child1 varchar(50) = '',
	@child2 varchar(50) = '',
	
	@emailID varchar(50) = '',
	@mailServerID varchar(50) = '',
	@emailUserName varchar(50) = '',
	@emailPassword varchar(50) = '',
	
	
	-- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	declare @HasError int;
	set @HasError = 0;

    if(@StatementType='Insert')
    begin
		begin transaction
		
		-- step 1: Insert into Employee
		insert into employee 
		(userName, displayName, firstName, lastName,	employeeLevel,	salesPassword,	clockinPassword, employeeRole, locked, active, image, language, location, createDate, lastModified, createUser, modifyUser) values
		(@userName, @displayName, @firstName, @lastName,	@employeeLevel,	encryptbypassphrase('maina#p_o^s', @salesPassword),	encryptbypassphrase('maina#p_o^s', @clockinPassword), @employeeRole, @locked, @active, @image, @language, @location, GETDATE(), GETDATE(), @createUser, @modifyUser);
		SELECT @newID = SCOPE_IDENTITY();
		if(@@ERROR!=0) set @HasError = 1;
		
		-- step 2: Insert into EmploeeAddress
		insert into employeeAddress
		(employeeID, organization, pobox, addr1, addr2, city, state, country, landline, mobile1, mobile2, birthdate, anniversary, wife, child1, child2, createDate, lastModified, createUser, modifyUser) values
		(@newID, @organization, @pobox, @addr1, @addr2, @city, @state, @country, @landline, @mobile1, @mobile2, @birthdate, @anniversary, @wife, @child1, @child2, GETDATE(), GETDATE(), @createUser, @modifyUser);
		if(@@ERROR!=0) set @HasError = 1;
		
		-- step 3: Insert into EmploeeSetting
		insert into employeeSetting
		(employeeID, emailID, mailServerID, emailUserName, emailPassword, createDate, lastModified, createUser, modifyUser) values
		(@newID, @emailID, @mailServerID, @emailUserName, encryptbypassphrase('maina#p_o^s', @emailPassword), GETDATE(), GETDATE(), @createUser, @modifyUser);
		if(@@ERROR!=0) set @HasError = 1;
		
		insert into tableIsInsert(tableName, isInsert) values('employee', 1);
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
    end
    
    declare @isInserted int;
	set @isInserted = 0;
    
    if(@StatementType='Select')
    begin
		select *, cast(decryptbypassphrase('maina#p_o^s', employee.salesPassword) as varchar(8000)) as sp, cast(decryptbypassphrase('maina#p_o^s', employee.clockinPassword) as varchar(8000)) as cp, cast(decryptbypassphrase('maina#p_o^s', employeeSetting.emailPassword) as varchar(8000)) as ep from employee
		inner join employeeAddress
		on employeeAddress.employeeID = employee.employeeID
		inner join employeeSetting
		on employeeSetting.employeeID = employee.employeeID;
		
		select @isInserted = isInsert from tableIsInsert where tableName = 'employee';
		if(@isInserted!=1) select(IDENT_CURRENT('employee')) as nextID;
		else select(IDENT_CURRENT('employee')+1) as nextID;
    end
    
	if(@StatementType='Update')
	begin
		begin transaction
		
		update employee set
			userName=@userName, 
			displayName=@displayName, 
			firstName=@firstName, 
			lastName=@lastName,	
			employeeLevel=@employeeLevel,	
			salesPassword=encryptbypassphrase('maina#p_o^s', @salesPassword),	
			clockinPassword=encryptbypassphrase('maina#p_o^s', @clockinPassword), 
			employeeRole=@employeeRole, 
			locked=@locked, 
			active=@active, 
			image=@image, 
			language=@language, 
			location=@location, 
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		where employeeID = @employeeID
		if(@@ERROR!=0) set @HasError = 1;
		
		update employeeAddress set
			organization=@organization, 
			pobox=@pobox, 
			addr1=@addr1, 
			addr2=@addr2, 
			city=@city, 
			state=@state, 
			country=@country, 
			landline=@landline, 
			mobile1=@mobile1, 
			mobile2=@mobile2, 
			birthdate=@birthdate, 
			anniversary=@anniversary, 
			wife=@wife, 
			child1=@child1, 
			child2=@child2,	
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		where employeeID = @employeeID
		if(@@ERROR!=0) set @HasError = 1;	
		
		update emploeeSetting set
			emailID=@emailID, 
			mailServerID=@mailServerID,
			emailUserName=@emailUserName, 
			emailPassword=encryptbypassphrase('maina#p_o^s', @emailPassword),
			lastModified = GETDATE(),
			modifyUser = @modifyUser
		where employeeID = @employeeID
		if(@@ERROR!=0) set @HasError = 1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
	
	if(@StatementType='Delete')
	begin
		begin transaction
		
		delete employee where employeeID = @employeeID;
		if(@@ERROR!=0) set @HasError=1;
		
		delete employeeAddress where employeeID = @employeeID;
		if(@@ERROR!=0) set @HasError=1;
		
		delete employeeSetting where employeeID = @employeeID;
		if(@@ERROR!=0) set @HasError=1;
		
		if(@HasError>0) rollback transaction
		else commit transaction
	end
END
GO
/****** Object:  StoredProcedure [dbo].[employeeRoleSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[employeeRoleSelectInsertUpdateDelete]
	-- Add the parameters for the stored procedure here
	@employeeRoleID int=-1,
	@description nvarchar(50)='',
    @saleMenu int=-1,
    @userMenu int=-1,
    @tableMenu int=-1,
    
    @departmentCreate int=-1,
    @departmentModify int=-1,
    @departmentDelete int=-1,
    @departmentVisible int=-1,
    @sectionCreate int=-1,
    @sectionModify int=-1,
    @sectionDelete int=-1,
    @sectionVisible int=-1,
    @familyCreate int=-1,
    @familyModify int=-1,
    @familyDelete int=-1,
    @familyVisible int=-1,
    @brandCreate int=-1,
    @brandModify int=-1,
    @brandDelete int=-1,
    @brandVisible int=-1,
    @lineCreate int=-1,
    @lineModify int=-1,
    @lineDelete int=-1,
    @lineVisible int=-1,
    
    @cashCount int=-1,
    @declared int=-1,
    @reportByPaymentType int=-1,
    @seller int=-1,
    @saleSummary int=-1,
    @collectionsOrPayments int=-1,
    @returnSummary int=-1,
    @returnDetail int=-1,
    @voidSummary int=-1,
    @voidDetail int=-1,
    @complimentary int=-1,
    @saleBySection int=-1,
    @saleByItem int=-1,
    @discountDetail int=-1,
    
    @customerMasterCreate int=-1,
    @customerMasterModify int=-1,
    @customerMasterDelete int=-1,
    @customerMasterVisible int=-1,
    @consultBalanceCreate int=-1,
    @consultBalanceModify int=-1,
    @consultBalanceDelete int=-1,
    @consultBalanceVisible int=-1,
    
    @tableCreate int=-1,
    @tableModify int=-1,
    @tableDelete int=-1,
    @tableVisible int=-1,
    @salesCreate int=-1,
    @salesModify int=-1,
    @salesDelete int=-1,
    @salesVisible int=-1,
    @deliveryCreate int=-1,
    @deliveryModify int=-1,
    @deliveryDelete int=-1,
    @deliveryVisible int=-1,
    @takeAwayCreate int=-1,
    @takeAwayModify int=-1,
    @takeAwayDelete int=-1,
    @takeAwayVisible int=-1,
    
    @allowInventoryToGoNegative int=-1,
    @declareInventory int=-1,
    @declareWastage int=-1,
    @inventoryAdjustment int=-1,
    @closeInventory int=-1,
    
    @salePriceCreate int=-1,
    @salePriceModify int=-1,
    @salePriceDelete int=-1,
    @salePriceVisible int=-1,
    @costCreate int=-1,
    @costModify int=-1,
    @costDelete int=-1,
    @costVisible int=-1,
    @itemCreate int=-1,
    @itemModify int=-1,
    @itemDelete int=-1,
    @itemVisible int=-1,
    @modifierCreate int=-1,
    @modifierModify int=-1,
    @modifierDelete int=-1,
    @modifierVisible int=-1,
    @formatCreate int=-1,
    @formatModify int=-1,
    @formatDelete int=-1,
    @formatVisible int=-1,
    @fixedItemCreate int=-1,
    @fixedItemModify int=-1,
    @fixedItemDelete int=-1,
    @fixedItemVisible int=-1,
    @priceListCreate int=-1,
    @priceListModify int=-1,
    @priceListDelete int=-1,
    @priceListVisible int=-1,
    
    @purchaseOrderCreate int=-1,
    @purchaseOrderModify int=-1,
    @purchaseOrderDelete int=-1,
    @purchaseOrderVisible int=-1,
    @purchaseDeliveryCreate int=-1,
    @purchaseDeliveryModify int=-1,
    @purchaseDeliveryDelete int=-1,
    @purchaseDeliveryVisible int=-1,
    @supplierCreationCreate int=-1,
    @supplierCreationModify int=-1,
    @supplierCreationDelete int=-1,
    @supplierCreationVisible int=-1,
    @supplierPriceListCreate int=-1,
    @supplierPriceListModify int=-1,
    @supplierPriceListDelete int=-1,
    @supplierPriceListVisible int=-1,
    
    @purchaseOrderReport int=-1,
    @purchaseDeliveryNote int=-1,
    @inventory int=-1,
    @purchaseSalesAndStock int=-1,
    @currentStock int=-1,
    @consumption int=-1,
    
    @credit int=-1,
    @voidBill int=-1,
    @roundBill int=-1,
    @addItem int=-1,
    @discount int=-1,
    @billModification int=-1,
    @voidLine int=-1,
    @returnItem int=-1,
    
    @byPaymentType int=-1,
    @salesSummary int=-1,
    @byTable int=-1,
    @byHours int=-1,
    @byDepartment int=-1,
    @bySection int=-1,
    @byServiceTax int=-1,
    @returns int=-1,
    @voids int=-1,
    @pendingCollection int=-1,
    @profitMargin int=-1,
    @complimentary_sale_report int=-1,
    @vouchers int=-1,
    @salesByFormat int=-1,
    @staffMealReport int=-1,
    @salesByPortion int=-1,
    
    @exitToWindow int=-1,
    
    @openTableOfOtherEmployee int=-1,
    @changeRoom int=-1,
    @changeTable int=-1,
    @modifyCover int=-1,
    
    @createCard int=-1,
    @swipeCardOnSale int=-1,
    
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @isError int;
	set @isError = 0;

	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
    -- step 1: Insert into EmployeeRole
    INSERT INTO [dbo].[employeeRole] ([description], [saleMenu], [userMenu], [tableMenu], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @description, @saleMenu, @userMenu, @tableMenu, GETDATE(), @createUser, GETDATE(), @modifyUser
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 2: Insert into employeeRole_Classification
	INSERT INTO [dbo].[employeeRole_Classification] ([employeeRoleID], [departmentCreate], [departmentModify], [departmentDelete], [departmentVisible], [sectionCreate], [sectionModify], [sectionDelete], [sectionVisible], [familyCreate], [familyModify], [familyDelete], [familyVisible], [brandCreate], [brandModify], [brandDelete], [brandVisible], [lineCreate], [lineModify], [lineDelete], [lineVisible], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @departmentCreate, @departmentModify, @departmentDelete, @departmentVisible, @sectionCreate, @sectionModify, @sectionDelete, @sectionVisible, @familyCreate, @familyModify, @familyDelete, @familyVisible, @brandCreate, @brandModify, @brandDelete, @brandVisible, @lineCreate, @lineModify, @lineDelete, @lineVisible, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 3: Insert into
	INSERT INTO [dbo].[employeeRole_ClosingReport] ([employeeRoleID], [cashCount], [declared], [reportByPaymentType], [seller], [saleSummary], [collectionsOrPayments], [returnSummary], [returnDetail], [voidSummary], [voidDetail], [complimentary], [saleBySection], [saleByItem], [discountDetail], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @cashCount, @declared, @reportByPaymentType, @seller, @saleSummary, @collectionsOrPayments, @returnSummary, @returnDetail, @voidSummary, @voidDetail, @complimentary, @saleBySection, @saleByItem, @discountDetail, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 4: Insert into
	INSERT INTO [dbo].[employeeRole_Customer] ([employeeRoleID], [customerMasterCreate], [customerMasterModify], [customerMasterDelete], [customerMasterVisible], [consultBalanceCreate], [consultBalanceModify], [consultBalanceDelete], [consultBalanceVisible], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @customerMasterCreate, @customerMasterModify, @customerMasterDelete, @customerMasterVisible, @consultBalanceCreate, @consultBalanceModify, @consultBalanceDelete, @consultBalanceVisible, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 5: Insert into
	INSERT INTO [dbo].[employeeRole_Form] ([employeeRoleID], [tableCreate], [tableModify], [tableDelete], [tableVisible], [salesCreate], [salesModify], [salesDelete], [salesVisible], [deliveryCreate], [deliveryModify], [deliveryDelete], [deliveryVisible], [takeAwayCreate], [takeAwayModify], [takeAwayDelete], [takeAwayVisible], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @tableCreate, @tableModify, @tableDelete, @tableVisible, @salesCreate, @salesModify, @salesDelete, @salesVisible, @deliveryCreate, @deliveryModify, @deliveryDelete, @deliveryVisible, @takeAwayCreate, @takeAwayModify, @takeAwayDelete, @takeAwayVisible, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 6: Insert into
	INSERT INTO [dbo].[employeeRole_Inventory] ([employeeRoleID], [allowInventoryToGoNegative], [declareInventory], [declareWastage], [inventoryAdjustment], [closeInventory], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @allowInventoryToGoNegative, @declareInventory, @declareWastage, @inventoryAdjustment, @closeInventory, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 7: Insert into
	INSERT INTO [dbo].[employeeRole_Item] ([employeeRoleID], [salePriceCreate], [salePriceModify], [salePriceDelete], [salePriceVisible], [costCreate], [costModify], [costDelete], [costVisible], [itemCreate], [itemModify], [itemDelete], [itemVisible], [modifierCreate], [modifierModify], [modifierDelete], [modifierVisible], [formatCreate], [formatModify], [formatDelete], [formatVisible], [fixedItemCreate], [fixedItemModify], [fixedItemDelete], [fixedItemVisible], [priceListCreate], [priceListModify], [priceListDelete], [priceListVisible], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @salePriceCreate, @salePriceModify, @salePriceDelete, @salePriceVisible, @costCreate, @costModify, @costDelete, @costVisible, @itemCreate, @itemModify, @itemDelete, @itemVisible, @modifierCreate, @modifierModify, @modifierDelete, @modifierVisible, @formatCreate, @formatModify, @formatDelete, @formatVisible, @fixedItemCreate, @fixedItemModify, @fixedItemDelete, @fixedItemVisible, @priceListCreate, @priceListModify, @priceListDelete, @priceListVisible, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 8: Insert into
	INSERT INTO [dbo].[employeeRole_Purchase] ([employeeRoleID], [purchaseOrderCreate], [purchaseOrderModify], [purchaseOrderDelete], [purchaseOrderVisible], [purchaseDeliveryCreate], [purchaseDeliveryModify], [purchaseDeliveryDelete], [purchaseDeliveryVisible], [supplierCreationCreate], [supplierCreationModify], [supplierCreationDelete], [supplierCreationVisible], [supplierPriceListCreate], [supplierPriceListModify], [supplierPriceListDelete], [supplierPriceListVisible], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @purchaseOrderCreate, @purchaseOrderModify, @purchaseOrderDelete, @purchaseOrderVisible, @purchaseDeliveryCreate, @purchaseDeliveryModify, @purchaseDeliveryDelete, @purchaseDeliveryVisible, @supplierCreationCreate, @supplierCreationModify, @supplierCreationDelete, @supplierCreationVisible, @supplierPriceListCreate, @supplierPriceListModify, @supplierPriceListDelete, @supplierPriceListVisible, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 9: Insert into
	INSERT INTO [dbo].[employeeRole_PurchaseInventoryReport] ([employeeRoleID], [purchaseOrderReport], [purchaseDeliveryNote], [inventory], [purchaseSalesAndStock], [currentStock], [consumption], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @purchaseOrderReport, @purchaseDeliveryNote, @inventory, @purchaseSalesAndStock, @currentStock, @consumption, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 10: Insert into
	INSERT INTO [dbo].[employeeRole_Sale] ([employeeRoleID], [credit], [voidBill], [roundBill], [addItem], [discount], [billModification], [voidLine], [returnItem], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @credit, @voidBill, @roundBill, @addItem, @discount, @billModification, @voidLine, @returnItem, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 11: Insert into
	INSERT INTO [dbo].[employeeRole_SalesReport] ([employeeRoleID], [byPaymentType], [salesSummary], [byTable], [byHours], [byDepartment], [bySection], [byServiceTax], [returns], [voids], [pendingCollection], [profitMargin], [complimentary], [vouchers], [salesByFormat], [staffMealReport], [salesByPortion], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @byPaymentType, @salesSummary, @byTable, @byHours, @byDepartment, @bySection, @byServiceTax, @returns, @voids, @pendingCollection, @profitMargin, @complimentary_sale_report, @vouchers, @salesByFormat, @staffMealReport, @salesByPortion, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 12: Insert into
	INSERT INTO [dbo].[employeeRole_System] ([employeeRoleID], [exitToWindow], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @exitToWindow, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 13: Insert into
	INSERT INTO [dbo].[employeeRole_Table] ([employeeRoleID], [openTableOfOtherEmployee], [changeRoom], [changeTable], [modifyCover], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @openTableOfOtherEmployee, @changeRoom, @changeTable, @modifyCover, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 14: Insert into
	INSERT INTO [dbo].[employeeRole_Loyalty] ([employeeRoleID], [createCard], [swipeCardOnSale], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @newID, @createCard, @swipeCardOnSale, GETDATE(), @createUser, GETDATE(), @modifyUser
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('employeeRole', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	IF @StatementType = 'Update'
	BEGIN
	
	begin transaction
	
	-- step 1: Update
	UPDATE [dbo].[employeeRole]
	SET    [description] = @description, [saleMenu] = @saleMenu, [userMenu] = @userMenu, [tableMenu] = @tableMenu, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 2: Update
	UPDATE [dbo].[employeeRole_Classification]
	SET    [departmentCreate] = @departmentCreate, [departmentModify] = @departmentModify, [departmentDelete] = @departmentDelete, [departmentVisible] = @departmentVisible, [sectionCreate] = @sectionCreate, [sectionModify] = @sectionModify, [sectionDelete] = @sectionDelete, [sectionVisible] = @sectionVisible, [familyCreate] = @familyCreate, [familyModify] = @familyModify, [familyDelete] = @familyDelete, [familyVisible] = @familyVisible, [brandCreate] = @brandCreate, [brandModify] = @brandModify, [brandDelete] = @brandDelete, [brandVisible] = @brandVisible, [lineCreate] = @lineCreate, [lineModify] = @lineModify, [lineDelete] = @lineDelete, [lineVisible] = @lineVisible, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 3: Update
	UPDATE [dbo].[employeeRole_ClosingReport]
	SET    [cashCount] = @cashCount, [declared] = @declared, [reportByPaymentType] = @reportByPaymentType, [seller] = @seller, [saleSummary] = @saleSummary, [collectionsOrPayments] = @collectionsOrPayments, [returnSummary] = @returnSummary, [returnDetail] = @returnDetail, [voidSummary] = @voidSummary, [voidDetail] = @voidDetail, [complimentary] = @complimentary, [saleBySection] = @saleBySection, [saleByItem] = @saleByItem, [discountDetail] = @discountDetail, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 4: Update
	UPDATE [dbo].[employeeRole_Customer]
	SET    [customerMasterCreate] = @customerMasterCreate, [customerMasterModify] = @customerMasterModify, [customerMasterDelete] = @customerMasterDelete, [customerMasterVisible] = @customerMasterVisible, [consultBalanceCreate] = @consultBalanceCreate, [consultBalanceModify] = @consultBalanceModify, [consultBalanceDelete] = @consultBalanceDelete, [consultBalanceVisible] = @consultBalanceVisible, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 5: Update
	UPDATE [dbo].[employeeRole_Form]
	SET    [tableCreate] = @tableCreate, [tableModify] = @tableModify, [tableDelete] = @tableDelete, [tableVisible] = @tableVisible, [salesCreate] = @salesCreate, [salesModify] = @salesModify, [salesDelete] = @salesDelete, [salesVisible] = @salesVisible, [deliveryCreate] = @deliveryCreate, [deliveryModify] = @deliveryModify, [deliveryDelete] = @deliveryDelete, [deliveryVisible] = @deliveryVisible, [takeAwayCreate] = @takeAwayCreate, [takeAwayModify] = @takeAwayModify, [takeAwayDelete] = @takeAwayDelete, [takeAwayVisible] = @takeAwayVisible, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 6: Update
	UPDATE [dbo].[employeeRole_Inventory]
	SET    [allowInventoryToGoNegative] = @allowInventoryToGoNegative, [declareInventory] = @declareInventory, [declareWastage] = @declareWastage, [inventoryAdjustment] = @inventoryAdjustment, [closeInventory] = @closeInventory, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 7: Update
	UPDATE [dbo].[employeeRole_Item]
	SET    [salePriceCreate] = @salePriceCreate, [salePriceModify] = @salePriceModify, [salePriceDelete] = @salePriceDelete, [salePriceVisible] = @salePriceVisible, [costCreate] = @costCreate, [costModify] = @costModify, [costDelete] = @costDelete, [costVisible] = @costVisible, [itemCreate] = @itemCreate, [itemModify] = @itemModify, [itemDelete] = @itemDelete, [itemVisible] = @itemVisible, [modifierCreate] = @modifierCreate, [modifierModify] = @modifierModify, [modifierDelete] = @modifierDelete, [modifierVisible] = @modifierVisible, [formatCreate] = @formatCreate, [formatModify] = @formatModify, [formatDelete] = @formatDelete, [formatVisible] = @formatVisible, [fixedItemCreate] = @fixedItemCreate, [fixedItemModify] = @fixedItemModify, [fixedItemDelete] = @fixedItemDelete, [fixedItemVisible] = @fixedItemVisible, [priceListCreate] = @priceListCreate, [priceListModify] = @priceListModify, [priceListDelete] = @priceListDelete, [priceListVisible] = @priceListVisible, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 8: Update
	UPDATE [dbo].[employeeRole_Purchase]
	SET    [purchaseOrderCreate] = @purchaseOrderCreate, [purchaseOrderModify] = @purchaseOrderModify, [purchaseOrderDelete] = @purchaseOrderDelete, [purchaseOrderVisible] = @purchaseOrderVisible, [purchaseDeliveryCreate] = @purchaseDeliveryCreate, [purchaseDeliveryModify] = @purchaseDeliveryModify, [purchaseDeliveryDelete] = @purchaseDeliveryDelete, [purchaseDeliveryVisible] = @purchaseDeliveryVisible, [supplierCreationCreate] = @supplierCreationCreate, [supplierCreationModify] = @supplierCreationModify, [supplierCreationDelete] = @supplierCreationDelete, [supplierCreationVisible] = @supplierCreationVisible, [supplierPriceListCreate] = @supplierPriceListCreate, [supplierPriceListModify] = @supplierPriceListModify, [supplierPriceListDelete] = @supplierPriceListDelete, [supplierPriceListVisible] = @supplierPriceListVisible, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 9: Update
	UPDATE [dbo].[employeeRole_PurchaseInventoryReport]
	SET    [purchaseOrderReport] = @purchaseOrderReport, [purchaseDeliveryNote] = @purchaseDeliveryNote, [inventory] = @inventory, [purchaseSalesAndStock] = @purchaseSalesAndStock, [currentStock] = @currentStock, [consumption] = @consumption, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 10: Update
	UPDATE [dbo].[employeeRole_Sale]
	SET    [credit] = @credit, [voidBill] = @voidBill, [roundBill] = @roundBill, [addItem] = @addItem, [discount] = @discount, [billModification] = @billModification, [voidLine] = @voidLine, [returnItem] = @returnItem, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 11: Update
	UPDATE [dbo].[employeeRole_SalesReport]
	SET    [byPaymentType] = @byPaymentType, [salesSummary] = @salesSummary, [byTable] = @byTable, [byHours] = @byHours, [byDepartment] = @byDepartment, [bySection] = @bySection, [byServiceTax] = @byServiceTax, [returns] = @returns, [voids] = @voids, [pendingCollection] = @pendingCollection, [profitMargin] = @profitMargin, [complimentary] = @complimentary_sale_report, [vouchers] = @vouchers, [salesByFormat] = @salesByFormat, [staffMealReport] = @staffMealReport, [salesByPortion] = @salesByPortion, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 12: Update
	UPDATE [dbo].[employeeRole_System]
	SET    [exitToWindow] = @exitToWindow, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 13: Update
	UPDATE [dbo].[employeeRole_Table]
	SET    [openTableOfOtherEmployee] = @openTableOfOtherEmployee, [changeRoom] = @changeRoom, [changeTable] = @changeTable, [modifyCover] = @modifyCover, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	-- step 14: Update
	UPDATE [dbo].[employeeRole_Loyalty]
	SET    [createCard] = @createCard, [swipeCardOnSale] = @swipeCardOnSale, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  [employeeRoleID] = @employeeRoleID
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	IF @StatementType = 'Delete'
	BEGIN
	
	begin transaction
	
	-- step 1: Delete
	DELETE
	FROM   [dbo].[employeeRole_Classification]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 2: Delete
	DELETE
	FROM   [dbo].[employeeRole_ClosingReport]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 3: Delete
	DELETE
	FROM   [dbo].[employeeRole_Customer]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 4: Delete
	DELETE
	FROM   [dbo].[employeeRole_Form]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 5: Delete
	DELETE
	FROM   [dbo].[employeeRole_Inventory]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 6: Delete
	DELETE
	FROM   [dbo].[employeeRole_Item]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 7: Delete
	DELETE
	FROM   [dbo].[employeeRole_Purchase]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 8: Delete
	DELETE
	FROM   [dbo].[employeeRole_PurchaseInventoryReport]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 9: Delete
	DELETE
	FROM   [dbo].[employeeRole_Sale]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 10: Delete
	DELETE
	FROM   [dbo].[employeeRole_SalesReport]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 11: Delete
	DELETE
	FROM   [dbo].[employeeRole_System]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 12: Delete
	DELETE
	FROM   [dbo].[employeeRole_Table]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 13: Delete
	DELETE
	FROM   [dbo].[employeeRole]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	-- step 14: Delete
	DELETE
	FROM   [dbo].[employeeRole_Loyalty]
	WHERE  [employeeRoleID] = @employeeRoleID
	
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF @StatementType = 'Select'
	BEGIN
		select *, employeeRole_SalesReport.complimentary as complimentary_sale_report from employeeRole
		inner join employeeRole_Classification
		on employeeRole.employeeRoleID = employeeRole_Classification.employeeRoleID
		inner join employeeRole_ClosingReport
		on employeeRole.employeeRoleID = employeeRole_ClosingReport.employeeRoleID
		inner join employeeRole_Customer
		on employeeRole.employeeRoleID = employeeRole_Customer.employeeRoleID
		inner join employeeRole_Form
		on employeeRole.employeeRoleID = employeeRole_Form.employeeRoleID
		inner join employeeRole_Inventory
		on employeeRole.employeeRoleID = employeeRole_Inventory.employeeRoleID
		inner join employeeRole_Item
		on employeeRole.employeeRoleID = employeeRole_Item.employeeRoleID
		inner join employeeRole_Purchase
		on employeeRole.employeeRoleID = employeeRole_Purchase.employeeRoleID
		inner join employeeRole_PurchaseInventoryReport
		on employeeRole.employeeRoleID = employeeRole_PurchaseInventoryReport.employeeRoleID
		inner join employeeRole_Sale
		on employeeRole.employeeRoleID = employeeRole_Sale.employeeRoleID
		inner join employeeRole_SalesReport
		on employeeRole.employeeRoleID = employeeRole_SalesReport.employeeRoleID
		inner join employeeRole_System
		on employeeRole.employeeRoleID = employeeRole_System.employeeRoleID
		inner join employeeRole_Table
		on employeeRole.employeeRoleID = employeeRole_Table.employeeRoleID
		inner join employeeRole_Loyalty
		on employeeRole.employeeRoleID = employeeRole_Loyalty.employeeRoleID;


		select @isInserted = isInsert from tableIsInsert where tableName = 'employeeRole';
		if(@isInserted!=1) select(IDENT_CURRENT('employeeRole')) as nextID;
		else select(IDENT_CURRENT('employeeRole')+1) as nextID;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[companyStoreSystemSelectInsertUpdateDelete]    Script Date: 08/04/2013 17:01:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[companyStoreSystemSelectInsertUpdateDelete] 
	-- Add the parameters for the stored procedure here
	@systemID int = -1,
	@storeID int = -1,
    @systemName varchar(300) = '',
    
	-- @createDate nvarchar(100) = '',
    @createUser int = -1,
    -- @lastModified timestamp,
    @modifyUser int = -1,
    @StatementType nvarchar(20) = '',
    
    @newID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	declare @isError int;
	set @isError = 0;
	
	IF @StatementType = 'Insert'
	BEGIN
	
	begin transaction
	
	INSERT INTO [dbo].[companyStoreSystem] ([systemName], [storeID], [createDate], [createUser], [lastModified], [modifyUser])
	SELECT @systemName, @storeID, GETDATE(), @createUser, GETDATE(), @modifyUser
	
	SELECT @newID = SCOPE_IDENTITY();
	if(@@ERROR!=0) set @isError = 1;
	
	insert into tableIsInsert(tableName, isInsert) values('companyStoreSystem', 1);
	if(@@ERROR!=0) set @isError = 1;
	
	if(@isError>0) rollback transaction
	else commit transaction
	
	END
	
	declare @isInserted int;
	set @isInserted = 0;
	
	IF (@StatementType = 'Select' AND @systemID = -1)
	BEGIN
	select * from companyStoreSystem;
	select @isInserted = isInsert from tableIsInsert where tableName = 'companyStoreSystem';
	
	if(@isInserted!=1) select(IDENT_CURRENT('companyStoreSystem')) as nextID;
	else select(IDENT_CURRENT('companyStoreSystem')+1) as nextID;
	END
	
	IF (@StatementType = 'Select' AND @systemID != -1)
	BEGIN
	select * from companyStoreSystem where systemID=@systemID;
	select @isInserted = isInsert from tableIsInsert where tableName = 'companyStoreSystem';
	
	if(@isInserted!=1) select(IDENT_CURRENT('companyStoreSystem')) as nextID;
	else select(IDENT_CURRENT('companyStoreSystem')+1) as nextID;
	END
	
	
	IF @StatementType = 'Update'
	BEGIN
	
	UPDATE [dbo].[companyStoreSystem]
	SET    [storeID] = @storeID, [systemName]  = @systemName, [lastModified] = GETDATE(), [modifyUser] = @modifyUser
	WHERE  systemID = @systemId
	
	END
	
	
	IF @StatementType = 'Delete'
	BEGIN
	DELETE FROM companyStoreSystem WHERE systemID = @systemId
	END
	
END
GO
/****** Object:  ForeignKey [FK_family_family]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[family]  WITH CHECK ADD  CONSTRAINT [FK_family_family] FOREIGN KEY([deptID], [sectionID], [familyID])
REFERENCES [dbo].[family] ([deptID], [sectionID], [familyID])
GO
ALTER TABLE [dbo].[family] CHECK CONSTRAINT [FK_family_family]
GO
/****** Object:  ForeignKey [FK_employeeAddress_employee]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeAddress]  WITH CHECK ADD  CONSTRAINT [FK_employeeAddress_employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employee] ([employeeID])
GO
ALTER TABLE [dbo].[employeeAddress] CHECK CONSTRAINT [FK_employeeAddress_employee]
GO
/****** Object:  ForeignKey [FK_companyStore_company]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[companyStore]  WITH CHECK ADD  CONSTRAINT [FK_companyStore_company] FOREIGN KEY([companyID])
REFERENCES [dbo].[company] ([companyID])
GO
ALTER TABLE [dbo].[companyStore] CHECK CONSTRAINT [FK_companyStore_company]
GO
/****** Object:  ForeignKey [FK_employeeRole_Item_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Item]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_Item_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Item] CHECK CONSTRAINT [FK_employeeRole_Item_employeeRole]
GO
/****** Object:  ForeignKey [FK_Table_1_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Inventory]  WITH CHECK ADD  CONSTRAINT [FK_Table_1_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Inventory] CHECK CONSTRAINT [FK_Table_1_employeeRole]
GO
/****** Object:  ForeignKey [FK_employeeRole_Form_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Form]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_Form_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Form] CHECK CONSTRAINT [FK_employeeRole_Form_employeeRole]
GO
/****** Object:  ForeignKey [FK_employeeRole_Customer_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Customer]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_Customer_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Customer] CHECK CONSTRAINT [FK_employeeRole_Customer_employeeRole]
GO
/****** Object:  ForeignKey [FK_currencyPiece_currency]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[currencyPiece]  WITH CHECK ADD  CONSTRAINT [FK_currencyPiece_currency] FOREIGN KEY([currencyID])
REFERENCES [dbo].[currency] ([currencyID])
GO
ALTER TABLE [dbo].[currencyPiece] CHECK CONSTRAINT [FK_currencyPiece_currency]
GO
/****** Object:  ForeignKey [FK_employeeRole_Table_employee]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Table]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_Table_employee] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Table] CHECK CONSTRAINT [FK_employeeRole_Table_employee]
GO
/****** Object:  ForeignKey [FK_employeeRole_System_employeeRole_System]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_System]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_System_employeeRole_System] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_System] CHECK CONSTRAINT [FK_employeeRole_System_employeeRole_System]
GO
/****** Object:  ForeignKey [FK_employeeRole_SalesReport_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_SalesReport]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_SalesReport_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_SalesReport] CHECK CONSTRAINT [FK_employeeRole_SalesReport_employeeRole]
GO
/****** Object:  ForeignKey [FK_employeeRole_Sale_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_Sale]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_Sale_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_Sale] CHECK CONSTRAINT [FK_employeeRole_Sale_employeeRole]
GO
/****** Object:  ForeignKey [FK_employeeRole_PurchaseInventoryReport_employeeRole]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeRole_PurchaseInventoryReport]  WITH CHECK ADD  CONSTRAINT [FK_employeeRole_PurchaseInventoryReport_employeeRole] FOREIGN KEY([employeeRoleID])
REFERENCES [dbo].[employeeRole] ([employeeRoleID])
GO
ALTER TABLE [dbo].[employeeRole_PurchaseInventoryReport] CHECK CONSTRAINT [FK_employeeRole_PurchaseInventoryReport_employeeRole]
GO
/****** Object:  ForeignKey [FK_employeeSetting_employee]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[employeeSetting]  WITH CHECK ADD  CONSTRAINT [FK_employeeSetting_employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[employee] ([employeeID])
GO
ALTER TABLE [dbo].[employeeSetting] CHECK CONSTRAINT [FK_employeeSetting_employee]
GO
/****** Object:  ForeignKey [FK_brand_line]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[line]  WITH CHECK ADD  CONSTRAINT [FK_brand_line] FOREIGN KEY([brandID])
REFERENCES [dbo].[brand] ([brandID])
GO
ALTER TABLE [dbo].[line] CHECK CONSTRAINT [FK_brand_line]
GO
/****** Object:  ForeignKey [FK_modifierDetail_modifierMaster]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[modifierDetail]  WITH CHECK ADD  CONSTRAINT [FK_modifierDetail_modifierMaster] FOREIGN KEY([modifierID])
REFERENCES [dbo].[modifierMaster] ([modifierID])
GO
ALTER TABLE [dbo].[modifierDetail] CHECK CONSTRAINT [FK_modifierDetail_modifierMaster]
GO
/****** Object:  ForeignKey [FK_taxGroup_serviceType]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[taxGroup]  WITH CHECK ADD  CONSTRAINT [FK_taxGroup_serviceType] FOREIGN KEY([serviceTypeID])
REFERENCES [dbo].[serviceType] ([serviceTypeID])
GO
ALTER TABLE [dbo].[taxGroup] CHECK CONSTRAINT [FK_taxGroup_serviceType]
GO
/****** Object:  ForeignKey [FK_taxGroup_taxGroup]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[taxGroup]  WITH CHECK ADD  CONSTRAINT [FK_taxGroup_taxGroup] FOREIGN KEY([taxTypeID])
REFERENCES [dbo].[taxType] ([taxTypeID])
GO
ALTER TABLE [dbo].[taxGroup] CHECK CONSTRAINT [FK_taxGroup_taxGroup]
GO
/****** Object:  ForeignKey [FK_paymentType_paymentType]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[paymentType]  WITH CHECK ADD  CONSTRAINT [FK_paymentType_paymentType] FOREIGN KEY([currencyCode])
REFERENCES [dbo].[currency] ([currencyID])
GO
ALTER TABLE [dbo].[paymentType] CHECK CONSTRAINT [FK_paymentType_paymentType]
GO
/****** Object:  ForeignKey [FK_section_department]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[section]  WITH CHECK ADD  CONSTRAINT [FK_section_department] FOREIGN KEY([deptID])
REFERENCES [dbo].[department] ([deptID])
GO
ALTER TABLE [dbo].[section] CHECK CONSTRAINT [FK_section_department]
GO
/****** Object:  ForeignKey [FK_companyStoreSystem_companyStore]    Script Date: 08/04/2013 17:01:02 ******/
ALTER TABLE [dbo].[companyStoreSystem]  WITH CHECK ADD  CONSTRAINT [FK_companyStoreSystem_companyStore] FOREIGN KEY([storeID])
REFERENCES [dbo].[companyStore] ([storeID])
GO
ALTER TABLE [dbo].[companyStoreSystem] CHECK CONSTRAINT [FK_companyStoreSystem_companyStore]
GO
