

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