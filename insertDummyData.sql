insert into Person ('User_ID','User_Name','User_Password','F_Name','L_Name', 'M_Name', 'DOB') values (00001, 'Bill5', 'password', 'Bill', 'Evan', 'Smith', '1985-04-21');
insert into Person ('User_ID','User_Name','User_Password','F_Name','L_Name', 'M_Name', 'DOB') values (00002, 'L', 'password1', 'Laverne', 'Anny', 'Smith', '1977-09-23');
insert into Person ('User_ID','User_Name','User_Password','F_Name','L_Name', 'M_Name', 'DOB') values (00003, 'N', 'password1', 'Nick', 'Kevin', 'Smith', '1978-08-15');
insert into Person ('User_ID','User_Name','User_Password','F_Name','L_Name', 'M_Name', 'DOB') values (00004, 'Ti3', 'password1', 'Tim', 'Eric', 'Smith', '1986-05-05');
insert into Person ('User_ID','User_Name','User_Password','F_Name','L_Name', 'M_Name', 'DOB') values (00005, 'Todd9001', 'password1', 'Todd', 'John', 'McDonald', '1936-06-23');

insert into Guests_List ('Giver_ID', 'Receiver_ID', 'Event_ID', 'Coming', 'Gifting') values ('00002', '00001', '00001', 1, 1);
insert into Guests_List ('Giver_ID', 'Receiver_ID', 'Event_ID', 'Coming', 'Gifting') values ('00003', '00001', '00001', 0, 1);
insert into Guests_List ('Giver_ID', 'Receiver_ID', 'Event_ID', 'Coming', 'Gifting') values ('00004', '00001', '00001', 1, 1);
insert into Guests_List ('Giver_ID', 'Receiver_ID', 'Event_ID', 'Coming', 'Gifting') values ('00005', '00001', '00001', 1, 0);

insert into Events ('Event_ID', 'User_ID', 'Event_Name', 'Event_Date', 'Location_ID') values ('00001', '00001', 'Bill Birthday', '2013-04-21', 00001);

insert into Gift ('User_ID','Event_ID','Giver_ID','Price','Quantity') values ('00001', 00001, '320', 1); 
insert into Gift ('User_ID','Event_ID','Giver_ID','Price','Quantity') values ('00002', 00001, '15', 4);
insert into Gift ('User_ID','Event_ID','Giver_ID','Price','Quantity') values ('00003', 00001, '150', 1);
insert into Gift ('User_ID','Event_ID','Giver_ID','Price','Quantity') values ('00004', 00001, '1', 15);

insert into Item ('Item_ID', 'Department', 'Title', 'Classification') values ('00001', 'Electronics', 'Xbox 360', 'Elite');
insert into Item ('Item_ID', 'Department', 'Title', 'Classification') values ('00002', 'Clothes', 'T-Shirts', 'Medium');
insert into Item ('Item_ID', 'Department', 'Title', 'Classification') values ('00003', 'Music', 'Guitar', 'Bass');
insert into Item ('Item_ID', 'Department', 'Title', 'Classification') values ('00004', 'Food', 'Chocolate', 'Milk');


insert into Contact_Info ('User_ID', 'Location_ID', 'Phone-Num', 'Email') values (00001, 00001, '440-568-9124', 'bill10@cox.net');
insert into Contact_Info ('User_ID', 'Location_ID', 'Phone-Num', 'Email') values (00002, 00002, '440-569-8742', 'laverne@cox.net');
insert into Contact_Info ('User_ID', 'Location_ID', 'Phone-Num', 'Email') values (00003, 00003, '440-578-9612', 'hi1234@yahoo.com');
insert into Contact_Info ('User_ID', 'Location_ID', 'Phone-Num', 'Email') values (00004, 00004, '216-852-9461', 'ti@cox.net');
insert into Contact_Info ('User_ID', 'Location_ID', 'Phone-Num', 'Email') values (00005, 00005, '216-963-4561', 'Imlovingit@yahoo.com');

insert into Address ('Location_ID', 'Location_Name', 'City', 'Street_Name', 'Street_Number','Street_Ext','State') values (00001, 'Home', 'Cleveland', 'Glenside','26993', 'Brunswick Circle', 'Ohio');
insert into Address ('Location_ID', 'Location_Name', 'City', 'Street_Name', 'Street_Number','Street_Ext','State') values (00002, 'Home', 'Cleveland', 'Glenside','26973', 'Brunswick Circle', 'Ohio');
insert into Address ('Location_ID', 'Location_Name', 'City', 'Street_Name', 'Street_Number','Street_Ext','State') values (00003, 'Home', 'Cleveland', 'Glenside','26983', 'Brunswick Circle', 'Ohio');
insert into Address ('Location_ID', 'Location_Name', 'City', 'Street_Name', 'Street_Number','Street_Ext','State') values (00004, 'Work', 'Toledo', 'Sterns','26993', 'Brunswick Circle', 'Ohio');
insert into Address ('Location_ID', 'Location_Name', 'City', 'Street_Name', 'Street_Number','Street_Ext','State') values (00005, 'Home', 'Cleveland', 'Glenside', '26789', 'Berry Circle', 'Maine');



