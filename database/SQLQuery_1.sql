CREATE DATABASE Project2_T2207E;
GO

--Tao bang
create table Categories(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    ParentID varchar(255) not null
);

create table Products(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    Material varchar(255) not null,
    Unit varchar(20) not null,
    Price decimal(12,3) not null,
    Size float not null,
    Detail text not null,
    Stock int not null,
    Img varchar(255) not null,
    CategoriesID int not null foreign key references Categories(Id)
);

create table Customers(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    Phone varchar(20) not null,
    Email varchar(100) not null,
    Address varchar(255) not null
);

create table Reviews(
    ProductID int not null foreign key references Products(Id),
    CustomerID int not null foreign key references Customers(Id),
    Content text not null,
    Starrates int not null
);

create table Orders(
    OrderCode int primary key identity(1,1),
    OrderDate datetime not null,
    GrandTotal decimal(12,3) not null,
    ConsigneeName varchar(255) not null,
    ConsigneePhone varchar(20) not null,
    ConsigneeAddress varchar(255) not null,
    CustomerID int not null foreign key references Customers(Id)
);

create table OrderItem(
    ProductID int not null foreign key references Products(Id),
    OrderID int not null foreign key references Orders(OrderCode),
    Quantity int not null,
    Price decimal(12,3) not null
);

--Xoa bang
drop table OrderItem
drop table Orders
drop table Reviews
drop table Customers
drop table Products
drop table Categories

--Nhap du lieu
insert into Categories(Name,ParentID)
values('Eternity','Rings'),
('Cocktail','Rings'),
('Wedding','Rings'),
('Stud','Earrings'),
('Drop and Dangle','Earrings'),
('Hoop','Earrings'),
('Chain','Braceles'),
('Bangle','Braceles'),
('Tennis','Braceles'),
('Chain','Necklaces'),
('Everyday','Necklaces'),
('Layering','Necklaces');
select * from Categories;

insert into Products(Name,Material,Unit,Price,Size,Detail,Stock,Img,CategoriesID)