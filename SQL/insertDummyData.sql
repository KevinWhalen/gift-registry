insert into Person (`User_Name`, `User_Password`, `F_Name`,  `L_Name`, `M_Name`,   `DOB`) 
            values ('Bill5',     'password',      'Bill',    'Evan',   'Smith',    '1985-04-21');
insert into Person (`User_Name`, `User_Password`, `F_Name`,  `L_Name`, `M_Name`,   `DOB`) 
	        values ('L',         'password1',     'Laverne', 'Anny',   'Smith',    '1977-09-23');
insert into Person (`User_Name`, `User_Password`, `F_Name`,  `L_Name`, `M_Name`,   `DOB`) 
	        values ('N',         'password1',     'Nick',    'Kevin',  'Smith',    '1978-08-15');
insert into Person (`User_Name`, `User_Password`, `F_Name`,  `L_Name`, `M_Name`,   `DOB`) 
	        values ('Ti3',       'password1',     'Tim',     'Eric',   'Smith',    '1986-05-05');
insert into Person (`User_Name`, `User_Password`, `F_Name`,  `L_Name`, `M_Name`,   `DOB`) 
	        values ('Todd9001',  'password1',     'Todd',    'John',   'McDonald', '1936-06-23');




insert into Guests_List (`Giver_ID`, `Receiver_ID`, `Event_ID`, `Coming`, `Gifting`) 
	             values (3,          1,             1,          1,        1);
insert into Guests_List (`Giver_ID`, `Receiver_ID`, `Event_ID`, `Coming`, `Gifting`) 
	             values (2,          1,             1,          1,        1);
insert into Guests_List (`Giver_ID`, `Receiver_ID`, `Event_ID`, `Coming`, `Gifting`) 
				 values (4, 		 2,				2,			0,		  1);
insert into Guests_List (`Giver_ID`, `Receiver_ID`, `Event_ID`, `Coming`, `Gifting`) 
	             values (5,          2,             2,          1,        0);


insert into Events (`User_ID`, `Event_Name`,     `Event_Date`, `Location_ID`) 
			values (1,         'Bills Birthday', '2013-04-21', 1);
insert into Events (`User_ID`, `Event_Name`,     `Event_Date`, `Location_ID`) 
			values (2,  	   'Bill Birthday',  '2013-04-21', 2);


insert into Gift (`Item_ID`, `Event_ID`, `Giver_ID`, `Price`, `Quantity`) 
	  	  values ('1',       1,          3,          100,	  5); 
insert into Gift (`Item_ID`, `Event_ID`, `Giver_ID`, `Price`, `Quantity`) 
		  values ('2',       2,          4,          15,      4);
insert into Gift (`Item_ID`, `Event_ID`, `Giver_ID`, `Price`, `Quantity`) 
		  values ('3',       1,          2,          115,     1);
insert into Gift (`Item_ID`, `Event_ID`, `Giver_ID`, `Price`, `Quantity`) 
	      values ('4',       2,          5,          5,       20);


insert into Item (`Item_ID`, `Department`,  `Title`,     `Classification`) 
		  values ('1',       'Electronics', 'Xbox 360',  'Elite');
insert into Item (`Item_ID`, `Department`,  `Title`,     `Classification`) 
		  values ('2',       'Clothes',     'T-Shirts',  'Medium');
insert into Item (`Item_ID`, `Department`,  `Title`,     `Classification`) 
	      values ('3',       'Music',       'Guitar',    'Bass');
insert into Item (`Item_ID`, `Department`,  `Title`,     `Classification`) 
		  values ('4',       'Groceries',   'Chocolate', 'Milk');


insert into Contact_Info (`User_ID`, `Location_ID`,  `Phone_Num`,    `Email`)
                  values (1,         1,              '440-568-9124', 'bill10@cox.net');
insert into Contact_Info (`User_ID`, `Location_ID`,  `Phone_Num`,    `Email`) 
	              values (2,         2,              '440-569-8742', 'laverne@cox.net');
insert into Contact_Info (`User_ID`, `Location_ID`,  `Phone_Num`,    `Email`) 
	              values (3,         3,              '440-578-9612', 'hi1234@yahoo.com');
insert into Contact_Info (`User_ID`, `Location_ID`,  `Phone_Num`,    `Email`) 
	              values (4,         4,              '216-852-9461', 'ti@cox.net');
insert into Contact_Info (`User_ID`, `Location_ID`,  `Phone_Num`,    `Email`) 
	              values (5,         5,              '216-963-4561', 'Imlovingit@yahoo.com');


insert into Address (`Location_Name`, `City`,      `Street_Name`, `Street_Number`, `Street_Ext`,       `State`) 
	         values ('Home',          'Cleveland', 'Glenside',    93,              'Brunswick Circle', 'Ohio');
insert into Address (`Location_Name`, `City`,      `Street_Name`, `Street_Number`, `Street_Ext`,       `State`) 
	         values ('Home', 		  'Cleveland', 'Glenside',    2697,            'Brunswick Circle', 'Ohio');
insert into Address (`Location_Name`, `City`,      `Street_Name`, `Street_Number`, `Street_Ext`,       `State`) 
		     values ('Home',          'Cleveland', 'Glenside',    26983,           'Brunswick Circle', 'Ohio');
insert into Address (`Location_Name`, `City`,      `Street_Name`, `Street_Number`, `Street_Ext`,       `State`) 
			 values ('Work',          'Toledo',    'Sterns',      26993,           'Brunswick Circle', 'Ohio');
insert into Address (`Location_Name`, `City`,      `Street_Name`, `Street_Number`, `Street_Ext`,       `State`) 
			 values ('Home',          'Cleveland', 'Glenside',    26789,           'Berry Circle',     'Maine');



