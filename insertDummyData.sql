insert into Person values (00001, 'Bill5', 'password', 'Bill', 'Evan', 'Smith', '1985-04-21');
insert into Person values (00002, 'L', 'password1', 'Laverne', 'Anny', 'Smith', '1977-09-23');
insert into Person values (00003, 'N', 'password1', 'Nick', 'Kevin', 'Smith', '1978-08-15');
insert into Person values (00004, 'Ti3', 'password1', 'Tim', 'Eric', 'Smith', '1986-05-05');
insert into Person values (00005, 'Todd9001', 'password1', 'Todd', 'John', 'McDonald', '1936-06-23');

insert into Guests_List values ('00002', '00001', '00001', 1, 1);
insert into Guests_List values ('00003', '00001', '00001', 0, 1);
insert into Guests_List values ('00004', '00001', '00001', 1, 1);
insert into Guests_List values ('00005', '00001', '00001', 1, 0);

insert into Events values ('00001', '00001', 'Bill's Birthday', '2013-04-21', '00001');

insert into Gift values ('00001', 00001, '00002', 1); 
insert into Gift values ('00002', 00001, '00002', 4);
insert into Gift values ('00003', 00001, '00003', 1);
insert into Gift values ('00004', 00001, '00004', 15);

insert into Item values ('00001', 'Electronics', 'Xbox 360', 300.00);
insert into Item values ('00002', 'Clothes', 'T-Shirts', 15.00);
insert into Item values ('00003', 'Music', 'Guitar', 150.00);
insert into Item values ('00004', 'Food', 'Chocolate', 1.00);


insert into Contact_Info values (00001, 00001, '440-568-9124', 'bill10@cox.net');
insert into Contact_Info values (00002, 00002, '440-569-8742', 'laverne@cox.net');
insert into Contact_Info values (00003, 00003, '440-578-9612', 'hi1234@yahoo.com');
insert into Contact_Info values (00004, 00004, '216-852-9461', 'ti@cox.net');
insert into Contact_Info values (00005, 00005, '216-963-4561', 'I'mlovingit@yahoo.com');

insert into Address values (00001, 'Home', 'Cleveland', '26993', 'Glenside', 'Brunswick Circle', 'Ohio');
insert into Address values (00002, 'Home', 'Cleveland', '26973', 'Glenside', 'Brunswick Circle', 'Ohio');
insert into Address values (00003, 'Home', 'Cleveland', '26983', 'Glenside', 'Brunswick Circle', 'Ohio');
insert into Address values (00004, 'Work', 'Toledo', '26993', 'Sterns', 'Brunswick Circle', 'Ohio');
insert into Address values (00005, 'Home', 'Cleveland', '26789', 'Glenside', 'Berry Circle', 'Maine');



