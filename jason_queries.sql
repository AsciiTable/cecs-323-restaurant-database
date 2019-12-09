#Part E
select OrderLine.menuItemID, sum(OrderLine.quantity) from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
where	menuType = "Children's"
group by	OrderLine.menuItemID
order by sum(OrderLine.quantity) desc
limit 3;

#Part K
select OrderLine.menuItemID, quantity * price as MONEYEARNED from OrderLine
inner join	MenuItem
on	OrderLine.menuItemID = MenuItem.menuItemID
group by	OrderLine.menuItemID
order by MONEYEARNED desc
LIMIT 5;

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
