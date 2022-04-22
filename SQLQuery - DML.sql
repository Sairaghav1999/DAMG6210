--Table 1: Customer Table
Select * from Customer;

INSERT INTO Customer VALUES(62101,'Sushrut Mujumdar','16B, Smith Street Boston, MA, 02120','6178888657','sushrut@gmail.com','1345678967541236','sush@1234');
INSERT INTO Customer VALUES(62102,'Shivangee Nagar','104C, Ward Street, Boston, MA, 02121','8573186401','shivangee@gmail.com','9876456725638645','shiv@2021');
INSERT INTO Customer VALUES(62103,'Sai Raghavendra','15B, Smith Street, Boston, MA, 02120','8573186402','sai@gmail.com','7512097734228766','sai@2022');
INSERT INTO Customer VALUES(62104,'Niharika Gaurihar','19A, Parker Street, Boston, MA, 02123','8573186403','niharika@gmail.com','9900876645673345','nih@3022');
INSERT INTO Customer VALUES(62105,'Shrey Timbadia','18C, Tremont Street, Boston, MA, 02124','8573186404','shrey@gmail.com','5788654435562356','shrey@2020');
INSERT INTO Customer VALUES(62106,'Ayush Soni','360B, Huntington Avenue, Boston, MA, 02126','8573186405','ayush@gmail.com','8796760388876544','ayush@1998');
INSERT INTO Customer VALUES(62107,'Siddharth Malhotra','242A, Huntington Avenue, Boston, MA, 02126','8573186406','sid@gmail.com','9009878767542378','sid@1996');
INSERT INTO Customer VALUES(62108,'Aakash Patil','12A, England Street, Boston, MA, 02127','8573186407','aakash@gmail.com','7645334589765647','aak@1267');
INSERT INTO Customer VALUES(62109,'Drishti Goda','320B, Newburry Street, Boston, MA, 02128','8573186408','drishti@gmail.com','6534127890876545','drisht@1995');
INSERT INTO Customer VALUES(62110,'Mayur Mahanta','102A, Ward Street, Boston, MA, 02121','8573186410','mayur@gmail.com','2345897765445677','mayur@1097');
INSERT INTO Customer VALUES(62111,'Rishabh Arora','220F, John Street, Rochester, NY, 14632','8563452345','rish@gmail.com','4567345264789854','rish@123');
INSERT INTO Customer VALUES(62112,' Amey Kharote','212C, Mike Street, Rochester, NY, 14633','8563452346','amey@gmail.com','5638562948247923','amy@234');
INSERT INTO Customer VALUES(62113,'Nikhil Kadam','320A, Stetson Street, Rochester, NY, 14634','8563452347','nikhil@gmail.com','3335432862890356','nik@786');
INSERT INTO Customer VALUES(62114,'Sangeeta Ray','225B, Logan Street, Rochester, NY, 14635','8563452348','sageeta@gmail.com','6543892376562234','sang@254');
INSERT INTO Customer VALUES(62115,'Samita Salian','200H, Lenion Street, Rochester, NY, 14636','8563452349','samita@gmail.com','9876567876435123','sam@987');
INSERT INTO Customer VALUES(62116, 'Saloni Koli','60F, New England Street, Rochester, NY, 14637','8563452310','saloni@gmail.com','3398452476429762','saloni@564');
INSERT INTO Customer VALUES(62117, 'Sanpreet Duggal', '120F, Sons Street, Rochester, NY, 14638','8563452311','sanpreet@gmail.com','1223943448642023','sanu@444');
INSERT INTO Customer VALUES(62118, 'Sakshi Naik', '133E, West Village, Syracuse, NY, 14440', '8563452312','sakshi@gmail.com','9765434567845679','sakshi@989');
INSERT INTO Customer VALUES(62119,  'Karan Marwah', '100G, Downtown, Rochester, NY, 14342', '8563452313', 'karan@gmail.com' , '2356745679876987','kar@222');
INSERT INTO Customer VALUES(62120, 'Irfan Poonawala', '252J, Abby Town Road, Syracuse, NY, 14420', '8563452314' , 'irfan@gmail.com', '5676543345676543', 'irf@000');

--Table 2: Payment Table
Select * from Payment;

