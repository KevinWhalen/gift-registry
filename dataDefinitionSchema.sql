create table Person
	(
	User_ID		int not null AUTO_INCREMENT,
	User_Name	varchar(15),
	User_Password	varchar(20),
	F_Name		varchar(15),
	L_Name		varchar(15),
	M_Name		varchar(15),
	DOB		Date,		
	primary key (User_ID) 
	);

create table Guests_List
	(
	Giver_ID	varchar(15) not null,
	Receiver_ID	varchar(15) not null,
	Event_ID	varchar(15) not null,
	Coming 		tinyint(1),
	Gifting		tinyint(1),
	primary key (Giver_ID, Receiver_ID, Event_ID),
	foreign key (Giver_ID) references Person (User_ID)
		on delete cascade,
	foreign key (Receiver_ID) references Person (User_ID)
		on delete cascade,
	foreign key (Event_ID) references Events
		on delete cascade
	);

create table Gift
	(
	Item_ID		varchar(20) not null,
	Event_ID	int not null,
	Giver_ID	varchar(20),
	Quantity 	numeric(3, 0),
	primary key (Item_ID, Event_ID),
	foreign key (Item_ID) references Item
		on delete cascade,
	foreign key (Event_ID) references Events
		on delete cascade,
	foreign key (Giver_ID) references Guests_List 
		on delete cascade 
	);

create table Item
	(
	Item_ID		varchar(20) not null,
	Department	varchar(20),
	Title		varchar(20),
	Price 		numeric(8, 2),
	primary key(Item_ID)
	);

create table Contact_Info
	(
	User_ID		int not null,
	Location_ID	int,
	Phone_Num	varchar(15),
	Email		varchar(25),
	primary key (User_ID),
	foreign key (Location_ID) references Address
		on delete cascade,
	foreign key (User_ID) references Person
		on delete cascade
	);

create table Address
	(
	Location_ID	int not null AUTO_INCREMENT,
	Location_Name	varchar(15),
	City		varchar(15),
	Street_Name	varchar(20),
	Street_Number	numeric(7, 0),
	Street_Ext	varchar(20),
	State		varchar(15),
	primary key (Location_ID)
	);

create table Events
	(
	Event_ID	int not null AUTO_INCREMENT,
	User_ID		varchar(15),
	Event_Name	varchar(30),
	Event_Date	Date,		
	Location_ID	varchar(20),
	primary key (Event_ID),
	foreign key (User_ID) references Person
		on delete cascade,
	foreign key (Location_ID) references Address
		on delete cascade
	); 