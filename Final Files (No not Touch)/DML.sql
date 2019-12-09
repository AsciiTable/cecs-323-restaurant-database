# Person 
insert into Person (ID, fName, lName) Values (1, "Jason", "Tran"),
(2, "Matthew", "Pham"),
(3, "Sonia","Mcleod"),
(4, "Siena","Prentice"),
(5, "Zeynep","Lynch"),
(6, "Amara","Own"),
(7, "Chanice","Whiteley"),
(8, "Linda","Beck"),
(9, "Brielle","O'Ryan"),
(10, "Makayla","Tyler"),
(11, "Ocean","Mckenna"),
(12, "Wilson","Mcphee"),
(13, "Lillie","Nolan"),
(14, "Mariya","Poole"),
(15, "Tia","Emonds"),
(16, "Jessie","Koch"),
(17, "Tillie","Hardin"),
(18, "Sila","Strong"),
(19, "Katerina","Conroy"),
(20, "Zoha","Sheppard"),
(21, "Arslan","Pcikett"),
(22, "Ruairi","Bates"),
(23, "Brook","Morgan"),
(24, "Cindy","Sheehan"),
(25, "Rocco","Braun"),
(26, "Hattie","Preston"),
(27, "Yazmin","Coles"),
(28, "Mandeep","Klein"),
(29, "Parries","Compton"),
(30, "Glyn","Beach"),
(31, "Amal","Keith"),
(32, "Elaina","Blair"),
(33, "Gordon","Hodges"),
(34, "Haya","Barlow"),
(35, "Adeeb","Treo"),
(36, "Danyl","Mcdonald"),
(37, "Yousif","Rudd"),
(38, "Jaydon","Tillman"),
(39, "Walter","Peters"),
(40, "Arwin","Hernandez"),
(41, "Jaxx","Harrison"),
(42, "Brain","Lam"),
(43, "Kobe","Rowley"),
(44, "Rupert","Greenwood"),
(45, "Katelin","Webber"),
(46, "Stefano","Davey"),
(47, "Monet","Ross"),
(48, "Jayden","York"),
(49, "Sophia","Rose"),
(50, "Tyese","Stone");

#Customer
insert into Customer (custID) Values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25);

#Anonymous Customer
insert into AnonymousCustomer (custID) Values 
(20),
(21),
(22),
(23),
(24),
(25);

#Private Customer
insert into PrivateCustomer (custID) Values 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10);