INSERT INTO Payment VALUES('20001','30','CreditCard','Sucess','2022-04-14 8:15:20');
INSERT INTO Payment VALUES('20002','8','Wallet','Sucess','2022-04-15 9:16:20');
INSERT INTO Payment VALUES('20003','24','DebitCard','Sucess','2022-04-16 10:15:20');
INSERT INTO Payment VALUES('20004','20','CreditCard','Sucess','2022-04-17 20:35:20');
INSERT INTO Payment VALUES('20005','14','CreditCard','Sucess','2022-04-18 2:21:20');
INSERT INTO Payment VALUES('20006','26','CreditCard','Sucess','2022-04-19 1:15:20');
INSERT INTO Payment VALUES('20007','12','Wallet','Sucess','2022-04-20 12:25:20');
INSERT INTO Payment VALUES('20008','30','DebitCard','InProcess','2022-04-21 5:15:20');
INSERT INTO Payment VALUES('20009','7','DebitCard','Failed','2022-04-22 6:45:20');
INSERT INTO Payment VALUES('20010','10','DebitCard','Failed','2022-04-23 7:15:20');
INSERT INTO Payment VALUES('20011','19' ,'DebitCard','Sucess','2022-04-23 16:15:26'); 
INSERT INTO Payment VALUES('20012','24' ,'DebitCard','InProcess','2022-04-23 19:15:56');
INSERT INTO Payment VALUES('20013','33' ,'DebitCard','Failed','2022-04-21 21:17:19');
INSERT INTO Payment VALUES('20014','23' ,'Wallet','Sucess','2022-04-20 12:18:35');
INSERT INTO Payment VALUES('20015','18' ,'Wallet','InProcess','2022-04-20 14:30:46');
INSERT INTO Payment VALUES('20016','30' ,'Wallet','Failed','2022-04-23 10:28:55');
INSERT INTO Payment VALUES('20017','20' ,'Wallet','Sucess','2022-04-21 16:57:21');
INSERT INTO Payment VALUES('20018','25' ,'DebitCard','Sucess','2022-04-22 17:44:47');
INSERT INTO Payment VALUES('20019','15' ,'Wallet','Sucess','2022-04-15 17:18:45');
INSERT INTO Payment VALUES('20020','15','CreditCard','Sucess','2022-04-15 14:17:40');

--Table 3: Main_Order Table
Select * from Main_Order;

INSERT into Main_Order VALUES('1404202201','62101','2','2022-04-14 8:14:20','InHouse','20001');
INSERT into Main_Order VALUES('1404202202','62102','3','2022-04-15 9:15:20','Online','20002');
INSERT into Main_Order VALUES('1404202203','62103','4','2022-04-16 10:14:20','InHouse','20003');
INSERT into Main_Order VALUES('1404202204','62104','3','2022-04-17 20:34:20','InHouse','20004');
INSERT into Main_Order VALUES('1404202205','62105','2','2022-04-18 2:20:20','InHouse','20005');
INSERT into Main_Order VALUES('1404202206','62106','5','2022-04-19 1:14:20','InHouse','20006');
INSERT into Main_Order VALUES('1404202207','62107','6','2022-04-20 12:24:20','Online','20007');
INSERT into Main_Order VALUES('1404202208','62108','4','2022-04-21 5:14:20','InHouse','20008');
INSERT into Main_Order VALUES('1404202209','62109','5','2022-04-22 6:44:20','InHouse','20009');
INSERT into Main_Order VALUES('1404202210','62110','2','2022-04-23 7:14:20','Online','20010');
INSERT into Main_Order VALUES('1404202211','62101','1','2022-04-24 12:24:20','InHouse','20011');
INSERT into Main_Order VALUES('1404202212','62103','5','2022-05-01 5:14:20','InHouse','20012');
INSERT into Main_Order VALUES('1404202213','62107','3','2022-05-02 6:44:20','InHouse','20013');
INSERT into Main_Order VALUES('1404202214','62106','2','2022-05-02 7:14:20','InHouse','20014');
INSERT into Main_Order VALUES('1404202215','62115','6','2022-04-20 14:29:46','InHouse','20015');
INSERT into Main_Order VALUES('1404202216','62116','5','2022-04-23 10:27:55','InHouse','20016');
INSERT into Main_Order VALUES('1404202217','62117','8','2022-04-21 16:56:21','Online','20017');
INSERT into Main_Order VALUES('1404202218','62118','9','2022-04-22 17:43:47','Online','20018');
INSERT into Main_Order VALUES('1404202219','62119','7','2022-04-15 17:17:45','InHouse', NULL);
INSERT into Main_Order VALUES('1404202220','62120','5','2022-04-15 14:15:40','InHouse', NULL);

--Table 4: Ingredients Table
Select * from Ingredients;

