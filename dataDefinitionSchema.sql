create table Person
	(
	User_Name	varchar(15),
	User_Password	varchar(10),
	F_Name		varchar(15),
	L_Name		varchar(15),
	M_Name		varchar(15),
	DOB		date,		
	primary key (User_ID)
	);

create table Guest_List
	(
	Giver_ID	varchar(15),
	Receiver_ID	varchar(15),
	Event_ID	varchar(15),
	Coming 		tinyint(1),
	Gifting		tinyint(1),
	primary key (Giver_ID, Reciever_ID, Event_ID)
	);

create table Gift
	(
	Item_ID		varchar(10),
	Event_ID	varchar(10),
	Giver_ID	varchar(10),
	Quantity 	numeric(3, 0),
	primary key (Item_ID, Event_ID)
	);

create table Item
	(
	Item_ID		varchar(10),
	Department	varchar(15),
	Title		varchar(10),
	Price 		numeric(4, 2),
	primary key(Item_ID)
	);

create table Contact_Info
	(
	User_ID		varchar(10),
	Location_ID	varchar(10),
	Phone_Num	varchar(10),
	Email		varchar(10),
	primary key (User_ID)
	);

create table Address
	(
	Location_ID	varchar(10),
	Location_Name	varchar(10),
	City		varchar(10),
	Street_Name	varchar(15),
	Street_Number	numeric(5, 0),
	Street_Ext	varchar(10),
	State		varchar(10),
	Country		varchar(20),
	primary key (Location_ID, Location_Name)
	);

create table Events
	(
	Event_ID	varchar(10),
	User_ID		varchar(10),
	Event_Name	varchar(10),
	Date		
	Location_ID	varchar(10),
	primary key (Event_ID)
	); 