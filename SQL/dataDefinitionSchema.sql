create table Person
	(
	User_ID			int not null AUTO_INCREMENT,
	User_Name		varchar(15),
	User_Password	varchar(20),
	F_Name			varchar(15),
	L_Name			varchar(15),
	M_Name			varchar(15),
	DOB				Date,
	primary key (User_ID)
	);

create table Guests_List
	(
	Giver_ID	int not null,
	Receiver_ID int not null,
	Event_ID	int not null,
	Coming 		tinyint(1),
	Gifting		tinyint(1),
	primary key (Giver_ID, Receiver_ID, Event_ID)
	);

create table Gift
	(
	Item_ID		varchar(20) not null,
	Event_ID	int not null,
	Giver_ID	int,
	Price		numeric(8, 2),
	Quantity 	numeric(3, 0),
	primary key (Item_ID, Event_ID)
	);

create table Item
	(
	Item_ID			varchar(20) not null, /* upc */
	Department		varchar(25), /* assigned department */
	Title			varchar(150), /* RPC 'description' */
	Classification	varchar(25), /* RPC 'size' (further details) */
	primary key(Item_ID)
	);

create table Contact_Info
	(
	User_ID		int not null,
	Location_ID	int,
	Phone_Num	varchar(15),
	Email		varchar(25),
	primary key (User_ID)
	);

create table Address
	(
	Location_ID		int not null AUTO_INCREMENT,
	Location_Name	varchar(15),
	City			varchar(15),
	Street_Name		varchar(20),
	Street_Number	numeric(7, 0),
	Street_Ext		varchar(20),
	State			varchar(15),
	primary key (Location_ID)
	);

create table Events
	(
	Event_ID	int not null AUTO_INCREMENT,
	User_ID		int,
	Event_Name	varchar(30),
	Event_Date	Date,		
	Location_ID	int,
	primary key (Event_ID)
	); 