INSERT INTO Ingredients VALUES(12011,'Cheese','Dairy','50','2022-04-14','2022-04-14','5');
INSERT INTO Ingredients VALUES(12012,'Salt','Spices','10','2022-04-22','2023-04-22','10')
INSERT INTO Ingredients VALUES(12013,'Sugar','Spices','10','2022-04-23','2023-04-23','15');
INSERT INTO Ingredients VALUES(12014,'Tomato','Veggies','30','2022-04-15','2022-04-21','3');
INSERT INTO Ingredients VALUES(12015,'Potato','Veggies','20','2022-04-25','2022-05-25','3');
INSERT INTO Ingredients VALUES(12016,'Chicken','Meat','15','2022-04-26','2022-04-30','5');
INSERT INTO Ingredients VALUES(12017,'Egg','Dairy','30','2022-04-27','2022-05-14','2');
INSERT INTO Ingredients VALUES(12018,'Bread','Dairy','12','2022-04-24','2022-04-30','5');
INSERT INTO Ingredients VALUES(12019,'Flour','Dairy','5','2022-04-29','2022-09-29','25');
INSERT INTO Ingredients VALUES(12020,'Bacon','Meat','10','2022-04-30','2022-05-03','10');
INSERT INTO Ingredients VALUES(12021,'Lettuce','Veggies','18','2022-05-01','2022-05-07','14');
INSERT INTO Ingredients VALUES(12022,'Chillies','Spices','10','2022-05-02','2023-05-02','21');
INSERT INTO Ingredients VALUES(12023,'Onions','Veggies','46','2022-05-03','2022-05-23','4');
INSERT INTO Ingredients VALUES(12024,'Baking Soda','Spices','11','2022-05-04','2023-05-04','15');
INSERT INTO Ingredients VALUES(12025,'Pasta','Dairy','15','2022-05-05','2022-08-05','12');
INSERT INTO Ingredients VALUES(12026,'Milk','Dairy','10','2022-05-06','2022-05-11','5');
INSERT INTO Ingredients VALUES(12027,'Coffee','Spices','25','2022-05-07','2022-12-07','20');
INSERT INTO Ingredients VALUES(12028,'Cinnamon','Spices','0','2022-05-08','2023-05-08','21');
INSERT INTO Ingredients VALUES(12029,'Pizza Dough','Dairy','25','2022-04-10','2022-06-08','55');
INSERT INTO Ingredients VALUES(12030,'Mushrooms','Veggies','10','2022-04-02','2022-04-30','22')
INSERT INTO Ingredients VALUES(12031,'BellPeppers','Veggies','8','2022-04-06','2022-04-29','13');
INSERT INTO Ingredients VALUES(12032,'Basil','Veggies','10','2022-04-04','2022-04-30','7');
INSERT INTO Ingredients VALUES(12033,'ChickPeas','Veggies','10','2022-04-07','2022-04-30','9');
INSERT INTO Ingredients VALUES(12034,'Indian Lentils','Spices','12','2022-04-08','2022-11-19','13');
INSERT INTO Ingredients VALUES(12035,'Chilli Powder','Spices','8','2022-04-05','2023-04-12','9');
INSERT INTO Ingredients VALUES(12036,'Wheat','Dairy','14','2022-04-03','2023-04-15','16');

--Table 5: Employee Table
SELECT * FROM Employee;

