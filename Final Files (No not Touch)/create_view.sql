/* View DDL */
/*MenuItem_v – For each menu item, give it’s spiciness, and all of the different costs for
that item. If a given item is not on a particular menu, then report “N/A” for that particular
item for that particular menu. Also, if an item only appears as a single serving portion,
put in “N/A” into the report for the gallon, … prices.*/
/*CREATE VIEW MenuItem_v AS*/
SELECT menuType AS Menu, foodItemName AS Item, GROUP_CONCAT(DISTINCT spiceLevel) AS Spiciness, size AS Size, price AS Price
FROM MenuItem
GROUP BY foodItemName;

/* View DDL */
/*MenuItem_v – For each menu item, give it’s spiciness, and all of the different costs for
that item. If a given item is not on a particular menu, then report “N/A” for that particular
item for that particular menu. Also, if an item only appears as a single serving portion,
put in “N/A” into the report for the gallon, … prices.*/
/*CREATE VIEW MenuItem_v AS*/
SELECT menuType AS Menu, foodItemName AS Item, spiceLevel AS Spiciness, size AS Size, price AS Price
FROM MenuItem;

/*Customer_addresses_v – for each customer, indicate whether they are an individual or a
corporate account, and display all of the information that we are managing for that
customer.*/
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
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `cecs323sec1s39`@`10.%` 
    SQL SECURITY DEFINER
VIEW `Customer_Sales_V` AS
    SELECT 
        YEAR(`G`.`chequeDate`) AS `YEAR(chequeDate)`,
        `G`.`custID` AS `custID`,
        `cecs323sec01bg07`.`Person`.`fName` AS `fName`,
        `cecs323sec01bg07`.`Person`.`lName` AS `lName`,
        `G`.`total` AS `total`
    FROM
        (((SELECT 
            `cecs323sec01bg07`.`Cheque`.`custID` AS `custID`,
                `F`.`total` AS `total`,
                `cecs323sec01bg07`.`Cheque`.`chequeDate` AS `chequeDate`
        FROM
            (((SELECT 
            `D`.`chequeID` AS `chequeID`, SUM(`D`.`Total`) AS `total`
        FROM
            (SELECT 
            `S`.`chequeID` AS `chequeID`,
                `cecs323sec01bg07`.`OrderLine`.`menuItemID` AS `menuItemID`,
                (`cecs323sec01bg07`.`MenuItem`.`price` * `cecs323sec01bg07`.`OrderLine`.`quantity`) AS `Total`
        FROM
            ((((SELECT 
            `cecs323sec01bg07`.`Orders`.`orderID` AS `orderID`,
                `cecs323sec01bg07`.`Cheque`.`chequeID` AS `chequeID`
        FROM
            (`cecs323sec01bg07`.`Cheque`
        JOIN `cecs323sec01bg07`.`Orders` ON ((`cecs323sec01bg07`.`Orders`.`chequeID` = `cecs323sec01bg07`.`Cheque`.`chequeID`)))
        WHERE
            (`cecs323sec01bg07`.`Cheque`.`chequeDate` BETWEEN (NOW() - INTERVAL 1 YEAR) AND NOW()))) `S`
        JOIN `cecs323sec01bg07`.`OrderLine` ON ((`cecs323sec01bg07`.`OrderLine`.`orderID` = `S`.`orderID`)))
        JOIN `cecs323sec01bg07`.`MenuItem` ON ((`cecs323sec01bg07`.`OrderLine`.`menuItemID` = `cecs323sec01bg07`.`MenuItem`.`menuItemID`)))
        GROUP BY `S`.`chequeID` , `cecs323sec01bg07`.`OrderLine`.`menuItemID`) `D`
        GROUP BY `D`.`chequeID`
        ORDER BY SUM(`D`.`Total`) DESC)) `F`
        JOIN `cecs323sec01bg07`.`Cheque` ON ((`F`.`chequeID` = `cecs323sec01bg07`.`Cheque`.`chequeID`))))) `G`
        JOIN `cecs323sec01bg07`.`Person` ON ((`cecs323sec01bg07`.`Person`.`ID` = `G`.`custID`)))

/*Customer_Value_v – List each customer and the total $ amount of their orders for the
past year, in order of the value of customer orders, from highest to the lowest.*/
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `cecs323sec1s39`@`10.%` 
    SQL SECURITY DEFINER
VIEW `Customer_Value_v` AS
    SELECT 
        `G`.`custID` AS `custID`,
        `cecs323sec01bg07`.`Person`.`fName` AS `fName`,
        `cecs323sec01bg07`.`Person`.`lName` AS `lName`,
        `G`.`total` AS `total`
    FROM
        (((SELECT 
            `cecs323sec01bg07`.`Cheque`.`custID` AS `custID`,
                `F`.`total` AS `total`
        FROM
            (((SELECT 
            `D`.`chequeID` AS `chequeID`, SUM(`D`.`Total`) AS `total`
        FROM
            (SELECT 
            `S`.`chequeID` AS `chequeID`,
                `cecs323sec01bg07`.`OrderLine`.`menuItemID` AS `menuItemID`,
                (`cecs323sec01bg07`.`MenuItem`.`price` * `cecs323sec01bg07`.`OrderLine`.`quantity`) AS `Total`
        FROM
            ((((SELECT 
            `cecs323sec01bg07`.`Orders`.`orderID` AS `orderID`,
                `cecs323sec01bg07`.`Cheque`.`chequeID` AS `chequeID`
        FROM
            (`cecs323sec01bg07`.`Cheque`
        JOIN `cecs323sec01bg07`.`Orders` ON ((`cecs323sec01bg07`.`Orders`.`chequeID` = `cecs323sec01bg07`.`Cheque`.`chequeID`)))
        WHERE
            (`cecs323sec01bg07`.`Cheque`.`chequeDate` BETWEEN (NOW() - INTERVAL 1 YEAR) AND NOW()))) `S`
        JOIN `cecs323sec01bg07`.`OrderLine` ON ((`cecs323sec01bg07`.`OrderLine`.`orderID` = `S`.`orderID`)))
        JOIN `cecs323sec01bg07`.`MenuItem` ON ((`cecs323sec01bg07`.`OrderLine`.`menuItemID` = `cecs323sec01bg07`.`MenuItem`.`menuItemID`)))
        GROUP BY `S`.`chequeID` , `cecs323sec01bg07`.`OrderLine`.`menuItemID`) `D`
        GROUP BY `D`.`chequeID`
        ORDER BY SUM(`D`.`Total`) DESC)) `F`
        JOIN `cecs323sec01bg07`.`Cheque` ON ((`F`.`chequeID` = `cecs323sec01bg07`.`Cheque`.`chequeID`))))) `G`
        JOIN `cecs323sec01bg07`.`Person` ON ((`cecs323sec01bg07`.`Person`.`ID` = `G`.`custID`)))