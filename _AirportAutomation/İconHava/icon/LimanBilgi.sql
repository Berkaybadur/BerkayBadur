Create database LimanOtomasyon
Go
Use database LimanOtomasyon
Go
Create table Provinces 
(
Id int Identity primary key,
Provinces Varchar(50)

)
Go

Create table Country
(
Id int Identity primary key,
Country Varchar(50),
ProvincesId int,
Constraint FK_Country_Provinces Foreign Key(ProvincesId) References Provinces(Id)
)

Go

Create table Suppliers
(
Id int Identity primary key,
Suppliers Varchar(50),	
ProvincesId int,
CountryId int,
Constraint FK_Suppliers_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Suppliers_Country Foreign Key(CountryId) References Country(Id)

)
Go

Create table Categories
(
KategoriId int Identity primary key ,
KategAd Varchar(50)
)
Go

Create table Products
(
productId int Identity Primary Key,
productAd Varchar(50),
Quantity int,
Price Money,
CategoriesId int,
Constraint FK_Products_Categories Foreign Key(CategoriesId) References Categories(KategoriId),
)	
Go

Create table Captain 
(
Id int identity primary key,
CaptainAd Varchar(50)
)

Create table Expedition
(
Id int Identity primary key,
KalkisSaat int,
VarisSaat int
)
Go

Create table Ships
(
Id int Identity primary key,
GemiAd Varchar(50),
Aktif bit,
ProvincesId int,
CountryId int,
productId int,
CaptainId int,
ExpeditionId int,
Constraint FK_Ships_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Ships_Country Foreign Key(CountryId) References Country(Id),
Constraint FK_Ships_product Foreign Key(productId) References Products(productId),
Constraint FK_Ships_Captain Foreign Key(CaptainId) References Captain(Id),
Constraint FK_Ships_Expedition Foreign Key(ExpeditionId) References Expedition(Id)
)
Go

Create table Seaports
(
Id int Identity primary key,
Limanad Varchar (50),
ShipsId int,
SuppliersId int,
ProvincesId int,
CountryId int,
Constraint FK_Seaports_Ships Foreign Key(ShipsId) References Ships(Id),
Constraint FK_Seaports_Suppliers Foreign Key(SuppliersId) References Suppliers(Id),
Constraint FK_Seaports_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Seaports_Country Foreign Key(CountryId) References Country(Id)
)

Go

Create table Driver
(
Id int Identity primary key,
DriverAd Varchar(50)
)
Go

Create table Cars
(
Id int Identity primary key,
AracAd Varchar(50),
Aktif bit,
DriverId int,
ExpeditionId int,
ProvincesId int,
CountryId int,
Constraint FK_Cars_Driver Foreign Key(DriverId) References Driver(Id),
Constraint FK_Cars_Expedition Foreign Key(ExpeditionId) References Expedition(Id),
Constraint FK_Cars_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Cars_Country Foreign Key(CountryId) References Country(Id)
)
Go



Create table Cargo
(
Id int Identity primary key,
SirketAd Varchar(50),
ProvincesId int,
CountryId int,
Constraint FK_Cargo_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Cargo_Country Foreign Key(CountryId) References Country(Id)
)
Go