INSERT INTO Employee VALUES('10','Bhavna Kashyap','Admin','bhavna@gmail.com','6175432278','99A,Regina Road, Boston, MA, 02130','302349878','1996-05-21','Female');
INSERT INTO Employee VALUES('11','Mukul Rawat','Waiter','mukul@gmail.com','6175432279','110B, Clark Street, Boston, MA, 02131','946742567','1995-01-23','Male');
INSERT INTO Employee VALUES('12','Himanshu Waliya','DeliveryBoy','him@gmail.com','6175432277','121C, Doctors Street, Boston, MA, 02132','528946134','1991-12-01','Male');
INSERT INTO Employee VALUES('13','Harshita Khan','Waiter','har@gmail.com','6175432276','12A, Harvard Street, Boston, MA, 02133','845173956','1997-03-12','Female');
INSERT INTO Employee VALUES('14','Abhinav Vohra','DeliveryBoy','abhi@gmail.com','6175432275','5F, Topliff Street, Boston, MA, 02134','563894628','1998-07-07','Male');
INSERT INTO Employee VALUES('15','Sukrit Goswani','DeliveryBoy','sukrit@gmail.com','6175432274','54D, Roundhill Road, Boston, MA, 02135','321749573','1992-06-05','Male');
INSERT INTO Employee VALUES('16','Nikhil Anand','Chef','nikhl@gmail.com','6175432273','11A, Dorchester Street, Boston, MA, 02136','572947318','1997-05-22','Male');
INSERT INTO Employee VALUES('17','Kedar Ghule','Chef','kedar@gmail.com','6175432272','132F,Missionhill street, Boston, MA, 02137','683846264','1994-04-12','Male');
INSERT INTO Employee VALUES('18','Saloni Gupta','Waiter','saloni@gmail.com','6175432271','20D, Ward Street, Boston, MA, 02121','746537563','1996-10-04','Female');
INSERT INTO Employee VALUES('19','Mohit Malani','Waiter','mohit@gmail.com','6175432270','25F, Parker Street, Boston, MA, 02123','543577656','1993-12-27','Male');
INSERT INTO Employee VALUES('20','David Silva','Waiter','david@gmail.com','8579658975','1589 Beacon Street, Boston, MA, 02446','856547856','1996-08-21','Male');
INSERT INTO Employee VALUES('21','Paul Pogba','Waiter','paul@gmail.com','6178549832','123 Washington Street, Boston, MA, 02165','459328794','1997-08-08','Male');
INSERT INTO Employee VALUES('22','Alia Bhat','Waiter','alia@gmail.com','8579835647','12 Harvard Terrace, Boston, MA, 02179','574129638','1995-07-07','Female');
INSERT INTO Employee VALUES('23','Julia Chess','Waiter','julia@gmail.com','6178943567','55 Queensberry, Boston, MA, 02146','754168394','1998-04-22','Female');
INSERT INTO Employee VALUES('24','Gauri Verma','Admin','gauri@gmail.com','6165652278','23 Queensberry, Boston, MA, 02146','369852022','1992-05-20','Female');
INSERT INTO Employee VALUES('25','Nakul Mehta','Waiter','nakul@gmail.com','6173652179','29B, Clarendon Street, Boston, MA, 02131','963741951','1999-11-23','Male');
INSERT INTO Employee VALUES('26','Nida khan','Chef','nida@gmail.com','6175915133','122A, High Street, Boston, MA, 02123','321789025','1993-03-02','Female');
INSERT INTO Employee VALUES('27','Sima Shah','Admin','sima@gmail.com','6175336674','3B, Alphonsus Street, Boston, MA, 02132','129740318','1994-06-15','Female');
INSERT INTO Employee VALUES('28','Neal Kapil','Chef','neal@gmail.com','6175439613','11A, Densil Street, Boston, MA, 02156','915375082','1997-06-27','Male');
INSERT INTO Employee VALUES('29','Keshav Rao','Waiter','keshav@gmail.com','6457132272','1114B ,Wigglesworth street, Boston, MA, 02137','159753025','1998-04-14','Male');
INSERT INTO Employee VALUES('30','Puja Gupta','DeliveryBoy','puja@gmail.com','6175983321','2D, Well Street, Boston, MA, 02121','789654123','1991-10-14','Female');
INSERT INTO Employee VALUES('31','Shekhar Sant','Admin','shekhar@gmail.com','6175403299','4A, Parker Street, Boston, MA, 02123','339422610','1994-02-27','Male');
INSERT INTO Employee VALUES('32','Mahua Chaterjee','Waiter','mahua@gmail.com','6302019832','3 Harvard Street, Boston, MA, 02165','336885314','1994-08-18','Female');
INSERT INTO Employee VALUES('33','Priyanka Bhat','DeliveryBoy','priyanka@gmail.com','3129632038','12 Longwood Avenue, Boston, MA, 02179','996332159','1998-07-17','Female');
INSERT INTO Employee VALUES('34','Jessica Rodriguez','Waiter','jessica@gmail.com','6178946987','5 Dairy Park, Boston, MA, 02146','754165494','1995-01-22','Female');

--Table 6: Vendor Table
SELECT * FROM Vendor;

INSERT INTO Vendor VALUES('13011','Blackburns Food','100 Cambridge Street, Upper Plaza','6745321234','Wholesale');
INSERT INTO Vendor VALUES('13012','Hunts Point','44A Charles Street','6273645564','Wholesale');
INSERT INTO Vendor VALUES('13013','Berryhill Foods','6 Chestnut Street','6823432765','Retail');
INSERT INTO Vendor VALUES('13014','Bolthouse Farms','58 Irving Street','6643456123','Wholesale');
INSERT INTO Vendor VALUES('13015','Matarazzo Brothers','4 Louisburg Square','6917527834','Retail');
INSERT INTO Vendor VALUES('13016','Johnnys produce','5 Mount Vernon Street','6847562319','Retail');
INSERT INTO Vendor VALUES('13017','Assalam chain','18 Phillips Street','6387198723','Wholesale');
INSERT INTO Vendor VALUES('13018','Lambert food','15 Pinckney Street','6895267384','Wholesale');
INSERT INTO Vendor VALUES('13019','Dimare fresh','3 Smith Court','6876591724','Wholesale');
INSERT INTO Vendor VALUES('13020','Farmer bounty','83 Phillips Street','6917495623','Wholesale');
INSERT INTO Vendor VALUES('13021','Godrej Mart','889 Beacon Street','8579641258','Retail');
INSERT INTO Vendor VALUES('13022','Vincents Veggies','96 Washington Street','6178463549','Retail');
INSERT INTO Vendor VALUES('13023','Aris Fresh Food','874 Harvard Avenue','6178642257','Wholesale');
INSERT INTO Vendor VALUES('13024','Pinnocole Farms','746 Whaltham street','8574641159','Wholesale');
INSERT INTO Vendor VALUES('13025','Erics Diary','884 Lechemere Street','6178865499','Retail');
INSERT INTO Vendor VALUES('13026','Mass Foods','45 Queensberry Street','6178544932','Retail');
INSERT INTO Vendor VALUES('13027','ITC Farms','88 Quint Avenue','8574634196','Wholesale');

