
create table Categories(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    ParentID varchar(255) not null
);

create table Products(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    Material varchar(255) not null,
    Price decimal(12,3) not null,
    Size float not null,
    Detail text not null,
    Stock int not null,
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

insert into Products(Name,Material,Price,Size,Detail,Stock,CategoriesID)
values('Pear Serif Ring','Gold',3840,4,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1),
('Pear Serif Ring','Gold',3840,5,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1),
('Pear Serif Ring','Gold',3840,6,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1),
('Pear Serif Ring','Gold',3840,7,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1),
('Pear Serif Ring','Gold',3840,8,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1),

('Crescendo Flare Ring','Gold',3600,4,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,1),
('Crescendo Flare Ring','Gold',3600,5,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,1),
('Crescendo Flare Ring','Gold',3600,6,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,1),
('Crescendo Flare Ring','Gold',3600,7,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,1),
('Crescendo Flare Ring','Gold',3600,8,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,1),

('Marquise Flare Ring','Gold',6420,4,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,1),
('Marquise Flare Ring','Gold',6420,5,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,1),
('Marquise Flare Ring','Gold',6420,6,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,1),
('Marquise Flare Ring','Gold',6420,7,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,1),
('Marquise Flare Ring','Gold',6420,8,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,1),

('Duet Pear Pave Ring','Diamond',9600,4,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,1),
('Duet Pear Pave Ring','Diamond',9600,5,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,1),
('Duet Pear Pave Ring','Diamond',9600,6,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,1),
('Duet Pear Pave Ring','Diamond',9600,7,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,1),
('Duet Pear Pave Ring','Diamond',9600,8,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,1),

('Diamond Zipper Ring','Diamond',3200,4,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,1),
('Diamond Zipper Ring','Diamond',3200,5,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,1),
('Diamond Zipper Ring','Diamond',3200,6,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,1),
('Diamond Zipper Ring','Diamond',3200,7,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,1),
('Diamond Zipper Ring','Diamond',3200,8,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,1),

select * from Products;