Create table Customers
(
CustomersId int Identity primary key,
CustomersAd Varchar(50),
CustomersSAd Varchar(50),
Tel Varchar(11) Unique,
Tc Varchar(11) Unique,
Adres Varchar(100),
EPosta Varchar(50) Unique,
ProvincesId int,
CountryId int,
Constraint CK_Customers_Tel Check
(Tel LiKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Constraint CK_Customers_Tc Check
(Tc LiKE '[1-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
Constraint FK_Customers_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Customers_Country Foreign Key(CountryId) References Country(Id)
)

Go

Create table Store 
(
Id int Identity primary key,
StoreAd Varchar(50),
CarsId int,
ProductsId int,
Constraint FK_Store_Cars Foreign Key(CarsId) References Cars(Id),
Constraint FK_Store_Products Foreign Key(ProductsId) References Products(productId)
)
Go

Create table Orders 
(
Id int Identity primary key,
ProductsId int,
CategoriesId int,
CustomersId int,
CargoId int,
ProvincesId int,
CountryId int,
Constraint FK_Orders_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Orders_Country Foreign Key(CountryId) References Country(Id),
Constraint FK_Orders_Products Foreign Key(ProductsId) References Products(productId),
Constraint FK_Orders_Categories Foreign Key(CategoriesId) References Categories(KategoriId),
Constraint FK_Orders_Cargo Foreign Key(CargoId) References Cargo(Id),
Constraint FK_Orders_Customers Foreign Key(CustomersId) References Customers(CustomersId)
)
Go

Create table Kargo 
(
Id int Identity primary key,
ProductsId int ,
StoreId int,
CargoId int,
ProvincesId int,
CountryId int,
Constraint FK_Kargo_Provinces Foreign Key(ProvincesId) References Provinces(Id),
Constraint FK_Kargo_Country Foreign Key(CountryId) References Country(Id),
Constraint FK_Kargo_Products Foreign Key(ProductsId) References Products(productId),
Constraint FK_Kargo_Cargo Foreign Key(CargoId) References Cargo(Id),
)
Go

Create Proc SP_CreateProvinces 
	@Provinces  Varchar(50)
	
As
	insert into Provinces Values(@Provinces)
Go

Create Proc SP_UpdateProvinces
    @Id int,
    @Provinces Varchar(50)
    As
    UPDATE Provinces SET Provinces=@Provinces
    Where Id=@Id
    Go
    
    
Create Proc SP_DeleteProvinces
	@Id int
As
	Delete From Provinces Where Id = @Id
Go

Create Proc SP_SelectProvinces
As
	Select * From Provinces
Go

Create Proc SP_CreateCountry 
	@Country  Varchar(50),
	@ProvincesId int
	
As
	insert into Country Values(@Country,@ProvincesId)
Go

Create Proc SP_UpdateCountry
    @Id int,
    @Country Varchar(50),
    @ProvincesId int
    As
    UPDATE Country SET Country=@Country , ProvincesId=@ProvincesId
    Where Id=@Id
    Go
    
    
Create Proc SP_DeleteCountry
	@Id int
As
	Delete From Country Where Id = @Id
Go

Create Proc SP_SelectCountry
As
	Select * From Country
Go


Create Proc SP_CreateCategories
	@KategAd Varchar(50)
As
	insert into Categories Values(@KategAd)
Go

Create Proc SP_UpdateCategories
    @KategoriId int,
    @KategAd Varchar(50)
    As
    UPDATE Categories SET KategAd=@KategAd
    Where KategoriId=@KategoriId
    Go
    
    
Create Proc SP_DeleteCategories
	@KategoriId int
As
	Delete From Categories Where KategoriId = @KategoriId
Go

Create Proc SP_SelectCategories
As
	Select * From Categories
Go

Create Proc SP_CreateProducts
	@productAd Varchar(50),
	@Quantity int,
	@Price Money,
	
	@CategoriesId int
	As 
	insert into Products Values(@productAd,@Quantity,@Price,@CategoriesId)
	Go


Create Proc SP_UpdateProducts
    @productId int,
    @productAd Varchar(50),
	@Quantity int,
	@Price Money,
	@CategoriesId int
    As
    UPDATE Products SET productAd=@productAd,Quantity=@Quantity,Price=@Price,CategoriesId=@CategoriesId
    Where productId=@productId
    Go
    
    
Create Proc SP_DeleteProducts
	@productId int
As
	Delete From Products Where productId = @productId
Go

Create Proc SP_SelectProducts
As
	Select * From Products
Go

Create Proc SP_CreateSuppliers
	@Suppliers varchar(50),
	@ProvincesId int,
	@CountryId int
As
	insert into Suppliers Values(@Suppliers,@ProvincesId,@CountryId)
Go

Create Proc SP_UpdateSuppliers
    @Id int,
    @Suppliers varchar(50),
    @ProvincesId int,
	@CountryId int
    As
    UPDATE Suppliers SET Suppliers=@Suppliers,ProvincesId=@ProvincesId,CountryId=@CountryId 
    Where Id=@Id
    Go
  
Create Proc SP_DeleteSuppliers
	@Id int
As
	Delete From Suppliers Where Id = @Id
Go

Create Proc SP_SelectSuppliers
As
	Select * From Suppliers
Go



Create Proc SP_CreateShips
	 @GemiAd Varchar(50),
     @Aktif bit,
     @ProvincesId int,
     @CountryId int,
     @productId int,
     @CaptainId int,
     @ExpeditionId int
As
	insert into Ships Values(@GemiAd,@Aktif,@ProvincesId,@CountryId,@productId,@CaptainId,@ExpeditionId)
Go



Create Proc SP_UpdateShips
    @Id int,
    @GemiAd Varchar(50),
    @Aktif bit,
    @ProvincesId int,
    @CountryId int,
    @productId int,
    @CaptainId int,
    @ExpeditionId int
    As
    UPDATE Ships SET GemiAd=@GemiAd,Aktif=@Aktif,ProvincesId=@ProvincesId,CountryId=@CountryId,productId=@productId,CaptainId=@CaptainId,ExpeditionId=@ExpeditionId
    Where Id=@Id
    Go
    
Create Proc SP_DeleteShips
	@Id int
As
	Delete From Ships Where Id = @Id
Go


Create Proc SP_SelectShips
As
	Select * From Ships
Go

Create Proc SP_CreateSeaports
    @Limanad Varchar (50),
    @ShipsId int,
    @SuppliersId int,
    @ProvincesId int,
    @CountryId int
As
	insert into Seaports Values(@Limanad,@ShipsId,@SuppliersId,@ProvincesId,@CountryId)
Go 

Create Proc SP_UpdateSeaports
    @Id int,
    @Limanad Varchar (50),
    @ShipsId int,
    @SuppliersId int,
    @ProvincesId int,
    @CountryId int
    As
    UPDATE Seaports SET Limanad=@Limanad,ShipsId=@ShipsId,SuppliersId=@SuppliersId,ProvincesId=@ProvincesId,CountryId=@CountryId
    Where Id=@Id
    Go
    
    Create Proc SP_DeleteSeaports
	@Id int
As
	Delete From Seaports Where Id = @Id
Go
   
   Create Proc SP_SelectSeaports
As
	Select * From Seaports
Go


Create Proc SP_CreateCaptain
    @CaptainAd Varchar(50)
As
	insert into Captain Values(@CaptainAd)
Go 

Create Proc SP_UpdateCaptain
    @Id int,
    @CaptainAd Varchar(50)
    As
    UPDATE Captain SET CaptainAd=@CaptainAd
    Where Id=@Id
    Go

    Create Proc SP_DeleteCaptain
	@Id int
As
	Delete From Captain Where Id = @Id
Go

   Create Proc SP_SelectDriver
As
	Select * From Driver
Go


Create Proc SP_CreateExpedition
    @KalkisSaat int,
    @VarisSaat int
As
	insert into Expedition Values(@KalkisSaat,@VarisSaat)
Go 

Create Proc SP_UpdateExpedition
    @Id int,
    @KalkisSaat int,
    @VarisSaat int
    As
    UPDATE Expedition SET KalkisSaat=@KalkisSaat,VarisSaat=@VarisSaat
    Where Id=@Id
    Go
    
        Create Proc SP_DeleteExpedition
	@Id int
As
	Delete From Expedition Where Id = @Id
Go

   Create Proc SP_SelectExpedition
As
	Select * From Expedition
Go
   
   Create Proc SP_CreateCars
    @AracAd Varchar(50),
    @Aktif bit,
    @DriverId int,
    @ExpeditionId int,
    @ProvincesId int,
    @CountryId int
As
	insert into Cars Values(@AracAd,@Aktif,@DriverId,@ExpeditionId,@ProvincesId,@CountryId)
Go 

Create Proc SP_UpdateCars
    @Id int,
    @AracAd Varchar(50),
    @Aktif bit,
    @DriverId int,
    @ExpeditionId int,
    @ProvincesId int,
    @CountryId int
    As
    UPDATE Cars SET AracAd=@AracAd,Aktif=@Aktif,DriverId=@DriverId,ExpeditionId=@ExpeditionId,ProvincesId=@ProvincesId,CountryId=@CountryId
    Where Id=@Id
    Go
    
        Create Proc SP_DeleteCars
	@Id int
As
	Delete From Cars Where Id = @Id
Go

   Create Proc SP_SelectCars
As
	Select * From Cars
Go

 
Create Proc SP_CreateCargo
    @SirketAd int,
    @ProvincesId int,
    @CountryId int
As
	insert into Cargo Values(@SirketAd,@ProvincesId,@CountryId)
Go  
    
    
Create Proc SP_UpdateCargo
    @Id int,
    @SirketAd int
    As
    UPDATE Cargo SET SirketAd=@SirketAd
    Where Id=@Id
    Go

Create Proc SP_DeleteCargo
	@Id int
As
	Delete From Expedition Where Id = @Id
Go

  Create Proc SP_SelectCargo
As
	Select * From Cargo
Go


Create Proc SP_CreateCustomers
    @CustomersAd Varchar(50),
    @CustomersSAd Varchar(50),
    @Tel Varchar(11) ,
    @Tc Varchar(11) ,
    @Adres Varchar(100),
    @EPosta Varchar(50) ,
    @ProvincesId int,
    @CountryId int
As
	insert into Customers Values(@CustomersAd,@CustomersSAd,@Tel,@Tel,@Adres,@EPosta,@ProvincesId,@CountryId)
Go 

Create Proc SP_UpdateCustomers
     @CustomersId int,
    @CustomersAd Varchar(50),
    @CustomersSAd Varchar(50),
    @Tel Varchar(11) ,
    @Tc Varchar(11) ,
    @Adres Varchar(100),
    @EPosta Varchar(50) ,
    @ProvincesId int,
    @CountryId int
    As
    UPDATE Customers SET CustomersAd=@CustomersAd,CustomersSAd=@CustomersSAd,Tel=@Tel,Tc=@Tc,Adres=@Adres,EPosta=@EPosta
    Where CustomersId=@CustomersId
    Go

    Create Proc SP_DeleteCustomers
	@Id int
As
	Delete From Captain Where Id = @Id
Go

   Create Proc SP_SelectCustomers
As
	Select * From Customers
Go



Create Proc SP_CreateStore
    @StoreAd Varchar(50),
    @CarsId int,
    @ProductsId int
As
	insert into Store Values(@CarsId,@ProductsId,@StoreAd)
Go  
    
    
Create Proc SP_UpdateStore
    @Id int,
    @StoreAd Varchar(50),
    @CarsId int,
    @ProductsId int
    As
    UPDATE Store SET @CarsId=@CarsId,ProductsId=@ProductsId,@StoreAd=StoreAd
    Where Id=@Id
    Go

Create Proc SP_DeleteStore
	@Id int
As
	Delete From Store Where Id = @Id
Go

  Create Proc SP_SelectStore
As
	Select * From Store
Go


Create Proc SP_CreateOrders
  @ProductsId int,
   @CategoriesId int,
   @CustomersId int,
   @CargoId int,
   @ProvincesId int,
   @CountryId int
As
	insert into Orders Values(@ProductsId,@CategoriesId,@CustomersId,@CargoId,@ProvincesId,@CountryId)
Go  
    
    
Create Proc SP_UpdateOrders
   @Id int,
   @ProductsId int,
   @CategoriesId int,
   @CustomersId int,
   @CargoId int,
   @ProvincesId int,
   @CountryId int
    As
    UPDATE Orders SET @ProductsId=@ProductsId,@CategoriesId=@CategoriesId,CustomersId=@CustomersId,ProvincesId=@ProvincesId,CountryId=@CountryId
    Where Id=@Id
    Go

Create Proc SP_DeleteOrders
	@Id int
As
	Delete From Orders Where Id = @Id
Go

  Create Proc SP_SelectOrders
As
	Select * From Orders
Go


Create Proc SP_CreateKargo
   @ProductsId int ,
   @StoreId int,
   @CargoId int,
   @ProvincesId int,
   @CountryId int
As
	insert into Kargo Values(@ProductsId,@StoreId,@CargoId,@ProvincesId,@CountryId)
Go  
    
    
Create Proc SP_UpdateKargo
     @Id int,
     @ProductsId int ,
     @StoreId int,
     @CargoId int,
     @ProvincesId int,
     @CountryId int
    As
    UPDATE Kargo SET ProductsId=@ProductsId,StoreId=@StoreId,CargoId=@CargoId,ProvincesId=@ProvincesId,CountryId=@CountryId
    Where Id=@Id
    Go

Create Proc SP_DeleteKargo
	@Id int
As
	Delete From Kargo Where Id = @Id
Go

  Create Proc SP_SelectKargo
As
	Select * From Kargo
Go
Exec SP_CreateCategories "Bilgisayar"
Go
Exec SP_CreateCategories "Telefon"
Go
Exec SP_CreateCategories "Beyaz Eşya"
Go
Exec SP_CreateCategories "Elektronik Eşya"
Go