--Table 7: Dish Table
SELECT * FROM Dish;

INSERT INTO Dish VALUES('700701','Souffle','Baked Egg Dish');
INSERT INTO Dish VALUES('700702','Eggs benedict','English Muffin and Canadian Bacon');
INSERT INTO Dish VALUES('700703','French toast','Egg toast dipped in maple sauce');
INSERT INTO Dish VALUES('700704','Vegan Club Sanwich','Sandwich of bread with vegetables'); 
INSERT INTO Dish VALUES('700705','Red Sauce Pasta','Pasta cooked in Arrabiata Sauce'); 
INSERT INTO Dish VALUES('700706','Basil Pesto Pasta','Pasta cooked in Thai Basil Sauce');
INSERT INTO Dish VALUES('700707','White Sauce Pasta','Pasta cooked in Milk Sauce');
INSERT INTO Dish VALUES('700708','Cappuccino','Espresso Based coffee');
INSERT INTO Dish VALUES('700709','Moccacino','Warm Cafe Latte');
INSERT INTO Dish VALUES('700710','Fries','Fried Potato chips');
INSERT INTO Dish VALUES('700711','Margarita Pizza','Plain Chesse Pizza');
INSERT INTO Dish VALUES('700712','Farm House Pizza','Vegetable Pizza'); 
INSERT INTO Dish VALUES('700713','Pesto Pizza','Basil Pesto Based Pizza'); 
INSERT INTO Dish VALUES('700714','Mushroom Ravioli','Mushroom Filled Pasta Dough');
INSERT INTO Dish VALUES('700715','Hummus','Chick Peas Dip');
INSERT INTO Dish VALUES('700716','Dal Tadka','Indian Lentils');
INSERT INTO Dish VALUES('700717','Roti','Indian Bread');
INSERT INTO Dish VALUES('700718','Aloo Dum','Potato Based Curry ');

--Table 8: Chef Table
Select * from Chef;

INSERT INTO Chef VALUES('16','Italian');
INSERT INTO Chef VALUES('17','Breakfast');INSERT INTO Chef VALUES('26','Indian');INSERT INTO Chef VALUES('28','Thai');

--Table 9: DeliveryBoy Table
Select * from DeliveryBoy;

INSERT INTO DeliveryBoy VALUES('12','QWE6I');
INSERT INTO DeliveryBoy VALUES('14','JDH34');
INSERT INTO DeliveryBoy VALUES('15','P75GH');
INSERT INTO DeliveryBoy VALUES('30','A6GB1');INSERT INTO DeliveryBoy VALUES('33','B6D2K');

--Table 10: SysAdmin Table
Select * from SysAdmin;
INSERT INTO SysAdmin VALUES('10','19');
INSERT INTO SysAdmin VALUES('24','21');INSERT INTO SysAdmin VALUES('27','23');INSERT INTO SysAdmin VALUES('31','40');

--Table 11: Waiter Table
Select * from Waiter;

INSERT INTO Waiter VALUES('11','Morning');
INSERT INTO Waiter VALUES('18','Morning');
INSERT INTO Waiter VALUES('19','Evening');
INSERT INTO Waiter VALUES('20','Evening');
INSERT INTO Waiter VALUES('21','Evening');
INSERT INTO Waiter VALUES('22','Evening');
INSERT INTO Waiter VALUES('23','Evening');
INSERT INTO Waiter VALUES('25','Night');INSERT INTO Waiter VALUES('29','Night');INSERT INTO Waiter VALUES('32','Night');INSERT INTO Waiter VALUES('34','Night');
INSERT INTO Waiter VALUES('13','Night');

--Table 12: Delivery Table
Select * from Delivery;

INSERT INTO Delivery VALUES('500501','12','1589 Beacon Street','2022-04-14 8:40:20','2022-04-14 8:59:20','30','3');INSERT INTO Delivery VALUES('500502','14','71 Park Drive','2022-04-17 20:45:20','2022-04-17 20:58:20','23','3');INSERT INTO Delivery VALUES('500503','15','12 Harvard Terrace','2022-04-20 12:35:20','2022-04-20 12:52:20','18','2');INSERT INTO Delivery VALUES('500504','30','5 iroquois streete','2022-04-21 17:30:10','2022-04-21 17:50:00','24','5');INSERT INTO Delivery VALUES('500505','33','24 Hill street','2022-04-23 21:01:00','2022-04-23 21:20:45','22','4');