#Public Customer
insert into PublicCustomer (custID, snailMailAddress, emailAddress) Values 
(1,"8796 Arnold Street Cincinnati, OH 45211","rnewman@optonline.net"),
(2,"10 Stillwater Lane
Atlanta, GA 30303","aglassis@optonline.net"),
(3,"9039 Arlington Road
Coatesville, PA 19320","bulletin@outlook.com"),
(4,"833 Cherry Hill St.
Woonsocket, RI 02895","sarahs@yahoo.ca"),
(5,"12 Warren Dr.
Carmel, NY 10512","trieuvan@verizon.net"),
(6,"36 West St Margarets Lane
Easton, PA 18042","gslondon@me.com"),
(7,"600 Vine Ave.
Lincoln, NE 68506","haddawy@icloud.com"),
(8,"104 Green Lake Dr.
Upland, CA 91784","netsfr@yahoo.com"),
(9,"8204 Glen Creek Ave.
Nicholasville, KY 40356","willg@msn.com"),
(10,"27 N. Oakwood St.
Kalamazoo, MI 49009","weazelman@att.net"),
(11,"7432 West Hill Field Ave.
Glendale Heights, IL 60139","ralamosm@yahoo.ca"),
(12,"233 Lafayette Court
Appleton, WI 54911","dbrobins@hotmail.com"),
(13,"9998 Roehampton Dr.
Millville, NJ 08332","barjam@msn.com"),
(14,"8478 Pennington Dr.
Appleton, WI 54911","vganesh@yahoo.ca"),
(15,"18 Applegate St.
South Lyon, MI 48178","hauma@comcast.net"),
(16,"91 Campfire Drive
Concord, NH 03301","djupedal@hotmail.com"),
(17,"846 S. Briarwood Lane
Helena, MT 59601","research@icloud.com"),
(18,"
South Lyon, MI 48178
8245 High St.
Wakefield, MA 01880","stevelim@icloud.com"),
(19,"771 Cedar Dr.
Doylestown, PA 18901","munjal@comcast.net");

#Corporation
insert into Corporation (corpID, corpName, snailMailAddress, emailAddress) VALUES 
(1, "Google", "Google Ave", "gmail@gmail.com"),
(2, "Odds and Ends", "32 Walt Whitman St.
Altamonte Springs, FL 32714", "oddsandends@gmail.com"),
(3, "Handy Help", "763 El Dorado Dr.
Winter Springs, FL 32708", "handyhelp@gmail.com"),
(4, "Nick'S Knack", "16 N. Atlantic St.
Mooresville, NC 28115", "nicksknack@gmail.com"),
(5, "Here And There and Everywhere", "814 East Maiden Court
Manchester Township, NJ 08759", "hereandthere@gmail.com"),
(6, "E Cetera", "1 Adams Street
Thomasville, NC 27360", "ecetera@gmail.com"),
(7, "Closet Of Choices", "29 Clay St.
Wisconsin Rapids, WI 54494", "closetofchoices@gmail.com"),
(8, "Assorted Assets", "1 Hall Road
West Bend, WI 53095", "assortedassets@gmail.com"),
(9, "Trust Assortment", "192 Mill Ave.
Freehold, NJ 07728", "trustassortment@gmail.com");

#Corporate Representative
insert into CorporateRepresentative (custID, corpID, department) values
(11, 1, "Business"),
(12, 2, "Marketing"),
(13, 3, "Service"),
(14, 4, "HR"),
(15, 5, "Business"),
(16, 6, "HR"),
(17, 7, "HR"),
(18, 8, "Business"),
(19, 9, "Marketing");



#____________________________________________________________________________________________Menu Item
#Recipe
insert into Recipe (recipeName) Values 
#meat entree
("Chow Mein"),
("Egg Foo Young"),
("Chop Suey"),
#Soups
("Chicken Noddle Soup"),
("Tofo Soup"),
("Wonton Soup"),
("Egg drop Soup"),
("Cream of Mushroom Soup"),
#appetizers
("Shrimp Balls"),
("Dumplings"),
("Egg Rolls"),
("Crab Rangoon"),
("Lettuce Wraps"),
("Pork Buns");

#lookup_meat
insert into lookup_meat (meat) Values 
("Chef Special"),
("Pork"),
("Chicken"),
("Beef"),
("Seafood"),
("Vegatables");


#lookup_menu
insert into lookup_menu (menu) Values 
("Evening"),
("Lunch"),
("Sun Brunch Buffet"),
("Children's");


#lookup_size
insert into lookup_size (size) Values 
("L-Small"),
("L-Medium"),
("L-Large"),
("E-Small"),
("E-Medium"),
("E-Large"),
("K-Medium"),
("K-Large"),
("Volume");



#lookup_spice
insert into lookup_spice (spice) Values 
("Mild"),
("Tangy"),
("Piquant"),
("Hot"),
("Oh My God");



#lookup_volume
insert into lookup_volume (volume) values
("cup"),
("bowl"),
("pint"),
("quart"),
("gallon")
("defined size");


#Menu Item
insert into MenuItem (menuItemId, menuType, foodItemName, spiceLevel, size, price) values
#Chow Mein. NOw gotta do the same from each item 

#Chow Mein with Beef________________________
(1, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(2, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(3, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(4, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(5, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(6, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(7, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(8, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Chow Mein Chef Special
(121, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(122, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(123, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(124, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(125, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(126, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(127, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(128, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Chow Mein with Chicken
(9, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(10, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(11, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(12, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(13, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(14, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(15, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(16, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Chow Mein with Pork
(17, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(18, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(19, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(20, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(21, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(22, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(23, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(24, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Chow Mein with Seafood
(25, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(26, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(27, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(28, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(29, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(30, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(31, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(32, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Chow Mein with Vegatables
(33, "Children's", "Chow Mein", "Hot", "K-Medium", 10.00),
(34, "Children's", "Chow Mein", "Mild", "K-Medium", 10.00),
(35, "Children's", "Chow Mein", "Piquant", "K-Medium", 10.00),
(36, "Children's", "Chow Mein", "Tangy", "K-Medium", 10.00),

(37, "Children's", "Chow Mein", "Hot", "K-Large", 15.00),
(38, "Children's", "Chow Mein", "Mild", "K-Large", 15.00),
(39, "Children's", "Chow Mein", "Piquant", "K-Large", 15.00),
(40, "Children's", "Chow Mein", "Tangy", "K-Large", 15.00),

#Egg Foo Young with Beef____________________________
(41, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(42, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(43, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(44, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(45, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(46, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(47, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(48, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Egg Foo Young Chef Special
(129, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(130, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(131, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(132, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(133, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(134, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(135, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(136, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Egg Foo Young with Chicken
(49, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(50, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(51, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(52, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(53, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(54, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(55, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(56, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Egg Foo Young with Pork
(57, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(58, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(59, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(60, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(61, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(62, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(63, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(64, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Egg Foo Young with Seafood
(65, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(66, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(67, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(68, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(69, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(70, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(71, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(72, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Egg Foo Young with Vegatables
(73, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(74, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(75, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(76, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(77, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(78, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(79, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(80, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Chop Suey with Beef________________________
(81, "Children's", "Chop Suey", "Hot", "K-Medium", 10.00),
(82, "Children's", "Chop Suey", "Mild", "K-Medium", 10.00),
(83, "Children's", "Chop Suey", "Piquant", "K-Medium", 10.00),
(84, "Children's", "Chop Suey", "Tangy", "K-Medium", 10.00),

(85, "Children's", "Chop Suey", "Hot", "K-Large", 15.00),
(86, "Children's", "Chop Suey", "Mild", "K-Large", 15.00),
(87, "Children's", "Chop Suey", "Piquant", "K-Large", 15.00),
(88, "Children's", "Chop Suey", "Tangy", "K-Large", 15.00),

#Chop Suey Chef Special
(137, "Children's", "Egg Foo Young", "Hot", "K-Medium", 10.00),
(138, "Children's", "Egg Foo Young", "Mild", "K-Medium", 10.00),
(139, "Children's", "Egg Foo Young", "Piquant", "K-Medium", 10.00),
(140, "Children's", "Egg Foo Young", "Tangy", "K-Medium", 10.00),

(141, "Children's", "Egg Foo Young", "Hot", "K-Large", 15.00),
(142, "Children's", "Egg Foo Young", "Mild", "K-Large", 15.00),
(143, "Children's", "Egg Foo Young", "Piquant", "K-Large", 15.00),
(144, "Children's", "Egg Foo Young", "Tangy", "K-Large", 15.00),

#Chop Suey with Chicken
(89, "Children's", "Chop Suey", "Hot", "K-Medium", 10.00),
(90, "Children's", "Chop Suey", "Mild", "K-Medium", 10.00),
(91, "Children's", "Chop Suey", "Piquant", "K-Medium", 10.00),
(92, "Children's", "Chop Suey", "Tangy", "K-Medium", 10.00),

(93, "Children's", "Chop Suey", "Hot", "K-Large", 15.00),
(94, "Children's", "Chop Suey", "Mild", "K-Large", 15.00),
(95, "Children's", "Chop Suey", "Piquant", "K-Large", 15.00),
(96, "Children's", "Chop Suey", "Tangy", "K-Large", 15.00),

#Chop Suey with Pork
(97, "Children's", "Chop Suey", "Hot", "K-Medium", 10.00),
(98, "Children's", "Chop Suey", "Mild", "K-Medium", 10.00),
(99, "Children's", "Chop Suey", "Piquant", "K-Medium", 10.00),
(100, "Children's", "Chop Suey", "Tangy", "K-Medium", 10.00),

(101, "Children's", "Chop Suey", "Hot", "K-Large", 15.00),
(102, "Children's", "Chop Suey", "Mild", "K-Large", 15.00),
(103, "Children's", "Chop Suey", "Piquant", "K-Large", 15.00),
(104, "Children's", "Chop Suey", "Tangy", "K-Large", 15.00),

#Chop Suey with Seafood
(105, "Children's", "Chop Suey", "Hot", "K-Medium", 10.00),
(106, "Children's", "Chop Suey", "Mild", "K-Medium", 10.00),
(107, "Children's", "Chop Suey", "Piquant", "K-Medium", 10.00),
(108, "Children's", "Chop Suey", "Tangy", "K-Medium", 10.00),

(109, "Children's", "Chop Suey", "Hot", "K-Large", 15.00),
(110, "Children's", "Chop Suey", "Mild", "K-Large", 15.00),
(111, "Children's", "Chop Suey", "Piquant", "K-Large", 15.00),
(112, "Children's", "Chop Suey", "Tangy", "K-Large", 15.00),

#Chop Suey with Vegatables
(113, "Children's", "Chop Suey", "Hot", "K-Medium", 10.00),
(114, "Children's", "Chop Suey", "Mild", "K-Medium", 10.00),
(115, "Children's", "Chop Suey", "Piquant", "K-Medium", 10.00),
(116, "Children's", "Chop Suey", "Tangy", "K-Medium", 10.00),

(117, "Children's", "Chop Suey", "Hot", "K-Large", 15.00),
(118, "Children's", "Chop Suey", "Mild", "K-Large", 15.00),
(119, "Children's", "Chop Suey", "Piquant", "K-Large", 15.00),
(120, "Children's", "Chop Suey", "Tangy", "K-Large", 15.00),

#_______________________________________________________ now the evening menu of the meat entrees

#chow mein with beef 
(145, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(146, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(147, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(148, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(149, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(150, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(151, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(152, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(153, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(154, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(155, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(156, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(157, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(158, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(159, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),

#chow mein with beef chef special
(160, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(161, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(162, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(163, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(164, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(165, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(166, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(167, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(168, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(169, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(170, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(171, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(172, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(173, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(174, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),

#chow mein with beef chicken
(175, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(176, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(177, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(178, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(179, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(180, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(181, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(182, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(183, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(184, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(185, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(186, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(187, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(188, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(189, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),

#chow mein with beef pork
(190, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(191, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(192, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(193, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(194, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(195, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(196, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(197, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(198, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(199, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(200, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(201, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(202, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(203, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(204, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),

#chow mein with beef seafood
(205, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(206, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(207, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(208, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(209, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(210, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(211, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(212, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(213, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(214, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(215, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(216, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(217, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(218, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(219, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),

#chow mein with vegatables
(220, "Evening", "Chow Mein", "Hot", "E-Small", 10.00),
(221, "Evening", "Chow Mein", "Mild", "E-Small", 10.00),
(222, "Evening", "Chow Mein", "Piquant", "E-Small", 10.00),
(223, "Evening", "Chow Mein", "Tangy", "E-Small", 10.00),
(224, "Evening", "Chow Mein", "Oh My God", "E-Small", 10.00),

(225, "Evening", "Chow Mein", "Hot", "E-Medium", 15.00),
(226, "Evening", "Chow Mein", "Mild", "E-Medium", 15.00),
(227, "Evening", "Chow Mein", "Piquant", "E-Medium", 15.00),
(228, "Evening", "Chow Mein", "Tangy", "E-Medium", 15.00),
(229, "Evening", "Chow Mein", "Oh My God", "E-Medium", 15.00),

(230, "Evening", "Chow Mein", "Hot", "E-Large", 20.00),
(231, "Evening", "Chow Mein", "Mild", "E-Large", 20.00),
(232, "Evening", "Chow Mein", "Piquant", "E-Large", 20.00),
(233, "Evening", "Chow Mein", "Tangy", "E-Large", 20.00),
(234, "Evening", "Chow Mein", "Oh My God", "E-Large", 20.00),
#End chow mein the evening

#Egg Foo Young in the evening_________________________________________________________________________
#Egg Foo Young with beef 
#Egg Foo Young with beef 
(235, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(237, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(247, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(248, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(249, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(250, "Evening", "Egg Foo Young", "Hot", "E-Medium", 10.00),
(251, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(252, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(253, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(254, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(255, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(256, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(257, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(258, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(259, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#Egg Foo Young with beef chef special
(260, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(261, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(262, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(263, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(264, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(265, "Evening", "Egg Foo Young", "Hot", "E-Medium", 10.00),
(266, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(267, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(268, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(269, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(270, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(271, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(272, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(273, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(274, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#Egg Foo Young with beef chicken
(275, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(276, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(277, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(278, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(279, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(280, "Evening", "Egg Foo Young", "Hot", "E-Medium", 15.00),
(281, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(282, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(283, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(284, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(285, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(286, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(287, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(288, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(289, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#Egg Foo Young with beef pork
(290, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(291, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(292, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(293, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(294, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(295, "Evening", "Egg Foo Young", "Hot", "E-Medium", 15.00),
(296, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(297, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(298, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(299, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(300, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(301, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(302, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(303, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(304, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#Egg Foo Young with beef seafood
(305, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(306, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(307, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(308, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(309, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(310, "Evening", "Egg Foo Young", "Hot", "E-Medium", 15.00),
(311, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(312, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(313, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(314, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(315, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(316, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(317, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(318, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(319, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#Egg Foo Young with vegatables
(320, "Evening", "Egg Foo Young", "Hot", "E-Small", 10.00),
(321, "Evening", "Egg Foo Young", "Mild", "E-Small", 10.00),
(322, "Evening", "Egg Foo Young", "Piquant", "E-Small", 10.00),
(323, "Evening", "Egg Foo Young", "Tangy", "E-Small", 10.00),
(324, "Evening", "Egg Foo Young", "Oh My God", "E-Small", 10.00),

(325, "Evening", "Egg Foo Young", "Hot", "E-Medium", 15.00),
(326, "Evening", "Egg Foo Young", "Mild", "E-Medium", 15.00),
(327, "Evening", "Egg Foo Young", "Piquant", "E-Medium", 15.00),
(328, "Evening", "Egg Foo Young", "Tangy", "E-Medium", 15.00),
(329, "Evening", "Egg Foo Young", "Oh My God", "E-Medium", 15.00),

(330, "Evening", "Egg Foo Young", "Hot", "E-Large", 20.00),
(331, "Evening", "Egg Foo Young", "Mild", "E-Large", 20.00),
(332, "Evening", "Egg Foo Young", "Piquant", "E-Large", 20.00),
(333, "Evening", "Egg Foo Young", "Tangy", "E-Large", 20.00),
(334, "Evening", "Egg Foo Young", "Oh My God", "E-Large", 20.00),

#end egg foo young in the evening____________________________________________________

#Chop suey in the evening_________________________________________________________________________
#Chop Suey with beef 
#Chop Suey with beef 
(345, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(346, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(347, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(348, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(349, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(350, "Evening", "Chop Suey", "Hot", "E-Medium", 10.00),
(351, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(352, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(353, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(354, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(355, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(356, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(357, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(358, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(359, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),

#Chop Suey with beef chef special
(360, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(361, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(362, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(363, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(364, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(365, "Evening", "Chop Suey", "Hot", "E-Medium", 10.00),
(366, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(367, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(368, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(369, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(370, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(371, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(372, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(373, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(374, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),

#Chop Suey with beef chicken
(375, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(376, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(377, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(378, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(379, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(380, "Evening", "Chop Suey", "Hot", "E-Medium", 15.00),
(381, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(382, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(383, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(384, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(385, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(386, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(387, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(388, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(389, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),

#Chop Suey with beef pork
(390, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(391, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(392, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(393, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(394, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(395, "Evening", "Chop Suey", "Hot", "E-Medium", 15.00),
(396, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(397, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(398, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(399, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(400, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(401, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(402, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(403, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(404, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),

#Chop Suey with beef seafood
(405, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(406, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(407, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(408, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(409, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(410, "Evening", "Chop Suey", "Hot", "E-Medium", 15.00),
(411, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(412, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(413, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(414, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(415, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(416, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(417, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(418, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(419, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),

#Chop Suey with vegatables
(420, "Evening", "Chop Suey", "Hot", "E-Small", 10.00),
(421, "Evening", "Chop Suey", "Mild", "E-Small", 10.00),
(422, "Evening", "Chop Suey", "Piquant", "E-Small", 10.00),
(423, "Evening", "Chop Suey", "Tangy", "E-Small", 10.00),
(424, "Evening", "Chop Suey", "Oh My God", "E-Small", 10.00),

(425, "Evening", "Chop Suey", "Hot", "E-Medium", 15.00),
(426, "Evening", "Chop Suey", "Mild", "E-Medium", 15.00),
(427, "Evening", "Chop Suey", "Piquant", "E-Medium", 15.00),
(428, "Evening", "Chop Suey", "Tangy", "E-Medium", 15.00),
(429, "Evening", "Chop Suey", "Oh My God", "E-Medium", 15.00),

(430, "Evening", "Chop Suey", "Hot", "E-Large", 20.00),
(431, "Evening", "Chop Suey", "Mild", "E-Large", 20.00),
(432, "Evening", "Chop Suey", "Piquant", "E-Large", 20.00),
(433, "Evening", "Chop Suey", "Tangy", "E-Large", 20.00),
(434, "Evening", "Chop Suey", "Oh My God", "E-Large", 20.00),
#end chop suey in the evening_______________________________________________________________

#lets just do the lunch entree now 
(500, "Lunch", "Shrimp Balls", "Hot", "L-Small", 10.00),
(501, "Lunch", "Shrimp Balls", "Mild", "L-Small", 10),
(502, "Lunch", "Shrimp Balls", "Oh My God", "L-Small", 10),
(503, "Lunch", "Shrimp Balls", "Piquant", "L-Small", 10),
(504, "Lunch", "Shrimp Balls", "Tangy", "L-Small", 10),

(505, "Lunch", "Shrimp Balls", "Hot", "L-Medium", 15),
(506, "Lunch", "Shrimp Balls", "Mild", "L-Medium", 15),
(507, "Lunch", "Shrimp Balls", "Oh My God", "L-Medium", 15),
(508, "Lunch", "Shrimp Balls", "Piquant", "L-Medium", 15),
(509, "Lunch", "Shrimp Balls", "Tangy", "L-Medium", 15),

(510, "Lunch", "Shrimp Balls", "Hot", "L-Large", 20),
(511, "Lunch", "Shrimp Balls", "Mild", "L-Large", 20),
(512, "Lunch", "Shrimp Balls", "Oh My God", "L-Large", 20),
(513, "Lunch", "Shrimp Balls", "Piquant", "L-Large", 20),
(514, "Lunch", "Shrimp Balls", "Tangy", "L-Large", 20),


(515, "Lunch", "Dumplings", "Hot", "L-Small", 10),
(516, "Lunch", "Dumplings", "Mild", "L-Small", 10),
(517, "Lunch", "Dumplings", "Oh My God", "L-Small", 10),
(518, "Lunch", "Dumplings", "Piquant", "L-Small", 10),
(519, "Lunch", "Dumplings", "Tangy", "L-Small", 10),

(520, "Lunch", "Dumplings", "Hot", "L-Medium", 15),
(521, "Lunch", "Dumplings", "Mild", "L-Medium", 15),
(522, "Lunch", "Dumplings", "Oh My God", "L-Medium", 15),
(523, "Lunch", "Dumplings", "Piquant", "L-Medium", 15),
(524, "Lunch", "Dumplings", "Tangy", "L-Medium", 15),

(525, "Lunch", "Dumplings", "Hot", "L-Large", 20),
(526, "Lunch", "Dumplings", "Mild", "L-Large", 20),
(527, "Lunch", "Dumplings", "Oh My God", "L-Large", 20),
(528, "Lunch", "Dumplings", "Piquant", "L-Large", 20),
(529, "Lunch", "Dumplings", "Tangy", "L-Large", 20),


(530, "Lunch", "Egg Rolls", "Hot", "L-Small", 10),
(531, "Lunch", "Egg Rolls", "Mild", "L-Small", 10),
(532, "Lunch", "Egg Rolls", "Oh My God", "L-Small", 10),
(533, "Lunch", "Egg Rolls", "Piquant", "L-Small", 10),
(534, "Lunch", "Egg Rolls", "Tangy", "L-Small", 10),

(535, "Lunch", "Egg Rolls", "Hot", "L-Medium", 15),
(536, "Lunch", "Egg Rolls", "Mild", "L-Medium", 15),
(537, "Lunch", "Egg Rolls", "Oh My God", "L-Medium", 15),
(538, "Lunch", "Egg Rolls", "Piquant", "L-Medium", 15),
(539, "Lunch", "Egg Rolls", "Tangy", "L-Medium", 15),

(540, "Lunch", "Egg Rolls", "Hot", "L-Large", 20),
(541, "Lunch", "Egg Rolls", "Mild", "L-Large", 20),
(542, "Lunch", "Egg Rolls", "Oh My God", "L-Large", 20),
(543, "Lunch", "Egg Rolls", "Piquant", "L-Large", 20),
(544, "Lunch", "Egg Rolls", "Tangy", "L-Large", 20),




(545, "Lunch", "Crab Rangoon", "Hot", "L-Small", 10),
(546, "Lunch", "Crab Rangoon", "Mild", "L-Small", 10),
(547, "Lunch", "Crab Rangoon", "Oh My God", "L-Small", 10),
(548, "Lunch", "Crab Rangoon", "Piquant", "L-Small", 10),
(549, "Lunch", "Crab Rangoon", "Tangy", "L-Small", 10),

(550, "Lunch", "Crab Rangoon", "Hot", "L-Medium", 15),
(551, "Lunch", "Crab Rangoon", "Mild", "L-Medium", 15),
(552, "Lunch", "Crab Rangoon", "Oh My God", "L-Medium", 15),
(553, "Lunch", "Crab Rangoon", "Piquant", "L-Medium", 15),
(554, "Lunch", "Crab Rangoon", "Tangy", "L-Medium", 15),

(555, "Lunch", "Crab Rangoon", "Hot", "L-Large", 20),
(556, "Lunch", "Crab Rangoon", "Mild", "L-Large", 20),
(557, "Lunch", "Crab Rangoon", "Oh My God", "L-Large", 20),
(558, "Lunch", "Crab Rangoon", "Piquant", "L-Large", 20),
(559, "Lunch", "Crab Rangoon", "Tangy", "L-Large", 20),

(560, "Lunch", "Pork Buns", "Hot", "L-Small", 10),
(561, "Lunch", "Pork Buns", "Mild", "L-Small", 10),
(562, "Lunch", "Pork Buns", "Oh My God", "L-Small", 10),
(563, "Lunch", "Pork Buns", "Piquant", "L-Small", 10),
(564, "Lunch", "Pork Buns", "Tangy", "L-Small", 10),

(565, "Lunch", "Pork Buns", "Hot", "L-Medium", 15),
(566, "Lunch", "Pork Buns", "Mild", "L-Medium", 15),
(567, "Lunch", "Pork Buns", "Oh My God", "L-Medium", 15),
(568, "Lunch", "Pork Buns", "Piquant", "L-Medium", 15),
(569, "Lunch", "Pork Buns", "Tangy", "L-Medium", 15),

(570, "Lunch", "Pork Buns", "Hot", "L-Large", 20),
(571, "Lunch", "Pork Buns", "Mild", "L-Large", 20),
(572, "Lunch", "Pork Buns", "Oh My God", "L-Large", 20),
(573, "Lunch", "Pork Buns", "Piquant", "L-Large", 20),
(574, "Lunch", "Pork Buns", "Tangy", "L-Large", 20),


#Soups for lunch___________________________________________
(575, "Lunch", "Chicken Noddle Soup", "Hot","L-Small", 5),
(576, "Lunch", "Chicken Noddle Soup", "Hot","L-Medium", 10),
(577, "Lunch", "Chicken Noddle Soup", "Hot","L-Large", 15),
(578, "Lunch", "Chicken Noddle Soup", "Hot","Volume", 6),
(579, "Lunch", "Chicken Noddle Soup", "Hot","Volume", 12),
(580, "Lunch", "Chicken Noddle Soup", "Hot","Volume", 18),
(581, "Lunch", "Chicken Noddle Soup", "Hot","Volume", 24),
(582, "Lunch", "Chicken Noddle Soup", "Hot","Volume", 30),

(583, "Lunch", "Tofo Soup", "Hot","L-Small", 5),
(584, "Lunch", "Tofo Soup", "Hot","L-Medium", 10),
(585, "Lunch", "Tofo Soup", "Hot","L-Large", 15),
(586, "Lunch", "Tofo Soup", "Hot","Volume", 6),
(587, "Lunch", "Tofo Soup", "Hot","Volume", 12),
(588, "Lunch", "Tofo Soup", "Hot","Volume", 18),
(589, "Lunch", "Tofo Soup", "Hot","Volume", 24),
(590, "Lunch", "Tofo Soup", "Hot","Volume", 30),

(591, "Lunch", "Wonton Soup", "Hot","L-Small", 5),
(592, "Lunch", "Wonton Soup", "Hot","L-Medium", 10),
(593, "Lunch", "Wonton Soup", "Hot","L-Large", 15),
(594, "Lunch", "Wonton Soup", "Hot","Volume", 6),
(595, "Lunch", "Wonton Soup", "Hot","Volume", 12),
(596, "Lunch", "Wonton Soup", "Hot","Volume", 18),
(597, "Lunch", "Wonton Soup", "Hot","Volume", 24),
(598, "Lunch", "Wonton Soup", "Hot","Volume", 30),

(599, "Lunch", "Egg Drop Soup", "Hot","L-Small", 5),
(600, "Lunch", "Egg Drop Soup","Hot","L-Medium", 10),
(601, "Lunch", "Egg Drop Soup", "Hot","L-Large", 15),
(602, "Lunch", "Egg Drop Soup", "Hot","Volume", 6),
(603, "Lunch", "Egg Drop Soup", "Hot","Volume", 12),
(604, "Lunch", "Egg Drop Soup", "Hot","Volume", 18),
(605, "Lunch", "Egg Drop Soup", "Hot","Volume", 24),
(606, "Lunch", "Egg Drop Soup", "Hot","Volume", 30),

(607, "Lunch", "Cream of Mushroom Soup", "Hot", "L-Small", 5),
(608, "Lunch", "Cream of Mushroom Soup", "Hot", "L-Medium", 10),
(609, "Lunch", "Cream of Mushroom Soup", "Hot", "L-Large", 15),
(610, "Lunch", "Cream of Mushroom Soup", "Hot", "Volume", 6),
(611, "Lunch", "Cream of Mushroom Soup", "Hot", "Volume", 12),
(612, "Lunch", "Cream of Mushroom Soup", "Hot","Volume", 18),
(613, "Lunch", "Cream of Mushroom Soup", "Hot","Volume", 24),
(614, "Lunch", "Cream of Mushroom Soup", "Hot","Volume", 30),

(615, "Lunch", "Chicken Noddle Soup", "Mild","L-Small", 5),
(616, "Lunch", "Chicken Noddle Soup", "Mild","L-Medium", 10),
(617, "Lunch", "Chicken Noddle Soup", "Mild","L-Large", 15),
(618, "Lunch", "Chicken Noddle Soup", "Mild","Volume", 6),
(619, "Lunch", "Chicken Noddle Soup", "Mild","Volume", 12),
(620, "Lunch", "Chicken Noddle Soup", "Mild","Volume", 18),
(621, "Lunch", "Chicken Noddle Soup", "Mild","Volume", 24),
(622, "Lunch", "Chicken Noddle Soup", "Mild","Volume", 30),

(623, "Lunch", "Tofo Soup", "Mild","L-Small", 5),
(624, "Lunch", "Tofo Soup", "Mild","L-Medium", 10),
(625, "Lunch", "Tofo Soup", "Mild","L-Large", 15),
(626, "Lunch", "Tofo Soup", "Mild","Volume", 6),
(627, "Lunch", "Tofo Soup", "Mild","Volume", 12),
(628, "Lunch", "Tofo Soup", "Mild","Volume", 18),
(629, "Lunch", "Tofo Soup", "Mild","Volume", 24),
(630, "Lunch", "Tofo Soup", "Mild","Volume", 30),

(631, "Lunch", "Wonton Soup", "Mild","L-Small", 5),
(632, "Lunch", "Wonton Soup", "Mild","L-Medium", 10),
(633, "Lunch", "Wonton Soup", "Mild","L-Large", 15),
(634, "Lunch", "Wonton Soup", "Mild","Volume", 6),
(635, "Lunch", "Wonton Soup", "Mild","Volume", 12),
(636, "Lunch", "Wonton Soup", "Mild","Volume", 18),
(637, "Lunch", "Wonton Soup", "Mild","Volume", 24),
(638, "Lunch", "Wonton Soup", "Mild","Volume", 30),

(639, "Lunch", "Egg Drop Soup", "Mild","L-Small", 5),
(640, "Lunch", "Egg Drop Soup","Mild","L-Medium", 10),
(641, "Lunch", "Egg Drop Soup", "Mild","L-Large", 15),
(642, "Lunch", "Egg Drop Soup", "Mild","Volume", 6),
(643, "Lunch", "Egg Drop Soup", "Mild","Volume", 12),
(644, "Lunch", "Egg Drop Soup", "Mild","Volume", 18),
(645, "Lunch", "Egg Drop Soup", "Mild","Volume", 24),
(646, "Lunch", "Egg Drop Soup", "Mild","Volume", 30),

(647, "Lunch", "Cream of Mushroom Soup", "Mild", "L-Small", 5),
(648, "Lunch", "Cream of Mushroom Soup", "Mild", "L-Medium", 10),
(649, "Lunch", "Cream of Mushroom Soup", "Mild", "L-Large", 15),
(650, "Lunch", "Cream of Mushroom Soup", "Mild", "Volume", 6),
(651, "Lunch", "Cream of Mushroom Soup", "Mild", "Volume", 12),
(652, "Lunch", "Cream of Mushroom Soup", "Mild","Volume", 18),
(653, "Lunch", "Cream of Mushroom Soup", "Mild","Volume", 24),
(654, "Lunch", "Cream of Mushroom Soup", "Mild","Volume", 30),

(655, "Lunch", "Chicken Noddle Soup", "Tangy","L-Small", 5),
(656, "Lunch", "Chicken Noddle Soup", "Tangy","L-Medium", 10),
(657, "Lunch", "Chicken Noddle Soup", "Tangy","L-Large", 15),
(658, "Lunch", "Chicken Noddle Soup", "Tangy","Volume", 6),
(659, "Lunch", "Chicken Noddle Soup", "Tangy","Volume", 12),
(660, "Lunch", "Chicken Noddle Soup", "Tangy","Volume", 18),
(661, "Lunch", "Chicken Noddle Soup", "Tangy","Volume", 24),
(662, "Lunch", "Chicken Noddle Soup", "Tangy","Volume", 30),

(663, "Lunch", "Tofo Soup", "Tangy","L-Small", 5),
(664, "Lunch", "Tofo Soup", "Tangy","L-Medium", 10),
(665, "Lunch", "Tofo Soup", "Tangy","L-Large", 15),
(666, "Lunch", "Tofo Soup", "Tangy","Volume", 6),
(667, "Lunch", "Tofo Soup", "Tangy","Volume", 12),
(668, "Lunch", "Tofo Soup", "Tangy","Volume", 18),
(669, "Lunch", "Tofo Soup", "Tangy","Volume", 24),
(670, "Lunch", "Tofo Soup", "Tangy","Volume", 30),

(671, "Lunch", "Wonton Soup", "Tangy","L-Small", 5),
(672, "Lunch", "Wonton Soup", "Tangy","L-Medium", 10),
(673, "Lunch", "Wonton Soup", "Tangy","L-Large", 15),
(674, "Lunch", "Wonton Soup", "Tangy","Volume", 6),
(675, "Lunch", "Wonton Soup", "Tangy","Volume", 12),
(676, "Lunch", "Wonton Soup", "Tangy","Volume", 18),
(677, "Lunch", "Wonton Soup", "Tangy","Volume", 24),
(678, "Lunch", "Wonton Soup", "Tangy","Volume", 30),

(679, "Lunch", "Egg Drop Soup", "Tangy","L-Small", 5),
(680, "Lunch", "Egg Drop Soup","Tangy","L-Medium", 10),
(681, "Lunch", "Egg Drop Soup", "Tangy","L-Large", 15),
(682, "Lunch", "Egg Drop Soup", "Tangy","Volume", 6),
(683, "Lunch", "Egg Drop Soup", "Tangy","Volume", 12),
(684, "Lunch", "Egg Drop Soup", "Tangy","Volume", 18),
(685, "Lunch", "Egg Drop Soup", "Tangy","Volume", 24),
(686, "Lunch", "Egg Drop Soup", "Tangy","Volume", 30),

(687, "Lunch", "Cream of Mushroom Soup", "Tangy", "L-Small", 5),
(688, "Lunch", "Cream of Mushroom Soup", "Tangy", "L-Medium", 10),
(689, "Lunch", "Cream of Mushroom Soup", "Tangy", "L-Large", 15),
(690, "Lunch", "Cream of Mushroom Soup", "Tangy", "Volume", 6),
(691, "Lunch", "Cream of Mushroom Soup", "Tangy", "Volume", 12),
(692, "Lunch", "Cream of Mushroom Soup", "Tangy","Volume", 18),
(693, "Lunch", "Cream of Mushroom Soup", "Tangy","Volume", 24),
(694, "Lunch", "Cream of Mushroom Soup", "Tangy","Volume", 30),

(695, "Lunch", "Chicken Noddle Soup", "Piquant","L-Small", 5),
(696, "Lunch", "Chicken Noddle Soup", "Piquant","L-Medium", 10),
(697, "Lunch", "Chicken Noddle Soup", "Piquant","L-Large", 15),
(698, "Lunch", "Chicken Noddle Soup", "Piquant","Volume", 6),
(699, "Lunch", "Chicken Noddle Soup", "Piquant","Volume", 12),
(700, "Lunch", "Chicken Noddle Soup", "Piquant","Volume", 18),
(701, "Lunch", "Chicken Noddle Soup", "Piquant","Volume", 24),
(702, "Lunch", "Chicken Noddle Soup", "Piquant","Volume", 30),

(703, "Lunch", "Tofo Soup", "Piquant","L-Small", 5),
(704, "Lunch", "Tofo Soup", "Piquant","L-Medium", 10),
(705, "Lunch", "Tofo Soup", "Piquant","L-Large", 15),
(706, "Lunch", "Tofo Soup", "Piquant","Volume", 6),
(707, "Lunch", "Tofo Soup", "Piquant","Volume", 12),
(708, "Lunch", "Tofo Soup", "Piquant","Volume", 18),
(709, "Lunch", "Tofo Soup", "Piquant","Volume", 24),
(710, "Lunch", "Tofo Soup", "Piquant","Volume", 30),

(711, "Lunch", "Wonton Soup", "Piquant","L-Small", 5),
(712, "Lunch", "Wonton Soup", "Piquant","L-Medium", 10),
(713, "Lunch", "Wonton Soup", "Piquant","L-Large", 15),
(714, "Lunch", "Wonton Soup", "Piquant","Volume", 6),
(715, "Lunch", "Wonton Soup", "Piquant","Volume", 12),
(716, "Lunch", "Wonton Soup", "Piquant","Volume", 18),
(717, "Lunch", "Wonton Soup", "Piquant","Volume", 24),
(718, "Lunch", "Wonton Soup", "Piquant","Volume", 30),

(719, "Lunch", "Egg Drop Soup", "Piquant","L-Small", 5),
(720, "Lunch", "Egg Drop Soup","Piquant","L-Medium", 10),
(775, "Lunch", "Egg Drop Soup", "Piquant","L-Large", 15),
(721, "Lunch", "Egg Drop Soup", "Piquant","Volume", 6),
(722, "Lunch", "Egg Drop Soup", "Piquant","Volume", 12),
(723, "Lunch", "Egg Drop Soup", "Piquant","Volume", 18),
(724, "Lunch", "Egg Drop Soup", "Piquant","Volume", 24),
(725, "Lunch", "Egg Drop Soup", "Piquant","Volume", 30),

(726, "Lunch", "Cream of Mushroom Soup", "Piquant", "L-Small", 5),
(727, "Lunch", "Cream of Mushroom Soup", "Piquant", "L-Medium", 10),
(728, "Lunch", "Cream of Mushroom Soup", "Piquant", "L-Large", 15),
(729, "Lunch", "Cream of Mushroom Soup", "Piquant", "Volume", 6),
(730, "Lunch", "Cream of Mushroom Soup", "Piquant", "Volume", 12),
(731, "Lunch", "Cream of Mushroom Soup", "Piquant","Volume", 18),
(732, "Lunch", "Cream of Mushroom Soup", "Piquant","Volume", 24),
(733, "Lunch", "Cream of Mushroom Soup", "Piquant","Volume", 30),

(734, "Lunch", "Chicken Noddle Soup", "Oh My God","L-Small", 5),
(735, "Lunch", "Chicken Noddle Soup", "Oh My God","L-Medium", 10),
(736, "Lunch", "Chicken Noddle Soup", "Oh My God","L-Large", 15),
(737, "Lunch", "Chicken Noddle Soup", "Oh My God","Volume", 6),
(738, "Lunch", "Chicken Noddle Soup", "Oh My God","Volume", 12),
(739, "Lunch", "Chicken Noddle Soup", "Oh My God","Volume", 18),
(740, "Lunch", "Chicken Noddle Soup", "Oh My God","Volume", 24),
(741, "Lunch", "Chicken Noddle Soup", "Oh My God","Volume", 30),

(742, "Lunch", "Tofo Soup", "Oh My God","L-Small", 5),
(743, "Lunch", "Tofo Soup", "Oh My God","L-Medium", 10),
(744, "Lunch", "Tofo Soup", "Oh My God","L-Large", 15),
(745, "Lunch", "Tofo Soup", "Oh My God","Volume", 6),
(746, "Lunch", "Tofo Soup", "Oh My God","Volume", 12),
(747, "Lunch", "Tofo Soup", "Oh My God","Volume", 18),
(748, "Lunch", "Tofo Soup", "Oh My God","Volume", 24),
(749, "Lunch", "Tofo Soup", "Oh My God","Volume", 30),

(750, "Lunch", "Wonton Soup", "Oh My God","L-Small", 5),
(751, "Lunch", "Wonton Soup", "Oh My God","L-Medium", 10),
(752, "Lunch", "Wonton Soup", "Oh My God","L-Large", 15),
(753, "Lunch", "Wonton Soup", "Oh My God","Volume", 6),
(754, "Lunch", "Wonton Soup", "Oh My God","Volume", 12),
(755, "Lunch", "Wonton Soup", "Oh My God","Volume", 18),
(756, "Lunch", "Wonton Soup", "Oh My God","Volume", 24),
(757, "Lunch", "Wonton Soup", "Oh My God","Volume", 30),

(758, "Lunch", "Egg Drop Soup", "Oh My God","L-Small", 5),
(759, "Lunch", "Egg Drop Soup","Oh My God","L-Medium", 10),
(760, "Lunch", "Egg Drop Soup", "Oh My God","L-Large", 15),
(761, "Lunch", "Egg Drop Soup", "Oh My God","Volume", 6),
(762, "Lunch", "Egg Drop Soup", "Oh My God","Volume", 12),
(763, "Lunch", "Egg Drop Soup", "Oh My God","Volume", 18),
(764, "Lunch", "Egg Drop Soup", "Oh My God","Volume", 24),
(765, "Lunch", "Egg Drop Soup", "Oh My God","Volume", 30),

(767, "Lunch", "Cream of Mushroom Soup", "Oh My God", "L-Small", 5),
(768, "Lunch", "Cream of Mushroom Soup", "Oh My God", "L-Medium", 10),
(769, "Lunch", "Cream of Mushroom Soup", "Oh My God", "L-Large", 15),
(770, "Lunch", "Cream of Mushroom Soup", "Oh My God", "Volume", 6),
(771, "Lunch", "Cream of Mushroom Soup", "Oh My God", "Volume", 12),
(772, "Lunch", "Cream of Mushroom Soup", "Oh My God","Volume", 18),
(773, "Lunch", "Cream of Mushroom Soup", "Oh My God","Volume", 24),
(774, "Lunch", "Cream of Mushroom Soup", "Oh My God","Volume", 30),

(805, "Sun Brunch Buffet", "Shrimp Balls", "Hot", "all you can eat", 0),
(776, "Sun Brunch Buffet", "Shrimp Balls", "Mild", "all you can eat", 0),
(777, "Sun Brunch Buffet", "Shrimp Balls", "Oh My God", "all you can eat", 0),
(778, "Sun Brunch Buffet", "Shrimp Balls", "Piquant", "all you can eat", 0),
(779, "Sun Brunch Buffet", "Shrimp Balls", "Tangy", "all you can eat", 0),

(780, "Sun Brunch Buffet", "Dumplings", "Hot", "all you can eat", 0),
(781, "Sun Brunch Buffet", "Dumplings", "Mild", "all you can eat", 0),
(782, "Sun Brunch Buffet", "Dumplings", "Oh My God", "all you can eat", 0),
(783, "Sun Brunch Buffet", "Dumplings", "Piquant", "all you can eat", 0),
(784, "Sun Brunch Buffet", "Dumplings", "Tangy", "all you can eat", 0),

(785, "Sun Brunch Buffet", "Egg Rolls", "Hot", "all you can eat", 0),
(786, "Sun Brunch Buffet", "Egg Rolls", "Mild", "all you can eat", 0),
(787, "Sun Brunch Buffet", "Egg Rolls", "Oh My God", "all you can eat", 0),
(788, "Sun Brunch Buffet", "Egg Rolls", "Piquant", "all you can eat", 0),
(789, "Sun Brunch Buffet", "Egg Rolls", "Tangy", "all you can eat", 0),

(790, "Sun Brunch Buffet", "Crab Rangoon", "Hot", "all you can eat", 0),
(791, "Sun Brunch Buffet", "Crab Rangoon", "Mild", "all you can eat", 0),
(792, "Sun Brunch Buffet", "Crab Rangoon", "Oh My God", "all you can eat", 0),
(793, "Sun Brunch Buffet", "Crab Rangoon", "Piquant", "all you can eat", 0),
(794, "Sun Brunch Buffet", "Crab Rangoon", "Tangy", "all you can eat", 0),

(795, "Sun Brunch Buffet", "Lettuce Wraps", "Hot", "all you can eat", 0),
(796, "Sun Brunch Buffet", "Lettuce Wraps", "Mild", "all you can eat", 0),
(797, "Sun Brunch Buffet", "Lettuce Wraps", "Oh My God", "all you can eat", 0),
(798, "Sun Brunch Buffet", "Lettuce Wraps", "Piquant", "all you can eat", 0),
(799, "Sun Brunch Buffet", "Lettuce Wraps", "Tangy", "all you can eat", 0),

(800, "Sun Brunch Buffet", "Pork Buns", "Hot", "all you can eat", 0),
(801, "Sun Brunch Buffet", "Pork Buns", "Mild", "all you can eat", 0),
(802, "Sun Brunch Buffet", "Pork Buns", "Oh My God", "all you can eat", 0),
(803, "Sun Brunch Buffet", "Pork Buns", "Piquant", "all you can eat", 0),
(804, "Sun Brunch Buffet", "Pork Buns", "Tangy", "all you can eat", 0);






#Appetizer
insert into Appetizer (appetizerID) values
(500),
(501),
(502),
(503),
(504),
(505),
(506),
(507),
(508),
(509),
(510),
(511),
(512),
(513),
(514),
(515),
(516),
(517),
(518),
(519),
(520),
(521),
(522),
(523),
(524),
(525),
(526),
(527),
(528),
(529),
(530),
(531),
(532),
(533),
(534),
(535),
(536),
(537),
(538),
(539),
(540),
(541),
(542),
(543),
(544),
(545),
(546),
(547),
(548),
(549),
(550),
(551),
(552),
(553),
(554),
(555),
(556),
(557),
(558),
(559),
(560),
(561),
(562),
(563),
(564),
(565),
(566),
(567),
(568),
(569),
(570),
(571),
(572),
(573),
(574),
(767),
(768),
(769),
(770),
(771),
(772),
(773),
(774),
(775),
(776),
(777),
(778),
(779),
(780),
(781),
(782),
(783),
(784),
(785),
(786),
(787),
(788),
(789),
(790),
(791),
(792),
(793),
(794),
(795),
(796),
(797),
(798),
(799),
(800),
(801),
(802),
(803),
(804),
(805);

#Soup
insert into Soup (soupID, soupVolume) values
(575,"defined size"),
(576,"defined size"),
(577,"defined size"),
(578,"cup"),
(579,"bowl"),
(580,"pint"),
(581,"quart"),
(582,"gallon"),
(583,"defined size"),
(584,"defined size"),
(585,"defined size"),
(586,"cup"),
(587,"bowl"),
(588,"pint"),
(589,"quart"),
(590,"gallon"),
(591,"defined size"),
(592,"defined size"),
(593,"defined size"),
(594,"cup"),
(595,"bowl"),
(596,"pint"),
(597,"quart"),
(598,"gallon"),
(599,"defined size"),
(600,"defined size"),
(601,"defined size"),
(602,"cup"),
(603,"bowl"),
(604,"pint"),
(605,"quart"),
(606,"gallon"),
(607,"defined size"),
(608,"defined size"),
(609,"defined size"),
(610,"cup"),
(611,"bowl"),
(612,"pint"),
(613,"quart"),
(614,"gallon"),
(615,"defined size"),
(616,"defined size"),
(617,"defined size"),
(618,"cup"),
(619,"bowl"),
(620,"pint"),
(621,"quart"),
(622,"gallon"),
(623,"defined size"),
(624,"defined size"),
(625,"defined size"),
(626,"cup"),
(627,"bowl"),
(628,"pint"),
(629,"quart"),
(630,"gallon"),
(631,"defined size"),
(632,"defined size"),
(633,"defined size"),
(634,"cup"),
(635,"bowl"),
(636,"pint"),
(637,"quart"),
(638,"gallon"),
(639,"defined size"),
(640,"defined size"),
(641,"defined size"),
(642,"cup"),
(643,"bowl"),
(644,"pint"),
(645,"quart"),
(646,"gallon"),
(647,"defined size"),
(648,"defined size"),
(649,"defined size"),
(650,"cup"),
(651,"bowl"),
(652,"pint"),
(653,"quart"),
(654,"gallon"),
(655,"defined size"),
(656,"defined size"),
(657,"defined size"),
(658,"cup"),
(659,"bowl"),
(660,"pint"),
(661,"quart"),
(662,"gallon"),
(663,"defined size"),
(664,"defined size"),
(665,"defined size"),
(666,"cup"),
(667,"bowl"),
(668,"pint"),
(669,"quart"),
(670,"gallon"),
(671,"defined size"),
(672,"defined size"),
(673,"defined size"),
(674,"cup"),
(675,"bowl"),
(676,"pint"),
(677,"quart"),
(678,"gallon"),
(679,"defined size"),
(680,"defined size"),
(681,"defined size"),
(682,"cup"),
(683,"bowl"),
(684,"pint"),
(685,"quart"),
(686,"gallon"),
(687,"defined size"),
(688,"defined size"),
(689,"defined size"),
(690,"cup"),
(691,"bowl"),
(692,"pint"),
(693,"quart"),
(694,"gallon"),
(695,"defined size"),
(696,"defined size"),
(697,"defined size"),
(698,"cup"),
(699,"bowl"),
(700,"pint"),
(701,"quart"),
(702,"gallon"),
(703,"defined size"),
(704,"defined size"),
(705,"defined size"),
(706,"cup"),
(707,"bowl"),
(708,"pint"),
(709,"quart"),
(710,"gallon"),
(711,"defined size"),
(712,"defined size"),
(713,"defined size"),
(714,"cup"),
(715,"bowl"),
(716,"pint"),
(717,"quart"),
(718,"gallon"),
(719,"defined size"),
(720,"defined size"),
(775,"defined size"),
(721,"cup"),
(722,"bowl"),
(723,"pint"),
(724,"quart"),
(725,"gallon"),
(726,"defined size"),
(727,"defined size"),
(728,"defined size"),
(729,"cup"),
(730,"bowl"),
(731,"pint"),
(732,"quart"),
(733,"gallon"),
(734,"defined size"),
(735,"defined size"),
(736,"defined size"),
(737,"cup"),
(738,"bowl"),
(739,"pint"),
(740,"quart"),
(741,"gallon"),
(742,"defined size"),
(743,"defined size"),
(744,"defined size"),
(745,"cup"),
(746,"bowl"),
(747,"pint"),
(748,"quart"),
(749,"gallon"),
(750,"defined size"),
(751,"defined size"),
(752,"defined size"),
(753,"cup"),
(754,"bowl"),
(755,"pint"),
(756,"quart"),
(757,"gallon"),
(758,"defined size"),
(759,"defined size"),
(760,"defined size"),
(761,"cup"),
(762,"bowl"),
(763,"pint"),
(764,"quart"),
(765,"gallon"),
(767,"defined size"),
(768,"defined size"),
(769,"defined size"),
(770,"cup"),
(771,"bowl"),
(772,"pint"),
(773,"quart"),
(774,"gallon");

#Meat Entree
insert into MeatEntree (meatEntreeID, meatEntreeAddOn) values
(1, "Beef"),
(2, "Beef"),
(3, "Beef"),
(4, "Beef"),
(5, "Beef"),
(6, "Beef"),
(7, "Beef"),
(8, "Beef"),
(121, "Chef Special"),
(122, "Chef Special"),
(123, "Chef Special"),
(124, "Chef Special"),
(125, "Chef Special"),
(126, "Chef Special"),
(127, "Chef Special"),
(128, "Chef Special"),
(9, "Chicken"),
(10, "Chicken"),
(11, "Chicken"),
(12, "Chicken"),
(13, "Chicken"),
(14, "Chicken"),
(15, "Chicken"),
(16, "Chicken"),
(17, "Pork"),
(18, "Pork"),
(19, "Pork"),
(20, "Pork"),
(21, "Pork"),
(22, "Pork"),
(23, "Pork"),
(24, "Pork"),
(25, "Seafood"),
(26, "Seafood"),
(27, "Seafood"),
(28, "Seafood"),
(29, "Seafood"),
(30, "Seafood"),
(31, "Seafood"),
(32, "Seafood"),
(33, "Vegatables"),
(34, "Vegatables"),
(35, "Vegatables"),
(36, "Vegatables"),
(37, "Vegatables"),
(38, "Vegatables"),
(39, "Vegatables"),
(40, "Vegatables"),
(41, "Beef"),
(42, "Beef"),
(43, "Beef"),
(44, "Beef"),
(45, "Beef"),
(46, "Beef"),
(47, "Beef"),
(48, "Beef"),
(129, "Chef Special"),
(130, "Chef Special"),
(131, "Chef Special"),
(132, "Chef Special"),
(133, "Chef Special"),
(134, "Chef Special"),
(135, "Chef Special"),
(136, "Chef Special"),
(49, "Chicken"),
(50, "Chicken"),
(51, "Chicken"),
(52, "Chicken"),
(53, "Chicken"),
(54, "Chicken"),
(55, "Chicken"),
(56, "Chicken"),
(57, "Pork"),
(58, "Pork"),
(59, "Pork"),
(60, "Pork"),
(61, "Pork"),
(62, "Pork"),
(63, "Pork"),
(64, "Pork"),
(65, "Seafood"),
(66, "Seafood"),
(67, "Seafood"),
(68, "Seafood"),
(69, "Seafood"),
(70, "Seafood"),
(71, "Seafood"),
(72, "Seafood"),
(73, "Vegatables"),
(74, "Vegatables"),
(75, "Vegatables"),
(76, "Vegatables"),
(77, "Vegatables"),
(78, "Vegatables"),
(79, "Vegatables"),
(80, "Vegatables"),
(81, "Beef"),
(82, "Beef"),
(83, "Beef"),
(84, "Beef"),
(85, "Beef"),
(86, "Beef"),
(87, "Beef"),
(88, "Beef"),
(137, "Chef Special"),
(138, "Chef Special"),
(139, "Chef Special"),
(140, "Chef Special"),
(141, "Chef Special"),
(142, "Chef Special"),
(143, "Chef Special"),
(144, "Chef Special"),
(89, "Chicken"),
(90, "Chicken"),
(91, "Chicken"),
(92, "Chicken"),
(93, "Chicken"),
(94, "Chicken"),
(95, "Chicken"),
(96, "Chicken"),
(97, "Pork"),
(98, "Pork"),
(99, "Pork"),
(100, "Pork"),
(101, "Pork"),
(102, "Pork"),
(103, "Pork"),
(104, "Pork"),
(105, "Seafood"),
(106, "Seafood"),
(107, "Seafood"),
(108, "Seafood"),
(109, "Seafood"),
(110, "Seafood"),
(111, "Seafood"),
(112, "Seafood"),
(113, "Vegatables"),
(114, "Vegatables"),
(115, "Vegatables"),
(116, "Vegatables"),
(117, "Vegatables"),
(118, "Vegatables"),
(119, "Vegatables"),
(120, "Vegatables"),
(145, "Beef"),
(146, "Beef"),
(147, "Beef"),
(148, "Beef"),
(149, "Beef"),
(150, "Beef"),
(151, "Beef"),
(152, "Beef"),
(153, "Beef"),
(154, "Beef"),
(155, "Beef"),
(156, "Beef"),
(157, "Beef"),
(158, "Beef"),
(159, "Beef"),
(160, "Chef Special"),
(161, "Chef Special"),
(162, "Chef Special"),
(163, "Chef Special"),
(164, "Chef Special"),
(165, "Chef Special"),
(166, "Chef Special"),
(167, "Chef Special"),
(168, "Chef Special"),
(169, "Chef Special"),
(170, "Chef Special"),
(171, "Chef Special"),
(172, "Chef Special"),
(173, "Chef Special"),
(174, "Chef Special"),
(175, "Chicken"),
(176, "Chicken"),
(177, "Chicken"),
(178, "Chicken"),
(179, "Chicken"),
(180, "Chicken"),
(181, "Chicken"),
(182, "Chicken"),
(183, "Chicken"),
(184, "Chicken"),
(185, "Chicken"),
(186, "Chicken"),
(187, "Chicken"),
(188, "Chicken"),
(189, "Chicken"),
(190, "Pork"),
(191, "Pork"),
(192, "Pork"),
(193, "Pork"),
(194, "Pork"),
(195, "Pork"),
(196, "Pork"),
(197, "Pork"),
(198, "Pork"),
(199, "Pork"),
(200, "Pork"),
(201, "Pork"),
(202, "Pork"),
(203, "Pork"),
(204, "Pork"),
(205, "Seafood"),
(206, "Seafood"),
(207, "Seafood"),
(208, "Seafood"),
(209, "Seafood"),
(210, "Seafood"),
(211, "Seafood"),
(212, "Seafood"),
(213, "Seafood"),
(214, "Seafood"),
(215, "Seafood"),
(216, "Seafood"),
(217, "Seafood"),
(218, "Seafood"),
(219, "Seafood"),
(220, "Vegatables"),
(221, "Vegatables"),
(222, "Vegatables"),
(223, "Vegatables"),
(224, "Vegatables"),
(225, "Vegatables"),
(226, "Vegatables"),
(227, "Vegatables"),
(228, "Vegatables"),
(229, "Vegatables"),
(230, "Vegatables"),
(231, "Vegatables"),
(232, "Vegatables"),
(233, "Vegatables"),
(234, "Vegatables"),
(235, "Beef"),
(237, "Beef"),
(247, "Beef"),
(248, "Beef"),
(249, "Beef"),
(250, "Beef"),
(251, "Beef"),
(252, "Beef"),
(253, "Beef"),
(254, "Beef"),
(255, "Beef"),
(256, "Beef"),
(257, "Beef"),
(258, "Beef"),
(259, "Beef"),
(260, "Chef Special"),
(261, "Chef Special"),
(262, "Chef Special"),
(263, "Chef Special"),
(264, "Chef Special"),
(265, "Chef Special"),
(266, "Chef Special"),
(267, "Chef Special"),
(268, "Chef Special"),
(269, "Chef Special"),
(270, "Chef Special"),
(271, "Chef Special"),
(272, "Chef Special"),
(273, "Chef Special"),
(274, "Chef Special"),
(275, "Chicken"),
(276, "Chicken"),
(277, "Chicken"),
(278, "Chicken"),
(279, "Chicken"),
(280, "Chicken"),
(281, "Chicken"),
(282, "Chicken"),
(283, "Chicken"),
(284, "Chicken"),
(285, "Chicken"),
(286, "Chicken"),
(287, "Chicken"),
(288, "Chicken"),
(289, "Chicken"),
(290, "Pork"),
(291, "Pork"),
(292, "Pork"),
(293, "Pork"),
(294, "Pork"),
(295, "Pork"),
(296, "Pork"),
(297, "Pork"),
(298, "Pork"),
(299, "Pork"),
(300, "Pork"),
(301, "Pork"),
(302, "Pork"),
(303, "Pork"),
(304, "Pork"),
(305, "Seafood"),
(306, "Seafood"),
(307, "Seafood"),
(308, "Seafood"),
(309, "Seafood"),
(310, "Seafood"),
(311, "Seafood"),
(312, "Seafood"),
(313, "Seafood"),
(314, "Seafood"),
(315, "Seafood"),
(316, "Seafood"),
(317, "Seafood"),
(318, "Seafood"),
(319, "Seafood"),
(320, "Vegatables"),
(321, "Vegatables"),
(322, "Vegatables"),
(323, "Vegatables"),
(324, "Vegatables"),
(325, "Vegatables"),
(326, "Vegatables"),
(327, "Vegatables"),
(328, "Vegatables"),
(329, "Vegatables"),
(330, "Vegatables"),
(331, "Vegatables"),
(332, "Vegatables"),
(333, "Vegatables"),
(334, "Vegatables"),
(345, "Beef"),
(346, "Beef"),
(347, "Beef"),
(348, "Beef"),
(349, "Beef"),
(350, "Beef"),
(351, "Beef"),
(352, "Beef"),
(353, "Beef"),
(354, "Beef"),
(355, "Beef"),
(356, "Beef"),
(357, "Beef"),
(358, "Beef"),
(359, "Beef"),
(360, "Chef Special"),
(361, "Chef Special"),
(362, "Chef Special"),
(363, "Chef Special"),
(364, "Chef Special"),
(365, "Chef Special"),
(366, "Chef Special"),
(367, "Chef Special"),
(368, "Chef Special"),
(369, "Chef Special"),
(370, "Chef Special"),
(371, "Chef Special"),
(372, "Chef Special"),
(373, "Chef Special"),
(374, "Chef Special"),
(375, "Chicken"),
(376, "Chicken"),
(377, "Chicken"),
(378, "Chicken"),
(379, "Chicken"),
(380, "Chicken"),
(381, "Chicken"),
(382, "Chicken"),
(383, "Chicken"),
(384, "Chicken"),
(385, "Chicken"),
(386, "Chicken"),
(387, "Chicken"),
(388, "Chicken"),
(389, "Chicken"),
(390, "Pork"),
(391, "Pork"),
(392, "Pork"),
(393, "Pork"),
(394, "Pork"),
(395, "Pork"),
(396, "Pork"),
(397, "Pork"),
(398, "Pork"),
(399, "Pork"),
(400, "Pork"),
(401, "Pork"),
(402, "Pork"),
(403, "Pork"),
(404, "Pork"),
(405, "Seafood"),
(406, "Seafood"),
(407, "Seafood"),
(408, "Seafood"),
(409, "Seafood"),
(410, "Seafood"),
(411, "Seafood"),
(412, "Seafood"),
(413, "Seafood"),
(414, "Seafood"),
(415, "Seafood"),
(416, "Seafood"),
(417, "Seafood"),
(418, "Seafood"),
(419, "Seafood"),
(420, "Vegatables"),
(421, "Vegatables"),
(422, "Vegatables"),
(423, "Vegatables"),
(424, "Vegatables"),
(425, "Vegatables"),
(426, "Vegatables"),
(427, "Vegatables"),
(428, "Vegatables"),
(429, "Vegatables"),
(430, "Vegatables"),
(431, "Vegatables"),
(432, "Vegatables"),
(433, "Vegatables"),
(434, "Vegatables");

#Orders __________________________________________________________________________________________-
#lookup_payment
insert into lookup_payment (payment) Values 
("Cash"),
("Debit Card"),
("Credit Card");

#Cheque
insert into Cheque (chequeID, custID, payment, chequeDate, mimingMoneyUsed) Values 
#Initial cheques for the 25 customers that we have 
#1 - 5 Web orders
#6 - 15 To go Orders
#6 - 10 Phone Orders
#11 - 15 In Person Order
#16 - 25 Dine In Orders

#1 - 10 Private Customers
#11 - 19 Corp Representatives
#20 - 25 Anonymous Customers

#Do all in cash so it's easier 
(1, 1, "Cash", "2019-12-02",0),
(2, 2, "Cash", "2019-12-03",0),
(3, 3, "Cash", "2019-12-02",0),
(4, 4, "Cash", "2019-12-03",0),
(5, 5, "Cash", "2019-12-02",0),
(6, 6, "Credit Card", "2019-12-03",0),
(7, 7, "Credit Card", "2019-12-02",0),
(8, 8, "Credit Card", "2019-12-03",0),
(9, 9, "Credit Card", "2019-12-02",0),
(10, 10, "Credit Card", "2019-12-01",0),
(11, 11, "Credit Card", "2019-12-02",0),
(12, 12, "Credit Card", "2019-12-01",0),
(13, 13, "Credit Card", "2019-12-02",0),
(14, 14, "Credit Card", "2019-12-01",0),
(15, 15, "Credit Card", "2019-12-02",0),
(16, 16, "Cash", "2019-12-01",0),
(17, 17, "Cash", "2019-12-02",0),
(18, 18, "Cash", "2019-12-01",0),
(19, 19, "Cash", "2019-12-02",0),
(20, 20, "Cash", "2019-03-21",0),
(21, 21, "Cash", "2019-12-02",0),
(22, 22, "Cash", "2019-12-07",0),
(23, 23, "Cash", "2019-12-02",0),
(24, 24, "Cash", "2019-12-07",0),
(25, 25, "Cash", "2019-12-02",0);



#Orders
insert into Orders (orderID, chequeID) values
#1 - 5 Cheque ID Web Orders
#6 -15 To Go Orders 
 #6 - 10 Phone Orders
 #11 - 15 In Person Orders
#16 - 25 Dine in Order
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25);

#Orderline
insert into OrderLine (orderID, menuItemID, quantity) values
(1, 2, 1),
(1, 122, 1),
(2, 187, 1),
(2, 194, 1),
(2, 362, 1),
(3, 518, 1),
(3, 512, 2),
(4, 635, 1),
(5, 638, 1),
(6, 325, 3),
(6, 312, 1),
(6, 309, 1),
(7, 49, 1),
(7, 50, 2),
(7, 51, 5),
(7, 52, 2),
(8, 325, 3),
(8, 312, 8),
(8, 309, 3),
(8, 235, 1),
(8, 284, 3),
(8, 280, 1),
(9, 726, 1),
(10, 674, 1),
(11, 613, 1),
(11, 614, 1),
(12, 525, 3),
(13, 400, 1),
(14, 305, 2),
(15, 234, 2),
#Panicccccccccc
(16, 56, 1),
(16, 55, 1),
(17, 505, 1),
(18, 506, 1),
(19, 507, 1),
(20, 670, 1),
(21, 653, 2),
(22, 525, 1),
(22, 526, 1),
(22, 527, 1),
(23, 349, 1),
(24, 359, 1),
(25, 360, 3);

#Web Order
insert into WebOrder (orderID) values
(1),
(2),
(3),
(4),
(5);

#To Go Order
insert into ToGoOrder (orderID, orderTime) values
#6 - 15 To go Orders
#6 - 10 Phone Orders
#11 - 15 In Person Order
(6, "10:15"),
(7, "10:25"),
(8, "11:40"),
(9, "12:00"),
(10, "13:20"),
(11, "13:50"),
(12, "14:20"),
(13, "15:45"),
(14, "17:35"),
(15, "18:35");



#In Person Order
insert into InPersonOrder (orderID) values
(11),
(12),
(13),
(14),
(15);

#Phone Order
insert into PhoneOrder (orderID, phoneNumber) values
(6, 7142340234),
(7, 6052942394),
(8, 5629360293),
(9, 5624601942),
(10, 7146072395);

#Dine In Order
insert into DineInOrder (orderID, seatNumber, tableNumber, sectionNumber) values
(16, 1, 3, 2),
(17, 2, 2, 3),
(18, 3, 5, 4),
(19, 4, 4, 5),
(20, 5, 1, 1),
(21, 1, 3, 2),
(22, 2, 4, 4),
(23, 3, 2, 2),
(24, 4, 3, 3),
(25, 5, 1, 4);

#Employee Side and stuff
--EMPLOYEE INSERT
insert into Employee (EID, payrate, rolename) Values 
(26, 15.0,'Waiter'),
(27, 15.0,'Waiter'),
(28, 300.0,'Head Chef'),
(29, 300.0,'Head Chef'),
(30, 300.0,'Head Chef'),
(31, 300.0,'Head Chef'),
(32, 300.0,'Head Chef'),
(33, 15.0,'Waiter'),
(34, 15.0,'Waiter'),
(35, 250.0,'Manager'),
(36, 250.0,'Manager'),
(37, 250.0,'Manager'),
(38, 15.0,'Waiter'),
(39, 200,'Sous Chef'),
(40, 200,'Sous Chef'),
(41, 200,'Sous Chef'),
(42, 15.0,'Waiter'),
(43, 150.0,'Line cook'),
(44, 150.0,'Line cook'),
(45, 150.0,'Line cook'),
(46, '15','MaitreD'),
(47, '15','MaitreD'),
(48, '15','MaitreD'),
(49, 10.0,'Dish Washer'),
(50, 10.0,'Dish Washer');


--FULL TIME EMPLOYEES
insert into fulltimeemployee (EID)
Values 
(28),
(29),
(30),
(31),
(32),
(35),
(36),
(37),
(39),
(40),
(41),
(43),
(44),
(45);


--PART TIME EMPLOYEES
insert into PARTTIMEEMPLOYEE (EID)
Values 
(26),
(27),
(33),
(34),
(38),
(42),
(46),
(47),
(48),
(49),
(50);

--RECIPES
insert into Recipe (recipeName,CHEFID) Values 
--meat entree
('Chow Mein',28),
('Egg Foo Young',28),
('Chop Suey',28),
--Soups
('Chicken Noddle Soup',29),
('Tofo Soup',29),
('Wonton Soup',30),
('Egg drop Soup',30),
('Cream of Mushroom Soup',30),
--appetizers
('Shrimp Balls',31),
('Dumplings',31),
('Egg Rolls',32),
('Crab Rangoon',32),
('Lettuce Wraps',32),
('Pork Buns',32);

insert into Cook(eID)
values
(28),
(29),
(30),
(31),
(32),
(39),
(40),
(41),
(43),
(44),
(45);

--HEAD CHEF
insert into HeadChef(eID)
values
(28),
(29),
(30),
(31),
(32);







--LINE COOK

insert into linecook (EID,station) Values 
(43,'Stir Fry'),
(44,'Mixing'),
(45,'Boiling');

--MANAGERS
insert into manager (EID) Values 
(35),
(36),
(37);

--section
insert into section(EID,sectionnumber)
values
(26,1),
(27,2),
(33,3),
(34,4),
(42,5);


--tables
insert into restauranttable(tablenumber,sectionnumber)
values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1);
(1,2),
(2,2),
(3,2),
(4,2),
(5,2);
(1,3),
(2,3),
(3,3),
(4,3),
(5,3);
(1,4),
(2,4),
(3,4),
(4,4),
(5,4);
(1,5),
(2,5),
(3,5),
(4,5),
(5,5);

--seats
insert into seat(seatunmber,tablenumber,sectionnumber)
values
--SECTION1
(1,1,1),(1,1,2),(1,1,3),(1,1,4),(1,1,5),
(1,2,1),(1,2,2),(1,2,3),(1,2,4),(1,2,5),
(1,3,1),(1,3,2),(1,3,3),(1,3,4),(1,3,5),
(1,4,1),(1,4,2),(1,4,3),(1,4,4),(1,4,5),
(1,5,1),(1,5,2),(1,5,3),(1,5,4),(1,5,5),
--SECTION2
(2,1,1),(2,1,2),(2,1,3),(2,1,4),(2,1,5),
(2,2,1),(2,2,2),(2,2,3),(2,2,4),(2,2,5),
(2,3,1),(2,3,2),(2,3,3),(2,3,4),(2,3,5),
(2,4,1),(2,4,2),(2,4,3),(2,4,4),(2,4,5),
(2,5,1),(2,5,2),(2,5,3),(2,5,4),(2,5,5),
--SECTION3
(3,1,1),(3,1,2),(3,1,3),(3,1,4),(3,1,5),
(3,2,1),(3,2,2),(3,2,3),(3,2,4),(3,2,5),
(3,3,1),(3,3,2),(3,3,3),(3,3,4),(3,3,5),
(3,4,1),(3,4,2),(3,4,3),(3,4,4),(3,4,5),
(3,5,1),(3,5,2),(3,5,3),(3,5,4),(3,5,5),
--SECTION4
(4,1,1),(4,1,2),(4,1,3),(4,1,4),(4,1,5),
(4,2,1),(4,2,2),(4,2,3),(4,2,4),(4,2,5),
(4,3,1),(4,3,2),(4,3,3),(4,3,4),(4,3,5),
(4,4,1),(4,4,2),(4,4,3),(4,4,4),(4,4,5),
(4,5,1),(4,5,2),(4,5,3),(4,5,4),(4,5,5),
--SECTION5
(5,1,1),(5,1,2),(5,1,3),(5,1,4),(5,1,5),
(5,2,1),(5,2,2),(5,2,3),(5,2,4),(5,2,5),
(5,3,1),(5,3,2),(5,3,3),(5,3,4),(5,3,5),
(5,4,1),(5,4,2),(5,4,3),(5,4,4),(5,4,5),
(5,5,1),(5,5,2),(5,5,3),(5,5,4),(5,5,5);

--WAITERS
insert into waiters(EID)
values
(26),
(27),
(33),
(34),
(42);

--Sous chefs
insert into SOUSCHEF(EID)
values
(39),
(40),
(41);

--shift
insert into shift(workdate, shifttype, chefid,managerid)
values
('2019-12-02','am',28,35),
('2019-12-03','pm',29,36),
('2019-12-01','am',30,37),
('2019-12-07','pm',31,35);

--sectionshift
insert into sectionshift(workdate,shifttype,sectionnumber,waiterid)
values
('2019-12-02','am',1,26),
('2019-12-03','pm',2,27),
('2019-12-01','am',3,33),
('2019-12-01','pm',4,34);

--workschedule
insert into workschedule(EID,workdate,shifttype)
values
(26,'2019-12-02','am'),
(27,'2019-12-03','pm'),
(33,'2019-12-01','am'),
(34,'2019-12-01','pm');

insert into lookup_role(roleNAME)
values
('Waiter'),
('Head Chef'),
('Manager'),
('Sous Chef'),
('Line Cook'),
('MaitreD'),
('Dish Washer');

insert into RecipeIngredient(RecipeName, ingredient)
values
('Dumplings','Dough'),
('Egg Foo Young','Eggs'),
('Pork buns','Raw Pork');


--Expertise
insert into Expertise(eID, recipeName)
values
(39, 'Chow Mein'),
(40, 'Egg Foo Young'),
(41, 'Egg Rolls'),
(39, 'Egg drop soup').
(39, 'Cream of Mushroom Soup'),
(40, 'Dumplings'),
(39, 'Pork buns');

insert into Expertise(eID, recipeName)
values
(39, 'Crab Rangoon'),
(39, 'Tofo Soup'),
(39, 'Wonton Soup'),
(40, 'Crab Rangoon'),
(40, 'Tofo Soup'),
(40, 'Wonton Soup');


--Mentorship
insert into Mentorship(recipeName, mentorID, menteeID, startDate,)
values
('Pork Buns', 39, 41, '2019-11-01'),
('Egg Foo Young', 40, 39, '2019-11-02'),
('Egg Rolls', 41, 40, '2019-11-03');







