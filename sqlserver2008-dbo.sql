/*
Navicat SQL Server Data Transfer

Source Server         : bhwnet.com
Source Server Version : 105000
Source Host           : ms5813699.xincache4.cn:1433
Source Database       : ms5813699
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2016-09-21 17:41:13
*/


-- ----------------------------
-- Table structure for Admin
-- ----------------------------
DROP TABLE [dbo].[Admin]
GO
CREATE TABLE [dbo].[Admin] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[LoginName] nvarchar(32) NOT NULL DEFAULT '' ,
[Password] nvarchar(512) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Advertise
-- ----------------------------
DROP TABLE [dbo].[Advertise]
GO
CREATE TABLE [dbo].[Advertise] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Comments] ntext NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[Email] nvarchar(128) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for Aircraft
-- ----------------------------
DROP TABLE [dbo].[Aircraft]
GO
CREATE TABLE [dbo].[Aircraft] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[Description] nvarchar(512) NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[Price] decimal(18) NOT NULL DEFAULT ((0)) ,
[Manufacturer] nvarchar(64) NOT NULL DEFAULT '' ,
[Year] int NOT NULL DEFAULT ((1980)) ,
[Model] nvarchar(32) NOT NULL DEFAULT '' ,
[CumulativeHours] int NOT NULL DEFAULT ((0)) ,
[NumberOfSeats] int NOT NULL DEFAULT ((0)) ,
[Color] nvarchar(32) NOT NULL DEFAULT '' ,
[SeatsColor] nvarchar(32) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[SerialNumber] nvarchar(32) NOT NULL DEFAULT '' ,
[Overview] ntext NOT NULL DEFAULT '' ,
[Characteristics] ntext NOT NULL DEFAULT '' ,
[Maintenance] ntext NOT NULL DEFAULT '' ,
[Equipment] ntext NOT NULL DEFAULT '' ,
[EngineRoom] ntext NOT NULL DEFAULT '' ,
[AdditionalEquipment] ntext NOT NULL DEFAULT '' ,
[Area] ntext NOT NULL DEFAULT '' ,
[New] bit NOT NULL DEFAULT ((1)) ,
[VideoImage] nvarchar(128) NOT NULL DEFAULT '' ,
[VideoUrl] nvarchar(256) NOT NULL DEFAULT '' ,
[VideoImage1] nvarchar(128) NOT NULL DEFAULT '' ,
[VideoUrl1] nvarchar(256) NOT NULL DEFAULT '' ,
[Show] nvarchar(4) NOT NULL DEFAULT '' ,
[PriceDescription] nvarchar(64) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for AircraftEN
-- ----------------------------
DROP TABLE [dbo].[AircraftEN]
GO
CREATE TABLE [dbo].[AircraftEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[Description] nvarchar(512) NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[Price] decimal(18) NOT NULL DEFAULT ((0)) ,
[Manufacturer] nvarchar(64) NOT NULL DEFAULT '' ,
[Year] int NOT NULL DEFAULT ((1980)) ,
[Model] nvarchar(32) NOT NULL DEFAULT '' ,
[CumulativeHours] int NOT NULL DEFAULT ((0)) ,
[NumberOfSeats] int NOT NULL DEFAULT ((0)) ,
[Color] nvarchar(32) NOT NULL DEFAULT '' ,
[SeatsColor] nvarchar(32) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[SerialNumber] nvarchar(32) NOT NULL DEFAULT '' ,
[Overview] ntext NOT NULL DEFAULT '' ,
[Characteristics] ntext NOT NULL DEFAULT '' ,
[Maintenance] ntext NOT NULL DEFAULT '' ,
[Equipment] ntext NOT NULL DEFAULT '' ,
[EngineRoom] ntext NOT NULL DEFAULT '' ,
[AdditionalEquipment] ntext NOT NULL DEFAULT '' ,
[Area] ntext NOT NULL DEFAULT '' ,
[New] bit NOT NULL DEFAULT ((1)) ,
[VideoImage] nvarchar(128) NOT NULL DEFAULT '' ,
[VideoUrl] nvarchar(256) NOT NULL DEFAULT '' ,
[VideoImage1] nvarchar(128) NOT NULL DEFAULT '' ,
[VideoUrl1] nvarchar(256) NOT NULL DEFAULT '' ,
[UserId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Show] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for AircraftImage
-- ----------------------------
DROP TABLE [dbo].[AircraftImage]
GO
CREATE TABLE [dbo].[AircraftImage] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[AircraftId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for AircraftManufacturer
-- ----------------------------
DROP TABLE [dbo].[AircraftManufacturer]
GO
CREATE TABLE [dbo].[AircraftManufacturer] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(64) NOT NULL DEFAULT '' ,
[ShowIndex] int NOT NULL DEFAULT ((0)) ,
[NameEn] nvarchar(128) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for AircraftModel
-- ----------------------------
DROP TABLE [dbo].[AircraftModel]
GO
CREATE TABLE [dbo].[AircraftModel] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Manufacturer] nvarchar(64) NOT NULL DEFAULT '' ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[ShowIndex] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Table structure for AircraftModelEN
-- ----------------------------
DROP TABLE [dbo].[AircraftModelEN]
GO
CREATE TABLE [dbo].[AircraftModelEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Manufacturer] nvarchar(64) NOT NULL DEFAULT '' ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[ShowIndex] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Table structure for AircraftType
-- ----------------------------
DROP TABLE [dbo].[AircraftType]
GO
CREATE TABLE [dbo].[AircraftType] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[ShowIndex] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Table structure for AircraftTypeEN
-- ----------------------------
DROP TABLE [dbo].[AircraftTypeEN]
GO
CREATE TABLE [dbo].[AircraftTypeEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[ShowIndex] int NOT NULL DEFAULT ((0)) 
)


GO

-- ----------------------------
-- Table structure for Area
-- ----------------------------
DROP TABLE [dbo].[Area]
GO
CREATE TABLE [dbo].[Area] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Avionics
-- ----------------------------
DROP TABLE [dbo].[Avionics]
GO
CREATE TABLE [dbo].[Avionics] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for AvionicsEN
-- ----------------------------
DROP TABLE [dbo].[AvionicsEN]
GO
CREATE TABLE [dbo].[AvionicsEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Consultation
-- ----------------------------
DROP TABLE [dbo].[Consultation]
GO
CREATE TABLE [dbo].[Consultation] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[UserName] nvarchar(32) NOT NULL DEFAULT '' ,
[Telephone] nvarchar(32) NOT NULL DEFAULT '' ,
[Target] nvarchar(32) NOT NULL DEFAULT '' ,
[City] nvarchar(32) NOT NULL DEFAULT '' ,
[City1] nvarchar(32) NOT NULL DEFAULT '' ,
[Date] nvarchar(32) NOT NULL DEFAULT '' ,
[Date1] nvarchar(32) NOT NULL DEFAULT '' ,
[Number] nvarchar(32) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[State] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Favorites
-- ----------------------------
DROP TABLE [dbo].[Favorites]
GO
CREATE TABLE [dbo].[Favorites] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[UserId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[AircraftId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for Features
-- ----------------------------
DROP TABLE [dbo].[Features]
GO
CREATE TABLE [dbo].[Features] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for FeaturesEN
-- ----------------------------
DROP TABLE [dbo].[FeaturesEN]
GO
CREATE TABLE [dbo].[FeaturesEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Name] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Info
-- ----------------------------
DROP TABLE [dbo].[Info]
GO
CREATE TABLE [dbo].[Info] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[Description] nvarchar(512) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Introduction
-- ----------------------------
DROP TABLE [dbo].[Introduction]
GO
CREATE TABLE [dbo].[Introduction] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[Subject] nvarchar(32) NOT NULL DEFAULT '' ,
[Recommend] nvarchar(4) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Meal
-- ----------------------------
DROP TABLE [dbo].[Meal]
GO
CREATE TABLE [dbo].[Meal] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Image] nvarchar(128) NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[Price] decimal(18,2) NOT NULL DEFAULT ((0)) ,
[Content] ntext NOT NULL DEFAULT '' ,
[CreateDate] date NOT NULL DEFAULT (getdate()) ,
[Show] nvarchar(4) NOT NULL DEFAULT '' ,
[Registration] nvarchar(4) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for MealOrder
-- ----------------------------
DROP TABLE [dbo].[MealOrder]
GO
CREATE TABLE [dbo].[MealOrder] (
[Id] uniqueidentifier NOT NULL ,
[MealId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Data] nvarchar(1024) NOT NULL DEFAULT '' ,
[XT] nvarchar(32) NOT NULL DEFAULT '' ,
[Data1] nvarchar(1024) NOT NULL DEFAULT '' ,
[jjusername] nvarchar(32) NOT NULL DEFAULT '' ,
[jjemail] nvarchar(32) NOT NULL DEFAULT '' ,
[jjmobile] nvarchar(32) NOT NULL DEFAULT '' ,
[jjtelephone] nvarchar(32) NOT NULL DEFAULT '' ,
[remark] nvarchar(32) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for MemoInfo
-- ----------------------------
DROP TABLE [dbo].[MemoInfo]
GO
CREATE TABLE [dbo].[MemoInfo] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Notice
-- ----------------------------
DROP TABLE [dbo].[Notice]
GO
CREATE TABLE [dbo].[Notice] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[Subject] nvarchar(256) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for Project
-- ----------------------------
DROP TABLE [dbo].[Project]
GO
CREATE TABLE [dbo].[Project] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[SDate] datetime NOT NULL DEFAULT (getdate()) ,
[EDate] datetime NOT NULL DEFAULT (getdate()) ,
[Description] ntext NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for SellAircraft
-- ----------------------------
DROP TABLE [dbo].[SellAircraft]
GO
CREATE TABLE [dbo].[SellAircraft] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[UserId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Make] nvarchar(32) NOT NULL DEFAULT '' ,
[Model] nvarchar(32) NOT NULL DEFAULT '' ,
[Condition] nvarchar(32) NOT NULL DEFAULT '' ,
[Year] nvarchar(32) NOT NULL DEFAULT '' ,
[Seats] nvarchar(32) NOT NULL DEFAULT '' ,
[TotalTime] nvarchar(32) NOT NULL DEFAULT '' ,
[Exterior] nvarchar(32) NOT NULL DEFAULT '' ,
[Interior] nvarchar(32) NOT NULL DEFAULT '' ,
[Price] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] ntext NOT NULL DEFAULT '' ,
[Features] ntext NOT NULL DEFAULT '' ,
[Maintienance] ntext NOT NULL DEFAULT '' ,
[Avionics] ntext NOT NULL DEFAULT '' ,
[Cabin] ntext NOT NULL DEFAULT '' ,
[Equipment] ntext NOT NULL DEFAULT '' ,
[Location] ntext NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for User
-- ----------------------------
DROP TABLE [dbo].[User]
GO
CREATE TABLE [dbo].[User] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Email] nvarchar(128) NOT NULL DEFAULT '' ,
[UserName] nvarchar(32) NOT NULL DEFAULT '' ,
[Password] nvarchar(512) NOT NULL DEFAULT '' ,
[Telephone] nvarchar(32) NOT NULL DEFAULT '' ,
[WeChat] nvarchar(128) NOT NULL DEFAULT '' ,
[Birthday] nvarchar(32) NOT NULL DEFAULT '' ,
[Sex] nvarchar(32) NOT NULL DEFAULT '' ,
[Description] ntext NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- Table structure for UserEN
-- ----------------------------
DROP TABLE [dbo].[UserEN]
GO
CREATE TABLE [dbo].[UserEN] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[Email] nvarchar(128) NOT NULL DEFAULT '' ,
[Password] nvarchar(32) NOT NULL DEFAULT '' ,
[FirstName] nvarchar(32) NOT NULL DEFAULT '' ,
[LastName] nvarchar(32) NOT NULL DEFAULT '' ,
[ContactNumber] nvarchar(32) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) ,
[Type] nvarchar(32) NOT NULL DEFAULT '' ,
[Street] nvarchar(32) NOT NULL DEFAULT '' ,
[City] nvarchar(32) NOT NULL DEFAULT '' ,
[State] nvarchar(32) NOT NULL DEFAULT '' ,
[ZipCode] nvarchar(32) NOT NULL DEFAULT '' 
)


GO

-- ----------------------------
-- Table structure for ZCOrder
-- ----------------------------
DROP TABLE [dbo].[ZCOrder]
GO
CREATE TABLE [dbo].[ZCOrder] (
[Id] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[UserId] uniqueidentifier NOT NULL DEFAULT (newid()) ,
[UserName] nvarchar(32) NOT NULL DEFAULT '' ,
[Email] nvarchar(128) NOT NULL DEFAULT '' ,
[Telephone] nvarchar(32) NOT NULL DEFAULT '' ,
[Content] ntext NOT NULL DEFAULT '' ,
[Subject] nvarchar(128) NOT NULL DEFAULT '' ,
[CreateDate] datetime NOT NULL DEFAULT (getdate()) 
)


GO

-- ----------------------------
-- View structure for FavoritesView
-- ----------------------------
DROP VIEW [dbo].[FavoritesView]
GO
CREATE VIEW [dbo].[FavoritesView] AS 
SELECT     dbo.Aircraft.Image, dbo.Favorites.Id, dbo.Favorites.AircraftId, dbo.Favorites.UserId
FROM         dbo.Favorites INNER JOIN
                      dbo.Aircraft ON dbo.Favorites.AircraftId = dbo.Aircraft.Id
GO
