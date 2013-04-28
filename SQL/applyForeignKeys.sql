/*
alter table `Guests_List` add index (`Giver_ID`);
alter table `Person` add index (`User_ID`);
alter table `Guests_List` add constraint
	foreign key (`Giver_ID`) references `Person` (`User_ID`);
*/

alter table Guests_List add constraint
	foreign key (Giver_ID) references Person (User_ID) 
	on delete cascade on update cascade;
alter table Guests_List add 
	foreign key (Receiver_ID) references Person (User_ID) 
	on delete cascade on update cascade;
alter table Guests_List add 
	foreign key (Event_ID) references Events 
	on delete cascade on update cascade;

alter table Gift add 
	foreign key (Item_ID) references Item 
	on delete cascade on update cascade;
alter table Gift add 
	foreign key (Event_ID) references Events 
	on delete cascade on update cascade;
alter table Gift add 
	foreign key (Giver_ID) references Guests_List 
	on delete cascade on update cascade;

alter table Contact_Info add 
	foreign key (Location_ID) references Address 
	on delete cascade on update cascade;
alter table Contact_Info add 
	foreign key (User_ID) references Person 
	on delete cascade on update cascade;

alter table Events add 
	foreign key (User_ID) references Person 
	on delete cascade on update cascade;
alter table Events add 
	foreign key (Location_ID) references Address 
	on delete cascade on update cascade;

