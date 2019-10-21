Create database Stajyer_Test
 Go
 

 Create table Araba
 (
ArabaId int  identity primary key,
AracAd Varchar(50),
AracKod int,
IsDeleted int,

 )
 Go


 Create table AracModel
 (
 ModelId int identity primary key,
 ModelAd Varchar(50),
 AracCode Varchar(50),
 IsDeleted int,
 )
 Go


 Create table Ilan
 (
 Id int identity primary key,
 AracAd Varchar(50),
 AracModel Varchar(50),
 Kullanici Varchar(50),
	Acıklama Varchar(100),
	BaslangicTarih datetime,
	BitisTarih datetime,
	IsDeleted int ,
	Renk Varchar(50),
	KM decimal,
	Vites Varchar(50),
	Yil Varchar(50),
	Fiyat decimal
	
 )
 Go


 Create table Roller
 (
 RollerId int identity primary key,
 Roller Varchar(50)

 )
 Go



 Create table GirisEkran
 (
 GirisId int identity primary key,
 UserName Varchar(50),
 UPassword Varchar(50),
 )
 Go



 Create table Register 
 (
 Id int identity Primary Key,
 UserName Varchar(100),
 Password Varchar(100),
 Name Varchar(100),
 SurName Varchar(100),
 PhoneNumber Varchar(100),
 Adress Varchar(100),
 NotRegistered Varchar(100),
 )
 Go

 Create table Renk
 (
RenkId int identity primary key,
Renkler Varchar(50),
RenkKod Varchar(50)
 )
 Go

 Create table AracVites
 (
VitesId int identity primary key,
Vitestip Varchar(50),
VitesKod Varchar(50)

 )
 Go





 
