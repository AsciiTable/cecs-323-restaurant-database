/*a. List the customers. For each customer, indicate which category he or she fall into, and
his or her contact information. If you have more than one independent categorization of
customers, please indicate which category the customer falls into for all of the
categorizations.*/
SELECT custID AS 'Customer ID', fName AS 'First Name', lName AS 'Last Name', 'Public Customer, Individual' AS 'Category', snailMailAddress AS 'Snail Mail', emailAddress AS 'E-Mail'
FROM PrivateCustomer
INNER JOIN PublicCustomer
USING (custID)
INNER JOIN Person
ON PublicCustomer.custID = Person.ID
UNION
SELECT custID AS 'Customer ID', fName AS 'First Name', lName AS 'Last Name', 'Public Customer, Corporate' AS 'Category', snailMailAddress AS 'Snail Mail', emailAddress AS 'E-Mail'
FROM Corporation
INNER JOIN CorporateRepresentative
USING (corpID)
INNER JOIN Person
ON CorporateRepresentative.custID = Person.ID
UNION
SELECT custID AS 'Customer ID', 'N/A' AS 'First Name', 'N/A' AS 'Last Name', 'Anonymous' AS 'Category','N/A' AS 'Snail Mail', 'N/A' AS 'E-Mail'
FROM AnonymousCustomer
INNER JOIN Customer
USING (custID);

/*b. List the top three customers in terms of their net spending for the past two years, and
the total that they have spent in that period.*/
SELECT chequeDate AS 'Date', fName AS 'First Name', lName AS 'Last Name', SUM(price) AS 'Total Spent for Past Two Years'
FROM Cheque
INNER JOIN Person
ON Cheque.custID = Person.ID
INNER JOIN Orders
USING (chequeID)
INNER JOIN OrderLine
USING (orderID)
INNER JOIN MenuItem
USING (menuItemID)
WHERE chequeDate >= now() - INTERVAL 2 YEAR
GROUP BY chequeDate, fName, lName
ORDER BY SUM(price) DESC
LIMIT 3;

/*c. Find all of the sous chefs who have three or more menu items that they can prepare. For
each sous chef, list their name, the number of menu items that they can prepare, and
each of the menu items. You can use group_concat to get all of a given sous chef’s data
on one row, or print out one row per sous chef per menu item.*/
SELECT fName AS 'First Name', lName AS 'Last Name', COUNT(recipeName) AS '# of Recipes', GROUP_CONCAT(recipeName) AS 'Recipes'
FROM Expertise
INNER JOIN SousChef
USING (eID)
INNER JOIN Person 
ON SousChef.eID = Person.ID
GROUP BY eID;

/*d. Find all of the sous chefs who have three or more menu items in common.*/
SELECT p1.fName AS 'Chef 1 First Name', p1.lName AS 'Chef 1 Last Name', p2.fName AS 'Chef 2 First Name', p2.lName AS 'Chef 2 Last Name'
FROM (SELECT e1.eID 'Chef1', e2.eID 'Chef2', COUNT(*) AS 'Pairs'
	FROM Expertise e1, Expertise e2
	WHERE e1.eID < e2.eID AND e1.recipeName = e2.recipeName
	GROUP BY e1.eID, e2.eID) t1
INNER JOIN Person p1
ON t1.Chef1 = p1.ID
INNER JOIN Person p2
ON t1.Chef2 = p2.ID
WHERE t1.Pairs >= 3;

#Part E
select foodItemName, spiceLevel, totalOrdered from (
select OrderLine.menuItemID, sum(OrderLine.quantity) as totalOrdered from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
where	menuType = "Children's"
group by	OrderLine.menuItemID
order by sum(OrderLine.quantity) desc
limit 3) D
inner join	MenuItem
on MenuItem.menuItemID = D.menuItemID;


/*f. List all the menu items, the shift in which the menu item was ordered, and the sous chef
on duty at the time, when the sous chef was not an expert in that menu item.*/
SELECT foodItemName AS 'Food Item', menuType AS 'Menu', spiceLevel AS 'Spice Level', size AS 'Size', workDate AS 'Day Ordered', shiftType AS 'Time Ordered', fName AS 'Sous Chef First Name', lName AS 'Sous Chef Last Name'
FROM MenuItem
INNER JOIN OrderLine
USING (menuItemID)
INNER JOIN Orders
USING (orderID)
INNER JOIN Cheque
USING (chequeID)
INNER JOIN Shift
ON Cheque.chequeDate = Shift.workDate
INNER JOIN WorkSchedule
USING (workDate, shiftType)
INNER JOIN Person
ON WorkSchedule.eID = Person.ID
WHERE foodItemName NOT IN
(SELECT recipename
FROM Expertise
INNER JOIN SousChef
USING (eID));

