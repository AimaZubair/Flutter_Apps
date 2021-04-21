--create database InventoryMS
create table Departments
(
id int identity(1,1),
deptname varchar(50) not null unique,
primary key(id)
)
create table Designation
(
id int identity(1,1),
designation varchar(50) not null unique,
primary key(id)
)
create table ItemsCategory
(
id int identity(1,1),
categoryName varchar(50) not null unique,
primary key(id)
)
create table Firms
(
id int identity(1,1),
firmName varchar(50) not null unique,
firmEmail varchar(50) not null unique,
firmAddress varchar(100),
firmPhone varchar(20) unique,
firmNTN varchar(30),
firmGST varchar(30),
primary key(id)
)
create table UserSettings
(
id int identity(1,1) primary key,
val varchar(20) not null,
color varchar(20) not null
)
create table AssetsToEmployee
(
id int identity(1,1) primary key,
note varchar(max),
userid int not null,
hodid int not null,
reqDate varchar(50),
hodApporove int not null,
hodView bit,
adminApprove int not null,
adminView bit,
hodApporvalDate varchar(50)
)
create table itemTypes(
id int identity(1,1) primary key,
typeName varchar(50) not null unique,
categoryID int not null,
constraint category_types foreign key(categoryID) references itemscategory(id)
)
create table StoreInventory(
id int identity(1,1) primary key,
firmID int not null,
itemTypeID int not null,
totalquantity int,
constraint store_firm foreign key(firmID) references firms(id),
constraint store_type foreign key(itemTypeID) references itemtypes(id) 
)
create table Employee(
id int identity(1,1) primary key,
empID varchar(50) not null unique,
phone varchar(15) not null unique,
gender varchar(10) not null,
picture varchar(20),
email varchar(50) not null unique,
pwd varchar(50) not null,
username varchar(50) not null,
deptID int,
designID int,
roleid int not null,
empAddress varchar(50) null,
colorID int not null,
viewtype int null,
constraint dept_Emp foreign key(deptID) references departments(id),
constraint design_Emp foreign key(designID) references designation(id),
constraint color_emp foreign key(colorID) references usersettings(id)
)
create table RequestedAssets(
id int identity(1,1) primary key,
itemId int not null,
quantity int not null,
empId int not null,
firmId int null,
Recquantity int,
constraint Assets_Employee foreign key(empId) references assetstoemployee(id),
constraint Assets_Type foreign key(itemId) references itemtypes(id),
constraint Assets_Firms foreign key(firmId) references firms(id)
)
create table NewPurchase(
id int identity(1,1) primary key,
purchaseDate varchar(50) not null,
itemCode varchar(50) not null,
typeId int not null,
firmID int not null,
quantity int not null,
price int not null,
totalPrice int not null,
descrpt varchar(150),
receipt varchar(50),
constraint purchase_item foreign key(typeId) references itemtypes(id),
constraint purchase_firms foreign key(firmId) references firms(id)
)
insert into Designation values('Assistant Professor')
insert into Designation values('Associate Professor')
insert into Designation values('Lab Enigneer')
insert into Designation values('Lecturer')
insert into Designation values('Professor')
insert into Designation values('Purchase Office')
insert into Designation values('Research Associate')
select * from Department
--Procedure for Add Employee
create procedure AddNewEmployee
	@empID varchar(50),
	@phone varchar(15),
	@gender varchar(10),
	@picture varchar(20),
	@email varchar(50),
	@pwd varchar(50),
	@username varchar(50),
	@deptID int,
	@designID int,
	@roleid int,
	@address varchar(50)
As
Begin
	insert into Employee values(@empID,
	@phone,
	@gender,
	@picture,
	@email,
	@pwd,
	@username,
	@deptID,
	@designID,
	@roleid,
	@address,1,1)
end
select *from Employee
--Procedure for new item
create procedure AddNewItem
@date varchar(50),
@code varchar(50),
@tid int,
@fid int,
@quantity int,
@price int,
@total int,
@description varchar(150),
@receipt varchar(50)
as
declare @num int
begin
      insert into NewPurchase values (@date,@code,@tid,@fid,@quantity,@price,@total,@description,@receipt)
	  select @num=totalquantity from StoreInventory where firmID=@fid and itemTypeID=@tid
	  if @@ROWCOUNT >0
	  begin
	  update StoreInventory set totalquantity=(@num+@quantity) where firmID=@fid and itemTypeID=@tid
	  end
	  else
	  begin
	  insert into StoreInventory values(@fid,@tid,@quantity)
	  end
end
