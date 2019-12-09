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



/*Matt's Queries*/
/*L. Find the sous chef who is mentoring the most other sous chef. List the menu items that
the sous chef is passing along to the other sous chefs.*/

SELECT mentorID, recipeName
FROM Mentorship
WHERE enddate IS NULL;



/*M. Find the three menu items that have the fewest sous chefs skilled in those menu items*/

SELECT recipeName,count(eID) As employeeCount
from Expertise
group by recipeName
ORDER BY count(eID) ASC
Limit 3;


SET FOREIGN_KEY_CHECKS = 0;

SET FOREIGN_KEY_CHECKS = 1;