--Table 13: Inhouse Table
Select * FROM Inhouse;

INSERT INTO Inhouse VALUES('1404202201','11','200211');
INSERT INTO Inhouse VALUES('1404202203','18','200212');
INSERT INTO Inhouse VALUES('1404202204','19','200213');
INSERT INTO Inhouse VALUES('1404202205','20','200214');
INSERT INTO Inhouse VALUES('1404202206','21','200215');
INSERT INTO Inhouse VALUES('1404202208','22','200216');
INSERT INTO Inhouse VALUES('1404202209','23','200217');
INSERT INTO Inhouse VALUES('1404202211','25','200218');INSERT INTO Inhouse VALUES('1404202212','29','200219');INSERT INTO Inhouse VALUES('1404202215','32','200220');INSERT INTO Inhouse VALUES('1404202216','34','200221');INSERT INTO Inhouse VALUES('1404202219','13','200222');INSERT INTO Inhouse VALUES('1404202220',NULL,'200223');

--Table 14: OnlineOrder Table
SELECT * FROM OnlineOrder;

INSERT INTO OnlineOrder VALUES('1404202202','10','91');INSERT INTO OnlineOrder VALUES('1404202207','10','92');INSERT INTO OnlineOrder VALUES('1404202210','10','91');INSERT INTO OnlineOrder VALUES('1404202213','24','93');INSERT INTO OnlineOrder VALUES('1404202214','27','94');INSERT INTO OnlineOrder VALUES('1404202217','27','91');INSERT INTO OnlineOrder VALUES('1404202218','31','92');


--Table 15: OrderLine Table
SELECT * FROM OrderLine;


INSERT INTO OrderLine VALUES('800801','1404202201','700701','2','16');
INSERT INTO OrderLine VALUES('800802','1404202201','700703','1','12');
INSERT INTO OrderLine VALUES('800803','1404202202','700701','1','8');
INSERT INTO OrderLine VALUES('800804','1404202203','700703','2','24');
INSERT INTO OrderLine VALUES('800805','1404202204','700704','1','15');
INSERT INTO OrderLine VALUES('800806','1404202204','700710','1','5');
INSERT INTO OrderLine VALUES('800807','1404202205','700707','1','14');
INSERT INTO OrderLine VALUES('800808','1404202206','700706','2','26');
INSERT INTO OrderLine VALUES('800809','1404202207','700703','1','12');
INSERT INTO OrderLine VALUES('800810','1404202208','700707','1','14');
INSERT INTO OrderLine VALUES('800811','1404202208','700708','2','16');
INSERT INTO OrderLine VALUES('800812','1404202209','700709','1','7');
INSERT INTO OrderLine VALUES('800813','1404202210','700710','2','10');
INSERT INTO OrderLine VALUES('800814','1404202211','700711','1','12');
INSERT INTO OrderLine VALUES('800815','1404202212','700712','1','13');
INSERT INTO OrderLine VALUES('800816','1404202212','700710','1','5');
INSERT INTO OrderLine VALUES('800817','1404202213','700713','2','24');
INSERT INTO OrderLine VALUES('800818','1404202214','700714','1','15');
INSERT INTO OrderLine VALUES('800819','1404202215','700706','1','13');
INSERT INTO OrderLine VALUES('800820','1404202216','700717','3','15');
INSERT INTO OrderLine VALUES('800821','1404202216','700716','1','10');
INSERT INTO OrderLine VALUES('800822','1404202217','700718','1','12');
INSERT INTO OrderLine VALUES('800823','1404202218','700701','2','16');
INSERT INTO OrderLine VALUES('800824','1404202219','700708','1','8');
INSERT INTO OrderLine VALUES('800825','1404202220','700710','2','10');


--Table 16: Supplies Table
Select * from Supplies;

