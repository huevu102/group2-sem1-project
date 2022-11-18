CREATE DATABASE Project2_T2207E;
GO

--Tao bang
create table Categories(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    ParentID varchar(255) not null
);

create table Imgs(
    ID int primary key identity(1,1),
    Img1 varchar(255) not null,
    Img2 varchar(255),
    Img3 varchar(255),
    Img4 varchar(255)
);

create table Products(
    ID int primary key identity(1,1),
    Name varchar(255) not null,
    Material varchar(255) not null,
    Price decimal(12,3) not null,
    Size float not null,
    Detail text not null,
    Stock int not null,
    ImgID int not null foreign key references Imgs(Id),
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

insert into Imgs(Img1,Img2,Img3,Img4)
values('./assets/img/rings/eternity/1.1.1.png','./assets/img/rings/eternity/1.1.2.png','./assets/img/rings/eternity/1.1.3.png','./assets/img/rings/eternity/1.1.4.png'),
('./assets/img/rings/eternity/1.2.1.png','./assets/img/rings/eternity/1.2.2.png','./assets/img/rings/eternity/1.2.3.png','./assets/img/rings/eternity/1.2.4.png'),
('./assets/img/rings/eternity/1.3.1.png','./assets/img/rings/eternity/1.3.2.png','./assets/img/rings/eternity/1.3.3.png','./assets/img/rings/eternity/1.3.4.png'),
('./assets/img/rings/eternity/1.4.1.png','./assets/img/rings/eternity/1.4.2.png','./assets/img/rings/eternity/1.4.3.png','./assets/img/rings/eternity/1.4.4.png'),
('./assets/img/rings/eternity/1.5.1.png','./assets/img/rings/eternity/1.5.2.png','./assets/img/rings/eternity/1.5.3.png','./assets/img/rings/eternity/1.5.4.png'),
('./assets/img/rings/cocktail/1.1.1.png','./assets/img/rings/cocktail/1.1.2.png','./assets/img/rings/cocktail/1.1.3.png','./assets/img/rings/cocktail/1.1.4.png'),
('./assets/img/rings/cocktail/1.2.1.png','./assets/img/rings/cocktail/1.2.2.png','./assets/img/rings/cocktail/1.2.3.png','./assets/img/rings/cocktail/1.2.4.png'),
('./assets/img/rings/cocktail/1.3.1.png','./assets/img/rings/cocktail/1.3.2.png','./assets/img/rings/cocktail/1.3.3.png','./assets/img/rings/cocktail/1.3.4.png'),
('./assets/img/rings/cocktail/1.4.1.png','./assets/img/rings/cocktail/1.4.2.png','./assets/img/rings/cocktail/1.4.3.png','./assets/img/rings/cocktail/1.4.4.png'),
('./assets/img/rings/cocktail/1.5.1.png','./assets/img/rings/cocktail/1.5.2.png','./assets/img/rings/cocktail/1.5.3.png','./assets/img/rings/cocktail/1.5.4.png'),
('./assets/img/rings/wedding/1.1.1.png','./assets/img/rings/wedding/1.1.2.png','./assets/img/rings/wedding/1.1.3.png','./assets/img/rings/wedding/1.1.4.png'),
('./assets/img/rings/wedding/1.2.1.png','./assets/img/rings/wedding/1.2.2.png','./assets/img/rings/wedding/1.2.3.png','./assets/img/rings/wedding/1.2.4.png'),
('./assets/img/rings/wedding/1.3.1.png','./assets/img/rings/wedding/1.3.2.png','./assets/img/rings/wedding/1.3.3.png','./assets/img/rings/wedding/1.3.4.png'),
('./assets/img/rings/wedding/1.4.1.png','./assets/img/rings/wedding/1.4.2.png','./assets/img/rings/wedding/1.4.3.png','./assets/img/rings/wedding/1.4.4.png'),
('./assets/img/rings/wedding/1.5.1.png','./assets/img/rings/wedding/1.5.2.png','./assets/img/rings/wedding/1.5.3.png','./assets/img/rings/wedding/1.5.4.png'),

('./assets/img/earrings/stud/1.1.1.png','./assets/img/earrings/stud/1.1.2.png','./assets/img/earrings/stud/1.1.3.png','./assets/img/earrings/stud/1.1.4.png'),
('./assets/img/earrings/stud/1.2.1.png','./assets/img/earrings/stud/1.2.2.png','./assets/img/earrings/stud/1.2.3.png','./assets/img/earrings/stud/1.2.4.png'),
('./assets/img/earrings/stud/1.3.1.png','./assets/img/earrings/stud/1.3.2.png','./assets/img/earrings/stud/1.3.3.png','./assets/img/earrings/stud/1.3.4.png'),
('./assets/img/earrings/stud/1.4.1.png','./assets/img/earrings/stud/1.4.2.png','./assets/img/earrings/stud/1.4.3.png','./assets/img/earrings/stud/1.4.4.png'),
('./assets/img/earrings/stud/1.5.1.png','./assets/img/earrings/stud/1.5.2.png','./assets/img/earrings/stud/1.5.3.png','./assets/img/earrings/stud/1.5.4.png'),
('./assets/img/earrings/dropdangle/1.1.1.png','./assets/img/earrings/dropdangle/1.1.2.png','./assets/img/earrings/dropdangle/1.1.3.png','./assets/img/earrings/dropdangle/1.1.4.png'),
('./assets/img/earrings/dropdangle/1.2.1.png','./assets/img/earrings/dropdangle/1.2.2.png','./assets/img/earrings/dropdangle/1.2.3.png','./assets/img/earrings/dropdangle/1.2.4.png'),
('./assets/img/earrings/dropdangle/1.3.1.png','./assets/img/earrings/dropdangle/1.3.2.png','./assets/img/earrings/dropdangle/1.3.3.png','./assets/img/earrings/dropdangle/1.3.4.png'),
('./assets/img/earrings/dropdangle/1.4.1.png','./assets/img/earrings/dropdangle/1.4.2.png','./assets/img/earrings/dropdangle/1.4.3.png','./assets/img/earrings/dropdangle/1.4.4.png'),
('./assets/img/earrings/dropdangle/1.5.1.png','./assets/img/earrings/dropdangle/1.5.2.png','./assets/img/earrings/dropdangle/1.5.3.png','./assets/img/earrings/dropdangle/1.5.4.png'),
('./assets/img/earrings/hoop/1.1.1.png','./assets/img/earrings/hoop/1.1.2.png','./assets/img/earrings/hoop/1.1.3.png','./assets/img/earrings/hoop/1.1.4.png'),
('./assets/img/earrings/hoop/1.2.1.png','./assets/img/earrings/hoop/1.2.2.png','./assets/img/earrings/hoop/1.2.3.png','./assets/img/earrings/hoop/1.2.4.png'),
('./assets/img/earrings/hoop/1.3.1.png','./assets/img/earrings/hoop/1.3.2.png','./assets/img/earrings/hoop/1.3.3.png','./assets/img/earrings/hoop/1.3.4.png'),
('./assets/img/earrings/hoop/1.4.1.png','./assets/img/earrings/hoop/1.4.2.png','./assets/img/earrings/hoop/1.4.3.png','./assets/img/earrings/hoop/1.4.4.png'),
('./assets/img/earrings/hoop/1.5.1.png','./assets/img/earrings/hoop/1.5.2.png','./assets/img/earrings/hoop/1.5.3.png','./assets/img/earrings/hoop/1.5.4.png'),

('./assets/img/braceles/chain/1.1.1.png','./assets/img/braceles/chain/1.1.2.png','./assets/img/braceles/chain/1.1.3.png','./assets/img/braceles/chain/1.1.4.png'),
('./assets/img/braceles/chain/1.2.1.png','./assets/img/braceles/chain/1.2.2.png','./assets/img/braceles/chain/1.2.3.png','./assets/img/braceles/chain/1.2.4.png'),
('./assets/img/braceles/chain/1.3.1.png','./assets/img/braceles/chain/1.3.2.png','./assets/img/braceles/chain/1.3.3.png','./assets/img/braceles/chain/1.3.4.png'),
('./assets/img/braceles/chain/1.4.1.png','./assets/img/braceles/chain/1.4.2.png','./assets/img/braceles/chain/1.4.3.png','./assets/img/braceles/chain/1.4.4.png'),
('./assets/img/braceles/chain/1.5.1.png','./assets/img/braceles/chain/1.5.2.png','./assets/img/braceles/chain/1.5.3.png','./assets/img/braceles/chain/1.5.4.png'),
('./assets/img/braceles/bangle/1.1.1.png','./assets/img/braceles/bangle/1.1.2.png','./assets/img/braceles/bangle/1.1.3.png','./assets/img/braceles/bangle/1.1.4.png'),
('./assets/img/braceles/bangle/1.2.1.png','./assets/img/braceles/bangle/1.2.2.png','./assets/img/braceles/bangle/1.2.3.png','./assets/img/braceles/bangle/1.2.4.png'),
('./assets/img/braceles/bangle/1.3.1.png','./assets/img/braceles/bangle/1.3.2.png','./assets/img/braceles/bangle/1.3.3.png','./assets/img/braceles/bangle/1.3.4.png'),
('./assets/img/braceles/bangle/1.4.1.png','./assets/img/braceles/bangle/1.4.2.png','./assets/img/braceles/bangle/1.4.3.png','./assets/img/braceles/bangle/1.4.4.png'),
('./assets/img/braceles/bangle/1.5.1.png','./assets/img/braceles/bangle/1.5.2.png','./assets/img/braceles/bangle/1.5.3.png','./assets/img/braceles/bangle/1.5.4.png'),
('./assets/img/braceles/tennis/1.1.1.png','./assets/img/braceles/tennis/1.1.2.png','./assets/img/braceles/tennis/1.1.3.png','./assets/img/braceles/tennis/1.1.4.png'),
('./assets/img/braceles/tennis/1.2.1.png','./assets/img/braceles/tennis/1.2.2.png','./assets/img/braceles/tennis/1.2.3.png','./assets/img/braceles/tennis/1.2.4.png'),
('./assets/img/braceles/tennis/1.3.1.png','./assets/img/braceles/tennis/1.3.2.png','./assets/img/braceles/tennis/1.3.3.png','./assets/img/braceles/tennis/1.3.4.png'),
('./assets/img/braceles/tennis/1.4.1.png','./assets/img/braceles/tennis/1.4.2.png','./assets/img/braceles/tennis/1.4.3.png','./assets/img/braceles/tennis/1.4.4.png'),
('./assets/img/braceles/tennis/1.5.1.png','./assets/img/braceles/tennis/1.5.2.png','./assets/img/braceles/tennis/1.5.3.png','./assets/img/braceles/tennis/1.5.4.png'),

('./assets/img/necklaces/chain/1.1.1.png','./assets/img/necklaces/chain/1.1.2.png','./assets/img/necklaces/chain/1.1.3.png','./assets/img/necklaces/chain/1.1.4.png'),
('./assets/img/necklaces/chain/1.2.1.png','./assets/img/necklaces/chain/1.2.2.png','./assets/img/necklaces/chain/1.2.3.png','./assets/img/necklaces/chain/1.2.4.png'),
('./assets/img/necklaces/chain/1.3.1.png','./assets/img/necklaces/chain/1.3.2.png','./assets/img/necklaces/chain/1.3.3.png','./assets/img/necklaces/chain/1.3.4.png'),
('./assets/img/necklaces/chain/1.4.1.png','./assets/img/necklaces/chain/1.4.2.png','./assets/img/necklaces/chain/1.4.3.png','./assets/img/necklaces/chain/1.4.4.png'),
('./assets/img/necklaces/chain/1.5.1.png','./assets/img/necklaces/chain/1.5.2.png','./assets/img/necklaces/chain/1.5.3.png','./assets/img/necklaces/chain/1.5.4.png'),
('./assets/img/necklaces/everyday/1.1.1.png','./assets/img/necklaces/everyday/1.1.2.png','./assets/img/necklaces/everyday/1.1.3.png','./assets/img/necklaces/everyday/1.1.4.png'),
('./assets/img/necklaces/everyday/1.2.1.png','./assets/img/necklaces/everyday/1.2.2.png','./assets/img/necklaces/everyday/1.2.3.png','./assets/img/necklaces/everyday/1.2.4.png'),
('./assets/img/necklaces/everyday/1.3.1.png','./assets/img/necklaces/everyday/1.3.2.png','./assets/img/necklaces/everyday/1.3.3.png','./assets/img/necklaces/everyday/1.3.4.png'),
('./assets/img/necklaces/everyday/1.4.1.png','./assets/img/necklaces/everyday/1.4.2.png','./assets/img/necklaces/everyday/1.4.3.png','./assets/img/necklaces/everyday/1.4.4.png'),
('./assets/img/necklaces/everyday/1.5.1.png','./assets/img/necklaces/everyday/1.5.2.png','./assets/img/necklaces/everyday/1.5.3.png','./assets/img/necklaces/everyday/1.5.4.png'),
('./assets/img/necklaces/layering/1.1.1.png','./assets/img/necklaces/layering/1.1.2.png','./assets/img/necklaces/layering/1.1.3.png','./assets/img/necklaces/layering/1.1.4.png'),
('./assets/img/necklaces/layering/1.2.1.png','./assets/img/necklaces/layering/1.2.2.png','./assets/img/necklaces/layering/1.2.3.png','./assets/img/necklaces/layering/1.2.4.png'),
('./assets/img/necklaces/layering/1.3.1.png','./assets/img/necklaces/layering/1.3.2.png','./assets/img/necklaces/layering/1.3.3.png','./assets/img/necklaces/layering/1.3.4.png'),
('./assets/img/necklaces/layering/1.4.1.png','./assets/img/necklaces/layering/1.4.2.png','./assets/img/necklaces/layering/1.4.3.png','./assets/img/necklaces/layering/1.4.4.png'),
('./assets/img/necklaces/layering/1.5.1.png','./assets/img/necklaces/layering/1.5.2.png','./assets/img/necklaces/layering/1.5.3.png','./assets/img/necklaces/layering/1.5.4.png');
select * from Imgs;

insert into Products(Name,Material,Price,Size,Detail,Stock,ImgID,CategoriesID)
values('Pear Serif Ring','Gold',3840,4,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1,1),
('Pear Serif Ring','Gold',3840,5,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1,1),
('Pear Serif Ring','Gold',3840,6,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1,1),
('Pear Serif Ring','Gold',3840,7,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1,1),
('Pear Serif Ring','Gold',3840,8,'Handcrafted in polished 18 karat gold, our Pear Serif Ring showcases a sparkling pear diamond (0.40ct) that dangles from two nestled diamonds',10,1,1),

('Crescendo Flare Ring','Gold',3600,4,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,2,1),
('Crescendo Flare Ring','Gold',3600,5,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,2,1),
('Crescendo Flare Ring','Gold',3600,6,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,2,1),
('Crescendo Flare Ring','Gold',3600,7,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,2,1),
('Crescendo Flare Ring','Gold',3600,8,'Crafted of polished 18 karat gold, our Crescendo Flare Ring wraps around the finger and showcases a sparkling 0.03carat diamond with a sideways diamond eternity pave band',10,2,1),

('Marquise Flare Ring','Gold',6420,4,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,3,1),
('Marquise Flare Ring','Gold',6420,5,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,3,1),
('Marquise Flare Ring','Gold',6420,6,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,3,1),
('Marquise Flare Ring','Gold',6420,7,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,3,1),
('Marquise Flare Ring','Gold',6420,8,'Our Marquise Flare Ring handcrafted in 18K gold of two connecting bands that wraps around the finger showcasing a sparkling 0.35carat marquise cut diamond',10,3,1),

('Duet Pear Pave Ring','Diamond',9600,4,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,4,1),
('Duet Pear Pave Ring','Diamond',9600,5,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,4,1),
('Duet Pear Pave Ring','Diamond',9600,6,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,4,1),
('Duet Pear Pave Ring','Diamond',9600,7,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,4,1),
('Duet Pear Pave Ring','Diamond',9600,8,'The Duet Pear Pave Ring that showcases two kissing 6x4mm pear cut white diamonds set in polished 18k yellow gold with micropave diamonds',10,4,1),

('Diamond Zipper Ring','Diamond',3200,4,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,5,1),
('Diamond Zipper Ring','Diamond',3200,5,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,5,1),
('Diamond Zipper Ring','Diamond',3200,6,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,5,1),
('Diamond Zipper Ring','Diamond',3200,7,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,5,1),
('Diamond Zipper Ring','Diamond',3200,8,'The Diamond Zipper Ring is handcrafted from 18-karat gold with 0.68ct of floating brilliant cut diamonds that create a sparkling zipper silhouette',10,5,1),

('Neo Band','Silver',3320,4,'Neo Band combines a modern yet timeless style that features a refined satin finish and a contrasting polished line that circles the center, a symbol of everlasting love',10,6,2),
('Neo Band','Silver',3320,5,'Neo Band combines a modern yet timeless style that features a refined satin finish and a contrasting polished line that circles the center, a symbol of everlasting love',10,6,2),
('Neo Band','Silver',3320,6,'Neo Band combines a modern yet timeless style that features a refined satin finish and a contrasting polished line that circles the center, a symbol of everlasting love',10,6,2),
('Neo Band','Silver',3320,7,'Neo Band combines a modern yet timeless style that features a refined satin finish and a contrasting polished line that circles the center, a symbol of everlasting love',10,6,2),
('Neo Band','Silver',3320,8,'Neo Band combines a modern yet timeless style that features a refined satin finish and a contrasting polished line that circles the center, a symbol of everlasting love',10,6,2),

('Grande Baguette Band','Diamond',12800,4,'The Eternal Baguette Band is delicately made from 18-karat gold with a full eternity of F/G color VS clarity baguette diamond surround',10,7,2),
('Grande Baguette Band','Diamond',12800,5,'The Eternal Baguette Band is delicately made from 18-karat gold with a full eternity of F/G color VS clarity baguette diamond surround',10,7,2),
('Grande Baguette Band','Diamond',12800,6,'The Eternal Baguette Band is delicately made from 18-karat gold with a full eternity of F/G color VS clarity baguette diamond surround',10,7,2),
('Grande Baguette Band','Diamond',12800,7,'The Eternal Baguette Band is delicately made from 18-karat gold with a full eternity of F/G color VS clarity baguette diamond surround',10,7,2),
('Grande Baguette Band','Diamond',12800,8,'The Eternal Baguette Band is delicately made from 18-karat gold with a full eternity of F/G color VS clarity baguette diamond surround',10,7,2),

('Asscher Cosma Eternity Band','Diamond',30220,4,'Crafted of polished 18K gold, our Asscher Cosma Eternity Band features  4mmx4mm asscher cut diamonds set in our signature Cosma bezel setting',10,8,2),
('Asscher Cosma Eternity Band','Diamond',30220,5,'Crafted of polished 18K gold, our Asscher Cosma Eternity Band features  4mmx4mm asscher cut diamonds set in our signature Cosma bezel setting',10,8,2),
('Asscher Cosma Eternity Band','Diamond',30220,6,'Crafted of polished 18K gold, our Asscher Cosma Eternity Band features  4mmx4mm asscher cut diamonds set in our signature Cosma bezel setting',10,8,2),
('Asscher Cosma Eternity Band','Diamond',30220,7,'Crafted of polished 18K gold, our Asscher Cosma Eternity Band features  4mmx4mm asscher cut diamonds set in our signature Cosma bezel setting',10,8,2),
('Asscher Cosma Eternity Band','Diamond',30220,8,'Crafted of polished 18K gold, our Asscher Cosma Eternity Band features  4mmx4mm asscher cut diamonds set in our signature Cosma bezel setting',10,8,2),

('Eternal Echo Band','Gold',3200,4,'The Eternal Echo Band is delicately made from 18-karat gold. Understated and elegant, wear yours layered and stacked with similar pieces from the collection',10,9,2),
('Eternal Echo Band','Gold',3200,5,'The Eternal Echo Band is delicately made from 18-karat gold. Understated and elegant, wear yours layered and stacked with similar pieces from the collection',10,9,2),
('Eternal Echo Band','Gold',3200,6,'The Eternal Echo Band is delicately made from 18-karat gold. Understated and elegant, wear yours layered and stacked with similar pieces from the collection',10,9,2),
('Eternal Echo Band','Gold',3200,7,'The Eternal Echo Band is delicately made from 18-karat gold. Understated and elegant, wear yours layered and stacked with similar pieces from the collection',10,9,2),
('Eternal Echo Band','Gold',3200,8,'The Eternal Echo Band is delicately made from 18-karat gold. Understated and elegant, wear yours layered and stacked with similar pieces from the collection',10,9,2),

('Tour Band','Gold',2800,4,'Crafted of polished 18K gold, the Tour Band showcases a satin matte gold band with a contrasting finish of a high polished beveled edge',10,10,2),
('Tour Band','Gold',2800,5,'Crafted of polished 18K gold, the Tour Band showcases a satin matte gold band with a contrasting finish of a high polished beveled edge',10,10,2),
('Tour Band','Gold',2800,6,'Crafted of polished 18K gold, the Tour Band showcases a satin matte gold band with a contrasting finish of a high polished beveled edge',10,10,2),
('Tour Band','Gold',2800,7,'Crafted of polished 18K gold, the Tour Band showcases a satin matte gold band with a contrasting finish of a high polished beveled edge',10,10,2),
('Tour Band','Gold',2800,8,'Crafted of polished 18K gold, the Tour Band showcases a satin matte gold band with a contrasting finish of a high polished beveled edge',10,10,2),

('V Ring','Gold',2550,4,'Soleste V is crafted with clean lines and a slim silhouette that make it perfect for stacking. Scintillating diamonds are hand set in this elegant band',10,11,3),
('V Ring','Gold',2550,5,'Soleste V is crafted with clean lines and a slim silhouette that make it perfect for stacking. Scintillating diamonds are hand set in this elegant band',10,11,3),
('V Ring','Gold',2550,6,'Soleste V is crafted with clean lines and a slim silhouette that make it perfect for stacking. Scintillating diamonds are hand set in this elegant band',10,11,3),
('V Ring','Gold',2550,7,'Soleste V is crafted with clean lines and a slim silhouette that make it perfect for stacking. Scintillating diamonds are hand set in this elegant band',10,11,3),
('V Ring','Gold',2550,8,'Soleste V is crafted with clean lines and a slim silhouette that make it perfect for stacking. Scintillating diamonds are hand set in this elegant band',10,11,3),

('Spark Ring','Gold',14306,4,'Redefining lifelong essentials, our Fine Jewelry pieces are based on an understated glamour to accompany you through every joy of life. Traditionally handcrafted and introducing the latest technology, the pieces are crafted in 18K gold and set with lab-grown diamonds, high-end materials that allow us to reduce our environmental impact',10,12,3),
('Spark Ring','Gold',14306,5,'Redefining lifelong essentials, our Fine Jewelry pieces are based on an understated glamour to accompany you through every joy of life. Traditionally handcrafted and introducing the latest technology, the pieces are crafted in 18K gold and set with lab-grown diamonds, high-end materials that allow us to reduce our environmental impact',10,12,3),
('Spark Ring','Gold',14306,6,'Redefining lifelong essentials, our Fine Jewelry pieces are based on an understated glamour to accompany you through every joy of life. Traditionally handcrafted and introducing the latest technology, the pieces are crafted in 18K gold and set with lab-grown diamonds, high-end materials that allow us to reduce our environmental impact',10,12,3),
('Spark Ring','Gold',14306,7,'Redefining lifelong essentials, our Fine Jewelry pieces are based on an understated glamour to accompany you through every joy of life. Traditionally handcrafted and introducing the latest technology, the pieces are crafted in 18K gold and set with lab-grown diamonds, high-end materials that allow us to reduce our environmental impact',10,12,3),
('Spark Ring','Gold',14306,8,'Redefining lifelong essentials, our Fine Jewelry pieces are based on an understated glamour to accompany you through every joy of life. Traditionally handcrafted and introducing the latest technology, the pieces are crafted in 18K gold and set with lab-grown diamonds, high-end materials that allow us to reduce our environmental impact',10,12,3),

('Ciel Ring','Silver - Gold plating',1605,4,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,13,3),
('Ciel Ring','Silver - Gold plating',1605,5,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,13,3),
('Ciel Ring','Silver - Gold plating',1605,6,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,13,3),
('Ciel Ring','Silver - Gold plating',1605,7,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,13,3),
('Ciel Ring','Silver - Gold plating',1605,8,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,13,3),

('Bright hear Ring','Gold',12680,4,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,14,3),
('Bright hear Ring','Gold',12680,5,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,14,3),
('Bright hear Ring','Gold',12680,6,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,14,3),
('Bright hear Ring','Gold',12680,7,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,14,3),
('Bright hear Ring','Gold',12680,8,'The Essentials embody refined effortlessness. Timeless pieces with smooth lines and the added dazzle of white zirconias. Unpretentious staple pieces that are perfect for everyday wear but can also work on special occasions',10,14,3),

('Half Eternity Ring','Gold',2550,4,'Band ring in 18k gold with a half circle of round brilliant diamonds',10,15,3),
('Half Eternity Ring','Gold',2550,5,'Band ring in 18k gold with a half circle of round brilliant diamonds',10,15,3),
('Half Eternity Ring','Gold',2550,6,'Band ring in 18k gold with a half circle of round brilliant diamonds',10,15,3),
('Half Eternity Ring','Gold',2550,7,'Band ring in 18k gold with a half circle of round brilliant diamonds',10,15,3),
('Half Eternity Ring','Gold',2550,8,'Band ring in 18k gold with a half circle of round brilliant diamonds',10,15,3);

select * from Products;