/*g. List the customers, sorted by the amount of Miming’s Money that they have, from largest
to smallest.*/
SELECT fName AS 'Customer First Name', lName AS 'Customer Last Name', (totalSpent/10) - mimingMoneyUsed AS 'Total Miming\'s Money'
FROM (SELECT fName, lName, SUM(chequeTotal) AS totalSpent, mimingMoneyUsed
	FROM(SELECT chequeID, custID, SUM(t1.orderTotal) AS chequeTotal, mimingMoneyUsed
		FROM(SELECT orderID, chequeID,  SUM(quantity*price) AS orderTotal
			FROM MenuItem
			INNER JOIN OrderLine
			USING (menuItemID)
			INNER JOIN Orders
			USING (orderID)
			GROUP BY orderID) t1
		INNER JOIN Cheque
		USING (chequeID)
		GROUP BY chequeID) t2
	INNER JOIN Person
	ON t2.custID = Person.ID
	GROUP BY fName, lName) t3
ORDER BY (totalSpent/10) - mimingMoneyUsed DESC;

#Part h. List the customers and the total that they have spent at Miming’s ever, in descending
#order by the amount that they have spent.

select * from (
select custID, sum(priceEach) from(
select Customer.custID, Cheque.chequeID, MenuItem.menuItemID, price * quantity as priceEach from Customer
inner join	Cheque 
on Customer.custID = Cheque.custID
inner join Orders
on Orders.chequeID = Cheque.chequeID
inner join OrderLine
on OrderLine.orderID = Orders.orderID
inner join MenuItem
on MenuItem.menuItemID = OrderLine.menuItemID
group by Customer.custID, Cheque.chequeID, menuItemID) D
group by custID
order by sum(priceEach) desc) D
inner join Person
on Person.ID = D.custID;

#i. Report on the customers at Miming’s by the number of timesthat they come in by month
#and order the report from most frequent to the least frequent.


select custID, fname, lname, count(custID) / 12 as TimeVistedPerMonth from Cheque
inner join Person 
on Person.ID = custID
group by custID, fname, lname
order by custID asc;

#Part J
#List the three customers who have spent the most at Miming’s over the past year. 
#Order by the amount that they spent, from largest to smallest.
select custID, fName, lName, total from (
select custID,total from (
select chequeID, sum(total) as total from (
select chequeID, OrderLine.menuItemID, price * quantity as Total from (
select Orders.orderID, Cheque.chequeID from Cheque
inner join Orders
on Orders.chequeID = Cheque.chequeID
where chequeDate between (now() - interval 1 year) and now()) S
inner join	OrderLine
on	OrderLine.orderID = S.orderID
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
group by chequeID, OrderLine.menuItemID) D
group by chequeID
order by sum(total) desc
limit 3) F
inner join Cheque
on 	F.chequeID = Cheque.chequeID) G
inner join Person
on 	Person.ID = G.custiD;


#Part K
select foodItemName, MONEYEARNED from(
select OrderLine.menuItemID, quantity * price as MONEYEARNED from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
group by	OrderLine.menuItemID
order by MONEYEARNED desc
LIMIT 5) D
inner join MenuItem
on	MenuItem.menuItemID = D.menuItemID;

/*L. Find the sous chef who is mentoring the most other sous chef. List the menu items that
the sous chef is passing along to the other sous chefs.*/

SELECT distinct Person.fname,Person.lname, recipeName
FROM Mentorship
inner join Person
on Person.ID = Mentorship.mentorID
WHERE enddate IS NULL;

/*M. Find the three menu items that have the fewest sous chefs skilled in those menu items*/
SELECT recipeName,count(eID) As employeeCount
from Expertise
group by recipeName
ORDER BY count(eID) ASC
Limit 3;

#n. List all of the customers who eat at Miming’s on their own as well as ordering for their
#corporation.


select fname, lname, "Private Customer" as Category from Customer
inner join	PrivateCustomer
on	Customer.custID = PrivateCustomer.custID
inner join Person
on Customer.custID = Person.ID
union
select fname, lname, "Corporate Representative" as Category from Customer
inner join	CorporateRepresentative
on	Customer.custID = CorporateRepresentative.custID
inner join Person
on Customer.custID = Person.ID;

#Part O
select menuItemID, menuType, foodItemName, spiceLevel, size, price, "n/a" as addOnOrVolume, "Appetizer" as Category from MenuItem
inner join	Appetizer
on	MenuItem.menuItemID = appetizerID
union 
select menuItemID, menuType, foodItemName, spiceLevel, size, price, meatEntreeAddOn as addOnOrVolume, "Meat Entree" as Category  from MenuItem
inner join	MeatEntree
on MenuItem.menuItemID = meatEntreeID
union 
select menuItemID, menuType, foodItemName, spiceLevel, size, price, soupVolume as addOnOrVolume, "Soup" as Category from MenuItem
inner join	Soup
on Soup.soupID = menuItemID
order by menuType;

/*p1. Return the name of the sous chefs that are an expert in a recipe and is teaching it to another sous chef*/
select DISTINCT Person.fname, Person.lname from Mentorship
inner join Person
on Person.ID = Mentorship.mentorID;
/*p2.Return the name of the head chef that worked at the end of the first week of December during 2019*/
select Person.fname, Person.lname 
from Shift
inner join Person
on Person.ID = Shift.chefid
where Shift.workdate = '2019-12-07';

/*p3. Return the orderID, orderTime, orderTimeReady for a to-go order.*/
select orderID, orderTime, orderTimeReady from ToGoOrder;