INSERT INTO Supplies VALUES('13011','12011');
INSERT INTO Supplies VALUES('13011','12015');
INSERT INTO Supplies VALUES('13022','12012');
INSERT INTO Supplies VALUES('13022','12013');
INSERT INTO Supplies VALUES('13015','12016');
INSERT INTO Supplies VALUES('13014','12014');
INSERT INTO Supplies VALUES('13014','12017');
INSERT INTO Supplies VALUES('13015','12018');
INSERT INTO Supplies VALUES('13015','12020');
INSERT INTO Supplies VALUES('13016','12019');
INSERT INTO Supplies VALUES('13016','12021');
INSERT INTO Supplies VALUES('13017','12025');
INSERT INTO Supplies VALUES('13017','12022');
INSERT INTO Supplies VALUES('13018','12024');
INSERT INTO Supplies VALUES('13019','12023');
INSERT INTO Supplies VALUES('13019','12028');
INSERT INTO Supplies VALUES('13020','12026');
INSERT INTO Supplies VALUES('13020','12027');
INSERT INTO Supplies VALUES('13021','12029');
INSERT INTO Supplies VALUES('13021','12030');
INSERT INTO Supplies VALUES('13022','12031');
INSERT INTO Supplies VALUES('13023','12032');
INSERT INTO Supplies VALUES('13024','12033');
INSERT INTO Supplies VALUES('13025','12034');
INSERT INTO Supplies VALUES('13024','12035');
INSERT INTO Supplies VALUES('13027','12036');


--Table 17: RecipeIngredients Table
Select * FROM RecipeIngredients;

INSERT INTO RecipeIngredients VALUES('12011','800801');
INSERT INTO RecipeIngredients VALUES('12012','800801');
INSERT INTO RecipeIngredients VALUES('12017','800801');
INSERT INTO RecipeIngredients VALUES('12026','800801');
INSERT INTO RecipeIngredients VALUES('12017','800802');
INSERT INTO RecipeIngredients VALUES('12018','800802');
INSERT INTO RecipeIngredients VALUES('12011','800803');
INSERT INTO RecipeIngredients VALUES('12012','800803');
INSERT INTO RecipeIngredients VALUES('12017','800803');
INSERT INTO RecipeIngredients VALUES('12026','800803');
INSERT INTO RecipeIngredients VALUES('12017','800804');
INSERT INTO RecipeIngredients VALUES('12018','800804');
INSERT INTO RecipeIngredients VALUES('12012','800805');
INSERT INTO RecipeIngredients VALUES('12014','800805');
INSERT INTO RecipeIngredients VALUES('12018','800805');
INSERT INTO RecipeIngredients VALUES('12021','800805');
INSERT INTO RecipeIngredients VALUES('12022','800805');
INSERT INTO RecipeIngredients VALUES('12023','800805');
INSERT INTO RecipeIngredients VALUES('12012','800806');
INSERT INTO RecipeIngredients VALUES('12018','800806');
INSERT INTO RecipeIngredients VALUES('12011','800807');
INSERT INTO RecipeIngredients VALUES('12012','800807');
INSERT INTO RecipeIngredients VALUES('12025','800807');
INSERT INTO RecipeIngredients VALUES('12026','800807');
INSERT INTO RecipeIngredients VALUES('12011','800808');
INSERT INTO RecipeIngredients VALUES('12012','800808');
INSERT INTO RecipeIngredients VALUES('12025','800808');
INSERT INTO RecipeIngredients VALUES('12026','800808');
INSERT INTO RecipeIngredients VALUES('12019','800808');
INSERT INTO RecipeIngredients VALUES('12017','800809');
INSERT INTO RecipeIngredients VALUES('12018','800809');
INSERT INTO RecipeIngredients VALUES('12011','800810');
INSERT INTO RecipeIngredients VALUES('12012','800810');
INSERT INTO RecipeIngredients VALUES('12025','800810');
INSERT INTO RecipeIngredients VALUES('12026','800810');
INSERT INTO RecipeIngredients VALUES('12013','800811');
INSERT INTO RecipeIngredients VALUES('12026','800811');
INSERT INTO RecipeIngredients VALUES('12027','800811');
INSERT INTO RecipeIngredients VALUES('12013','800812');
INSERT INTO RecipeIngredients VALUES('12026','800812');
INSERT INTO RecipeIngredients VALUES('12027','800812');
INSERT INTO RecipeIngredients VALUES('12028','800812');
INSERT INTO RecipeIngredients VALUES('12012','800813');
INSERT INTO RecipeIngredients VALUES('12018','800813');
INSERT INTO RecipeIngredients VALUES('12011','800814');
INSERT INTO RecipeIngredients VALUES('12014','800814');
INSERT INTO RecipeIngredients VALUES('12029','800814');
INSERT INTO RecipeIngredients VALUES('12011','800815');
INSERT INTO RecipeIngredients VALUES('12014','800815');
INSERT INTO RecipeIngredients VALUES('12030','800815');
INSERT INTO RecipeIngredients VALUES('12022','800815');
INSERT INTO RecipeIngredients VALUES('12023','800815');
INSERT INTO RecipeIngredients VALUES('12029','800815');
INSERT INTO RecipeIngredients VALUES('12016','800815');
INSERT INTO RecipeIngredients VALUES('12020','800815');
INSERT INTO RecipeIngredients VALUES('12012','800816');
INSERT INTO RecipeIngredients VALUES('12015','800816');
INSERT INTO RecipeIngredients VALUES('12011','800817');
INSERT INTO RecipeIngredients VALUES('12022','800817');
INSERT INTO RecipeIngredients VALUES('12029','800817');
INSERT INTO RecipeIngredients VALUES('12032','800817');
INSERT INTO RecipeIngredients VALUES('12012','800818');
INSERT INTO RecipeIngredients VALUES('12030','800818');
INSERT INTO RecipeIngredients VALUES('12025','800818');
INSERT INTO RecipeIngredients VALUES('12012','800819');
INSERT INTO RecipeIngredients VALUES('12011','800819');
INSERT INTO RecipeIngredients VALUES('12025','800819');
INSERT INTO RecipeIngredients VALUES('12032','800819');
INSERT INTO RecipeIngredients VALUES('12036','800820');
INSERT INTO RecipeIngredients VALUES('12012','800820');
INSERT INTO RecipeIngredients VALUES('12012','800821');
INSERT INTO RecipeIngredients VALUES('12014','800821');
INSERT INTO RecipeIngredients VALUES('12034','800821');
INSERT INTO RecipeIngredients VALUES('12035','800821');
INSERT INTO RecipeIngredients VALUES('12012','800822');
INSERT INTO RecipeIngredients VALUES('12015','800822');
INSERT INTO RecipeIngredients VALUES('12035','800822');
INSERT INTO RecipeIngredients VALUES('12023','800822');
INSERT INTO RecipeIngredients VALUES('12011','800823');
INSERT INTO RecipeIngredients VALUES('12012','800823');
INSERT INTO RecipeIngredients VALUES('12017','800823');
INSERT INTO RecipeIngredients VALUES('12026','800823');
INSERT INTO RecipeIngredients VALUES('12013','800824');
INSERT INTO RecipeIngredients VALUES('12026','800824');
INSERT INTO RecipeIngredients VALUES('12027','800824');
INSERT INTO RecipeIngredients VALUES('12012','800825');
INSERT INTO RecipeIngredients VALUES('12015','800825');



