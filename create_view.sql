/* View DDL */
/*MenuItem_v – For each menu item, give it’s spiciness, and all of the different costs for
that item. If a given item is not on a particular menu, then report “N/A” for that particular
item for that particular menu. Also, if an item only appears as a single serving portion,
put in “N/A” into the report for the gallon, … prices.*/
/*CREATE VIEW MenuItem_v AS*/
SELECT menuType AS Menu, foodItemName AS Item, spiceLevel AS Spiciness, price AS Price
FROM MenuItem;

/*Customer_addresses_v – for each customer, indicate whether they are an individual or a
corporate account, and display all of the information that we are managing for that
customer.*/
SELECT * FROM Customer_address_v;

CREATE VIEW Customer_address_v AS
SELECT 'Individual' AS 'Account', custID AS 'Customer ID', fName AS 'First Name', lName AS 'Last Name', snailMailAddress AS 'Snail Mail', emailAddress AS 'E-Mail', 'N/A' AS 'Department', 'N/A' AS 'Corporation ID'
FROM PrivateCustomer
INNER JOIN PublicCustomer
USING (custID)
INNER JOIN Person
ON PublicCustomer.custID = Person.ID
UNION
SELECT corpName AS 'Account', custID AS 'Customer ID', fName AS 'First Name', lName AS 'Last Name', snailMailAddress AS 'Snail Mail', emailAddress AS 'E-Mail', department AS 'Department', corpID AS 'Corporation ID'
FROM Corporation
INNER JOIN CorporateRepresentative
USING (corpID)
INNER JOIN Person
ON CorporateRepresentative.custID = Person.ID
UNION
SELECT 'Anonymous' AS 'Account', custID AS 'Customer ID', 'N/A' AS 'First Name', 'N/A' AS 'Last Name', 'N/A' AS 'Snail Mail', 'N/A' AS 'E-Mail', 'N/A' AS 'Department', 'N/A' AS 'Corporation ID'
FROM AnonymousCustomer
INNER JOIN Customer
USING (custID);

/*Sous_mentor_v – reports all the mentor/mentee relationships at Miming’s, sorted by the
name of the mentor, then the name of the mentee. Show the skill that the mentorship
passes, as well as the start date.*/
CREATE VIEW Sous_mentor_v AS
SELECT p1.fName AS 'Mentor First Name', p1.lName AS 'Mentor Last Name', p2.fName AS 'Mentee First Name', p2.lName AS 'Mentee Last Name', Mentorship.recipeName AS 'Skill', startDate AS 'Start Date'
FROM Mentorship
INNER JOIN Person p1
ON p1.ID = Mentorship.mentorID
INNER JOIN Person p2
ON Mentorship.menteeID = p2.ID
ORDER BY p1.fname, p1.lname, p2.fname, p2.lname;

/*Customer_Sales_v – On a year by year basis, show how much each customer has spent at
Miming’s.*/
/*, SUM(price) AS 'Total Spent in Year'*/
/*CREATE VIEW Customer_Sales_v AS*/
SELECT YEAR(chequeDate) AS 'Year', fName AS 'First Name', lName AS 'Last Name'
FROM Cheque
INNER JOIN Person
On Cheque.custID = Person.ID
INNER JOIN Orders
USING (chequeID)
INNER JOIN OrderLine
USING (orderID)
INNER JOIN MenuItem
USING (menuItemID)
-- GROUP BY 'Year', 'First Name', 'Last Name'
ORDER BY 'Year';

SELECT YEAR(chequeDate) AS 'Year', fName AS 'First Name', lName AS 'Last Name', price AS 'Spent'
FROM MenuItem
INNER JOIN OrderLine
USING (menuItemID)
INNER JOIN Orders
USING (orderID)
INNER JOIN Cheque
USING (chequeID)
INNER JOIN Person
On Cheque.custID = Person.ID;
-- GROUP BY 'Year', 'First Name', 'Last Name'
ORDER BY 'Year';

SELECT * FROM OrderLine;
SELECT * FROM MenuItem;

SELECT YEAR(chequeDate) AS 'Year', price AS 'Spent'
FROM MenuItem
INNER JOIN OrderLine
USING (menuItemID)
INNER JOIN Orders
USING (orderID)
INNER JOIN Cheque
USING (chequeID);

/*Customer_Value_v – List each customer and the total $ amount of their orders for the
past year, in order of the value of customer orders, from highest to the lowest.*/
/*, SUM(price) AS 'Total Spent in Year'*/
SELECT fName AS 'First Name', lName AS 'Last Name'
FROM Cheque
INNER JOIN Person
On Cheque.custID = Person.ID
INNER JOIN Orders
USING (chequeID)
INNER JOIN OrderLine
USING (orderID)
INNER JOIN MenuItem
USING (menuItemID);
WHERE chequeDate >= now() - INTERVAL 1 YEAR;
/*GROUP BY 'First Name', 'Last Name'
ORDER BY 'Year';*/





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
insert into FullTimeEmployee (EID)
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
insert into PartTimeEmployee (EID)
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

ALTER TABLE Recipe
ADD COLUMN chefID int NOT NULL;

ALTER TABLE Recipe
ADD CONSTRAINT recipe_fk_1 FOREIGN KEY (chefID) REFERENCES HeadChef (eID);

ALTER TABLE HeadChef
DROP FOREIGN KEY hcook_fk_2;

ALTER TABLE HeadChef
DROP COLUMN recipeName;

