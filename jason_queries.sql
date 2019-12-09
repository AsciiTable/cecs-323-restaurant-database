#Part E
select OrderLine.menuItemID, sum(OrderLine.quantity) from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
where	menuType = "Children's"
group by	OrderLine.menuItemID
order by sum(OrderLine.quantity) desc
limit 3;


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
on Customer.custID = Person.ID


#Part K
select OrderLine.menuItemID, quantity * price as MONEYEARNED from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
group by	OrderLine.menuItemID
order by MONEYEARNED desc
LIMIT 5;

#Part h. List the customers and the total that they have spent at Miming’s ever, in descending
#order by the amount that they have spent.

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
order by sum(priceEach) desc;

#Part J
List the three customers who have spent the most at Miming’s over the past year. 
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


#i. Report on the customers at Miming’s by the number of timesthat they come in by month
#and order the report from most frequent to the least frequent.


select custID, fname, lname, count(custID) / 12 as TimeVistedPerMonth from Cheque
inner join Person 
on Person.ID = custID
group by custID, fname, lname
order by custID asc;


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