--Table 18: Prepares Table
Select * FROM Prepares;

INSERT INTO Prepares VALUES('1404202201','17');
INSERT INTO Prepares VALUES('1404202202','17');
INSERT INTO Prepares VALUES('1404202203','17');
INSERT INTO Prepares VALUES('1404202204','17');
INSERT INTO Prepares VALUES('1404202205','16');
INSERT INTO Prepares VALUES('1404202206','16');
INSERT INTO Prepares VALUES('1404202207','17');
INSERT INTO Prepares VALUES('1404202208','16');
INSERT INTO Prepares VALUES('1404202209','16');
INSERT INTO Prepares VALUES('1404202210','17');
INSERT INTO Prepares VALUES('1404202211','28');INSERT INTO Prepares VALUES('1404202212','28');INSERT INTO Prepares VALUES('1404202212','16');INSERT INTO Prepares VALUES('1404202213','28');INSERT INTO Prepares VALUES('1404202214','16');INSERT INTO Prepares VALUES('1404202215','16');INSERT INTO Prepares VALUES('1404202216','26');INSERT INTO Prepares VALUES('1404202216','26');INSERT INTO Prepares VALUES('1404202217','26');INSERT INTO Prepares VALUES('1404202218','17');INSERT INTO Prepares VALUES('1404202219','17');INSERT INTO Prepares VALUES('1404202220','16');


--Table 19: Assignedto Table
Select * FROM Assignedto;

INSERT INTO Assignedto VALUES('1404202202','12');
INSERT INTO Assignedto VALUES('1404202207','14');
INSERT INTO Assignedto VALUES('1404202210','15');
INSERT INTO Assignedto VALUES('1404202213','30');INSERT INTO Assignedto VALUES('1404202214','33');INSERT INTO Assignedto VALUES('1404202217','15');INSERT INTO Assignedto VALUES('1404202218','30');


-- Stored Procedure output queries
EXEC CCOrder @paymentmode = 'CreditCard';

EXEC FoodType @keyword = '%Vegan%';

EXEC PaymentUpdate @orderid= '1404202219', @paymentid = '20019';

Select * from Main_Order;

--Views output queries
Select * from [Payment_Information];

Select * from [Orders Information for Italian Cuisine];

Select * from [Vendor Information];

-- UDF OUTPUT
SELECT * FROM Ingredients;

--Encryption Verification
Select * from Customer;
select * from employee;

--Viewing Indexes
select t.name as tablename, i.* 
from sys.indexes i, sys.tables t
where i.object_id = t.object_id
  and i.type_desc = 'NONCLUSTERED'