SET FOREIGN_KEY_CHECKS = 0;
SET FOREIGN_KEY_CHECKS = 1;

DELETE FROM Recipe
WHERE recipeName IS NOT NULL;

--RECIPES
insert into Recipe (recipeName,chefID) Values 

('Chow Mein',28),
('Egg Foo Young',28),
('Chop Suey',28),

('Chicken Noddle Soup',29),
('Tofo Soup',29),
('Wonton Soup',30),
('Egg drop Soup',30),
('Cream of Mushroom Soup',30),

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


--LINE COOK /*DO THIS*/

insert into LineCook (eID,station) Values 
(43,'Stir Fry'),
(44,'Mixing'),
(45,'Boiling');

--MANAGERS
insert into Manager (eID) Values 
(35),
(36),
(37);

--section /*DO THIS*/
insert into Section(eID,sectionnumber)
values
(26,1),
(27,2),
(33,3),
(34,4),
(42,5);

DELETE FROM ResturantTable
WHERE tablenumber IS NOT NULL;

--tables
insert into ResturantTable(tablenumber,sectionnumber)
values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(1,2),
(2,2),
(3,2),
(4,2),
(5,2),
(1,3),
(2,3),
(3,3),
(4,3),
(5,3),
(1,4),
(2,4),
(3,4),
(4,4),
(5,4),
(1,5),
(2,5),
(3,5),
(4,5),
(5,5);

DELETE FROM Seat
WHERE seatnumber IS NOT NULL;

ALTER TABLE Seat
DROP PRIMARY KEY;

SELECT * FROM DineInOrder;

--seats
insert into Seat(seatNumber,tableNumber,sectionNumber)
values
(1,1,1),
(1,1,2),
(1,1,3),
(1,1,4),
(1,1,5),
(1,2,1),
(1,2,2),
(1,2,3),
(1,2,4),
(1,2,5),
(1,3,1),
(1,3,2),(1,3,3),(1,3,4),(1,3,5),
(1,4,1),(1,4,2),(1,4,3),(1,4,4),(1,4,5),
(1,5,1),(1,5,2),(1,5,3),(1,5,4),(1,5,5),
(2,1,1),(2,1,2),(2,1,3),(2,1,4),(2,1,5),
(2,2,1),(2,2,2),(2,2,3),(2,2,4),(2,2,5),
(2,3,1),(2,3,2),(2,3,3),(2,3,4),(2,3,5),
(2,4,1),(2,4,2),(2,4,3),(2,4,4),(2,4,5),
(2,5,1),(2,5,2),(2,5,3),(2,5,4),(2,5,5),

(3,1,1),(3,1,2),(3,1,3),(3,1,4),(3,1,5),
(3,2,1),(3,2,2),(3,2,3),(3,2,4),(3,2,5),
(3,3,1),(3,3,2),(3,3,3),(3,3,4),(3,3,5),
(3,4,1),(3,4,2),(3,4,3),(3,4,4),(3,4,5),
(3,5,1),(3,5,2),(3,5,3),(3,5,4),(3,5,5),

(4,1,1),(4,1,2),(4,1,3),(4,1,4),(4,1,5),
(4,2,1),(4,2,2),(4,2,3),(4,2,4),(4,2,5),
(4,3,1),(4,3,2),(4,3,3),(4,3,4),(4,3,5),
(4,4,1),(4,4,2),(4,4,3),(4,4,4),(4,4,5),
(4,5,1),(4,5,2),(4,5,3),(4,5,4),(4,5,5),

(5,1,1),(5,1,2),(5,1,3),(5,1,4),(5,1,5),
(5,2,1),(5,2,2),(5,2,3),(5,2,4),(5,2,5),
(5,3,1),(5,3,2),(5,3,3),(5,3,4),(5,3,5),
(5,4,1),(5,4,2),(5,4,3),(5,4,4),(5,4,5),
(5,5,1),(5,5,2),(5,5,3),(5,5,4),(5,5,5);

--WAITERS
insert into Waiter(eID)
values
(26),
(27),
(33),
(34),
(42);

--Sous chefs
insert into SousChef(eID)
values
(39),
(40),
(41);

insert into HeadChef(eID)
values
(28),
(29),
(30),
(31),
(32);

--shift
insert into Shift(workdate, shifttype, chefid,managerid)
values
('2019-12-02','am',28,35),
('2019-12-03','pm',29,36),
('2019-12-01','am',30,37),
('2019-12-07','pm',31,35);

--sectionshift
insert into SectionShift(workdate,shifttype,sectionnumber,waiterid)
values
('2019-12-02','am',1,26),
('2019-12-03','pm',2,27),
('2019-12-01','am',3,33),
('2019-12-01','pm',4,34);

--workschedule
insert into WorkSchedule(EID,workdate,shifttype)
values
(26,'2019-12-02','am'),
(27,'2019-12-03','pm'),
(33,'2019-12-01','am'),
(34,'2019-12-01','pm');

--Expertise
insert into Expertise(eID, recipeName)
values
(26, 'Chow Mein'),
(27, 'Egg Foo Young'),
(33, 'Egg Rolls'),
(34, 'Egg drop soup');

--Mentorship
insert into Mentorship(recipeName, mentorID, menteeID, startDate)
values
('Chow Mein', 26, 27, '2019-11-01'),
('Egg Foo Young', 27, 26, '2019-11-02'),
('Egg Rolls', 33, 34, '2019-11-03'),
('Egg drop soup', 34, 33,  '2019-11-04');
