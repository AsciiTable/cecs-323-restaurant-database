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
SELECT chequeDate AS 'Date', fName AS 'First Name', lName AS 'Last Name', SUM(price) AS 'Total Spent in Year'
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
ORDER BY fName;

