/* DDL */
/* Creates Person Table
	Holds the ID, first name, and last name of a person.*/
CREATE TABLE Person(
	/*id: the ID of the person*/
	ID int NOT NULL,
	/*fName: The first name of the person*/
	fName varchar(10),
    /*lName: The last name of the person*/
    lName varchar(10),
    
    CONSTRAINT person_pk PRIMARY KEY (ID)
);
/* --------------------------- CUSTOMER SECTION --------------------------- */
/* Creates Customer Table
	Holds the customer ID.*/
CREATE TABLE Customer(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    
    CONSTRAINT cust_fk_1 FOREIGN KEY (custID) REFERENCES Person(ID),
    CONSTRAINT cust_pk PRIMARY KEY (custID)
);
/* Creates Anonymous Customer Table
	Holds the customer ID*/
CREATE TABLE AnonymousCustomer(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    
    CONSTRAINT acust_fk_1 FOREIGN KEY (custID) REFERENCES Customer(custID),
    CONSTRAINT acust_pk PRIMARY KEY (custID)
);
/* Creates Public Customer Table
	Holds the ID, snail-mail address, and email address of the customer. */
CREATE TABLE PublicCustomer(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    /*snailMailAddress: the address at which packages can be physically delivered to*/
    snailMailAddress varchar(100) NOT NULL,
    /*emailAddress: the address at which the customer can be electronincally contacted*/
    emailAddress varchar(100) NOT NULL,
    
    CONSTRAINT pubcust_fk_1 FOREIGN KEY (custID) REFERENCES Customer(custID),
    CONSTRAINT pubcust_pk PRIMARY KEY (custID)
);
/* Creates Private Customer Table
	Holds the ID, snail-mail address, and email address of the customer. */
CREATE TABLE PrivateCustomer(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    
    CONSTRAINT privcust_fk_1 FOREIGN KEY (custID) REFERENCES PublicCustomer(custID),
    CONSTRAINT privcust_pk PRIMARY KEY (custID)
);
/* Creates Corporation Table
	Holds the ID, name, mailing address, and email address of the coropration*/
CREATE TABLE Corporation(
	/*corpID: the ID of the corporation*/
	corpID int NOT NULL,
    /*corpName: the name that the corporation is known by*/
    corpName varchar(100) NOT NULL,
    /*snailMailAddress: the address at which packages can be physically delivered to*/
    snailMailAddress varchar(100) NOT NULL,
    /*emailAddress: the address at which the customer can be electronincally contacted*/
    emailAddress varchar(100) NOT NULL,
    
    CONSTRAINT corp_pk PRIMARY KEY (corpID)
);
/* Creates Corporate Representative Table
	Holds the customer ID, corporation ID, and department of the representative*/
CREATE TABLE CorporateRepresentative(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    /*corpID: the ID of the corporation*/
    corpID int NOT NULL,
	/*department: the department in which the representative works in*/
    department varchar(20) NOT NULL,
    
    CONSTRAINT corpcust_fk_1 FOREIGN KEY (custID) REFERENCES PublicCustomer(custID),
    CONSTRAINT corpcust_fk_2 FOREIGN KEY (corpID) REFERENCES Corporation(corpID),
    CONSTRAINT corpcust_pk PRIMARY KEY (custID)
);
/* --------------------------- END CUSTOMER SECTION --------------------------- */
/* --------------------------- EMPLOYEE SECTION --------------------------- */
CREATE TABLE lookup_role(
	/*roleName: the name of the role they are responsible for*/
	roleNAME varchar(20) NOT NULL,
    
    CONSTRAINT lookuprole_pk PRIMARY KEY (roleName)
);
/* Creates Employee Table
	Holds the employee ID, pay rate, and role name of the employee*/
CREATE TABLE Employee(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    /*payRate: the amount the employee is being paid*/
    payRate float NOT NULL,
    /*roleName: the name of the role they are responsible for*/
    roleName varchar(20) NOT NULL,
    
    CONSTRAINT emp_fk_1 FOREIGN KEY (eID) REFERENCES Person(ID),
    CONSTRAINT emp_fk_2 FOREIGN KEY (roleName) REFERENCES lookup_role(roleName),
    CONSTRAINT emp_pk PRIMARY KEY (eID)
);
/* Creates the lookup table for ingredient
	Holds the name of the ingredient*/
CREATE TABLE lookup_ingredient(
	/*ingredient: name of the ingredients used to make the recipe*/
	ingredient varchar(100) NOT NULL,
    
    CONSTRAINT ingredient_pk PRIMARY KEY (ingredient)
);
CREATE TABLE Recipe(
	/*recipeName: name of the recipe*/
	recipeName varchar(100) NOT NULL,
    /*eID: the ID of the Head Chef*/
    chefID int NOT NULL,
    
    CONSTRAINT recipe_fk_1 FOREIGN KEY (chefID) REFERENCES HeadChef (eID),
    CONSTRAINT recipe_pk PRIMARY KEY (recipeName)
);
/* Creates the recipe ingredient table
	Holds the name of the recipe and ingredient*/
CREATE TABLE RecipeIngredient(
	/*recipeName: name of the recipe*/
	recipeName varchar(100) NOT NULL,
	/*ingredient: name of the ingredients used to make the recipe*/
    ingredient varchar (100) NOT NULL,
    
    CONSTRAINT recipeingredient_fk_1 FOREIGN KEY (recipeName) REFERENCES Recipe (recipeName),
    CONSTRAINT recipeingredient_fk_2 FOREIGN KEY (ingredient) REFERENCES lookup_ingredient (ingredient),
    CONSTRAINT recipeingredient_pk PRIMARY KEY (recipeName, ingredient)
);
/* Creates Full Time Employee Table
	Holds the employee ID*/
CREATE TABLE FullTimeEmployee(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT ftemp_fk_1 FOREIGN KEY (eID) REFERENCES Employee (eID),
    CONSTRAINT ftemp_pk PRIMARY KEY (eID)
);
/* Creates Manager Table
	Holds the employee ID*/
CREATE TABLE Manager(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT manager_fk_1 FOREIGN KEY (eID) REFERENCES FullTimeEmployee (eID),
    CONSTRAINT manager_pk PRIMARY KEY (eID)
);
/* Creates Cook Table
	Holds the employee ID*/
CREATE TABLE Cook(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT cook_fk_1 FOREIGN KEY (eID) REFERENCES FullTimeEmployee (eID),
    CONSTRAINT cook_pk PRIMARY KEY (eID)
);
/* Creates Head Cook Table
	Holds the employee ID and recipe name*/
CREATE TABLE HeadChef(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT hcook_fk_1 FOREIGN KEY (eID) REFERENCES Cook (eID),
    CONSTRAINT hcook_pk PRIMARY KEY (eID)
);
/* Creates Line Cook Table
	Holds employee ID and station*/
CREATE TABLE LineCook(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    /*station: the station that the line cook is assigned to work at*/
    station varchar(20) NOT NULL,
    
    CONSTRAINT lcook_fk_1 FOREIGN KEY (eID) REFERENCES Cook (eID),
    CONSTRAINT lcook_pk PRIMARY KEY (eID, station)
);
/* Creates Sous Chef Table
	Holds the employee ID*/
CREATE TABLE SousChef(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT schef_fk_1 FOREIGN KEY (eID) REFERENCES Cook (eID),
    CONSTRAINT schef_pk PRIMARY KEY (eID)
);
/* Creates Expertise Table
	Holds employee ID and recipe name*/
CREATE TABLE Expertise(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    /*recipeName: name of the recipe*/
	recipeName varchar(20) NOT NULL,
	
    CONSTRAINT expertise_fk_1 FOREIGN KEY (eID) REFERENCES SousChef (eID),
    CONSTRAINT expertise_fk_2 FOREIGN KEY (recipeName) REFERENCES Recipe (recipeName),
    CONSTRAINT expertise_pk PRIMARY KEY (eID, recipeName)
);
/* Creates Mentorship Table
	Holds recipe name, ID of the mentor, and ID of the mentee*/
CREATE TABLE Mentorship(
	/*recipeName: name of the recipe*/
	recipeName varchar(20) NOT NULL,
    /*mentorID: the employee ID of the mentor*/
	mentorID int NOT NULL,
    /*menteeID: the employee ID of the mentee*/
    menteeID int NOT NULL,
	/*startDate: the day that the mentorship started*/
    startDate DATE NOT NULL,
    /*endDate: the day that the mentorship ended*/
    endDate DATE,

    CONSTRAINT mentorship_fk_1 FOREIGN KEY (menteeID, recipeName) REFERENCES Expertise (eID, recipeName),
    CONSTRAINT mentorship_fk_2 FOREIGN KEY (menteeID) REFERENCES SousChef (eID),
    CONSTRAINT mentorship_pk Primary Key (recipeName, mentorID, menteeID)
);
/* Creates Shift Table
	Holds the work date, shift type, ID of the chef, and ID of the manager*/
CREATE TABLE Shift(
	/*date: the day that the employee works*/
	workDate DATE NOT NULL,
    /*shiftType: the type of shift that the employee works*/
    shiftType varchar(20) NOT NULL,
    /*chefID: employee ID of the chef*/
    chefID int NOT NULL,
    /*managerID: employeeID of the manager*/
    managerID int NOT NULL,
    
    CONSTRAINT shift_fk_1 FOREIGN KEY (chefID) REFERENCES HeadChef (eID),
    CONSTRAINT shift_fk_2 FOREIGN KEY (managerID) REFERENCES Manager (eID),
    CONSTRAINT shift_pk PRIMARY KEY (workDate, shiftType)
);
/* Creates work Scheudle Table
	Holds employee ID, work date, and shift type*/
CREATE TABLE WorkSchedule(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    /*date: the day that the employee works*/
	workDate DATE NOT NULL,
    /*shiftType: the type of shift that the employee works*/
    shiftType varchar(20) NOT NULL,
    
    CONSTRAINT workschedule_fk_1 FOREIGN KEY (eID) REFERENCES Employee(eID),
    CONSTRAINT workschedule_fk_2 FOREIGN KEY (workDate, shiftType) REFERENCES Shift (workDate, shiftType),
    CONSTRAINT workschedule_pk PRIMARY KEY (workDate, shiftType, eID)
);
/* Creates Part Time Employee Table
	Holds the employee ID*/
CREATE TABLE PartTimeEmployee(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT ptemp_fk_1 FOREIGN KEY (eID) REFERENCES Employee(eID),
    CONSTRAINT ptemp_pk PRIMARY KEY (eID)
);
/* Creates Waiter Table
	Holds the employee ID*/
CREATE TABLE Waiter(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT waiter_fk_1 FOREIGN KEY (eID) REFERENCES PartTimeEmployee(eID),
    CONSTRAINT waiter_pk PRIMARY KEY (eID)
);
/* Creates Section Table
	Holds the employee ID and section number*/
CREATE TABLE Section(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    /*sectionNumber: the number that represents the given section*/
    sectionNumber int NOT NULL,
    
    CONSTRAINT section_fk_1 FOREIGN KEY (eID) REFERENCES Waiter (eID),
    CONSTRAINT section_pk PRIMARY KEY (sectionNumber)
);
/* Creates Resturant Table table
	Holds the table number and the section number*/
CREATE TABLE ResturantTable(
	/*tableNumber: the number assigned to a given table*/
	tableNumber int NOT NULL,
    /*sectionNumber: the number that represetnts a given section*/
	sectionNumber int NOT NULL,
    
    CONSTRAINT table_fk_1 FOREIGN KEY (sectionNumber) REFERENCES Section (sectionNumber),
    CONSTRAINT table_pk_1 PRIMARY KEY (tableNumber, sectionNumber)
);
/* Creates Seat table
	Holds the seat number, the table number, and the section number*/
CREATE TABLE Seat(
	/*seatNumber: the number assigned to a given seat at a table*/
	seatNumber int NOT NULL,
    /*tabelNumber: the number assigned to a given table*/
	tableNumber int NOT NULL,
    /*sectionNumber: the number that represetnts a given section*/
    sectionNumber int NOT NULL,
    
    CONSTRAINT seat_fk_1 FOREIGN KEY (tableNumber, sectionNumber) REFERENCES ResturantTable (tableNumber, sectionNumber),
    CONSTRAINT seat_pk PRIMARY KEY (seatNumber, tableNumber, sectionNumber)
);
/* Creates Section Shift table
	Holds the work date, shift type, section number, and employee ID of the waiter*/
CREATE TABLE SectionShift(
	/*date: the day that the employee works*/
	workDate DATE NOT NULL,
    /*shiftType: the type of shift that the employee works*/
    shiftType varchar(20) NOT NULL,
    /*sectionNumber: the number that represents the given section*/
    sectionNumber int NOT NULL,
    /*waiterID: the employee ID number of the given waiter*/
    waiterID int NOT NULL,
    
    CONSTRAINT sectionshift_fk_1 FOREIGN KEY (workDate, shiftType, waiterID) REFERENCES WorkSchedule (workDate, shiftType, eID),
    CONSTRAINT sectionshift_fk_2 FOREIGN KEY (sectionNumber) REFERENCES Section (sectionNumber),
    CONSTRAINT sectionshift_fk_3 FOREIGN KEY (waiterID) REFERENCES Waiter(eID),
    CONSTRAINT sectionshift_pk PRIMARY KEY (workDate, shiftType, sectionNumber)
);
/* --------------------------- END EMPLOYEE SECTION --------------------------- */
/* --------------------------- CHEQUE/ORDER SECTION --------------------------- */
/* Creates Payment Type lookup table
	Holds the names/types of payments accepted*/
CREATE TABLE lookup_payment(
	/*payment: the name of the payment*/
	payment varchar(20) NOT NULL,
    
    CONSTRAINT payment_pk PRIMARY KEY (payment)
);
/* Creates Cheque Table
	Holds the cheque ID, customer ID, payment type, check date, and amount of Miming's Money used*/
CREATE TABLE Cheque(
	/*chequeID: the ID of the cheque*/
	chequeID int NOT NULL,
    /*custID: the ID of the customer associated with the cheque*/
	custID int NOT NULL,
    /*payment: the method of payment that the customer uses to pay the cheque*/
    payment varchar(20) NOT NULL, /* SET TRIGGER FOR THIS */
    /*chequeDate: the day the check was made*/
    chequeDate DATE NOT NULL,
    /*mimingMoneyUsed: the amount of Miming's Money used in this transaction*/
    mimingMoneyUsed float NOT NULL,
    
    CONSTRAINT cheque_fk_1 FOREIGN KEY (payment) REFERENCES lookup_payment (payment),
    CONSTRAINT cheque_pk PRIMARY KEY (chequeID)
);
/* Creates Orders Table
	Holds the order ID and cheque ID*/
CREATE TABLE Orders(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*chequeID: the ID of the cheque*/
    chequeID int NOT NULL,
    
    CONSTRAINT order_fk_1 FOREIGN KEY (chequeID) REFERENCES Cheque (chequeID),
    CONSTRAINT order_pk PRIMARY KEY (orderID)
);
/* Creates Web Order Table
	Holds the order ID*/
CREATE TABLE WebOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    
    CONSTRAINT worder_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT worder_pk PRIMARY KEY (orderID)
);
/* Creates To Go Order Table
	Holds the order ID*/
CREATE TABLE ToGoOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*orderTime: the time at which the order has been made*/
    orderTime TIME NOT NULL, /*HH:MM:SS format*/
    /*orderTimeReady: the time at which the order is ready for pickup*/
    orderTimeReady TIME AS (addTime(ordertime, "03:00")),
    
    CONSTRAINT toorder_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT toorder_pk PRIMARY KEY (orderID)
);
/* Creates Phone Order table
	Holds the order ID and phone number*/
CREATE TABLE PhoneOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*phoneNumber: the phone number the placed the order*/
    phoneNumber varchar(10),
    
    CONSTRAINT phorder_fk_1 FOREIGN KEY (orderID) REFERENCES ToGoOrder (orderID),
    CONSTRAINT phorder_pk PRIMARY KEY (orderID)
);
/* Creates In Person Order Table
	Holds the order ID*/
CREATE TABLE InPersonOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    
    CONSTRAINT iporder_fk_1 FOREIGN KEY (orderID) REFERENCES ToGoOrder (orderID),
    CONSTRAINT iporder_pk PRIMARY KEY (orderID)
);
/* Creates Dine In Order Table
	Holds the order ID, the seat number, and the tabel number the order belongs to*/
CREATE TABLE DineInOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*seatNum: the seat number paying for the order*/
    seatNumber int NOT NULL,
    /*tabelNum: the table the order belongs to*/
    tableNumber int NOT NULL,
    /*sectopmNum: the section the order belongs to*/
    sectionNumber int NOT NULL,
    
    CONSTRAINT diorder_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT diorder_fk_2 FOREIGN KEY (seatNumber, tableNumber, sectionNumber) REFERENCES Seat (seatNumber, tableNumber, sectionNumber),
    CONSTRAINT diroder_pk PRIMARY KEY (orderID)
);
/* --------------------------- END CHEQUE/ORDER SECTION --------------------------- */
/* --------------------------- MENU ITEM + ORDERLINE SECTION --------------------------- */
/* Creates Menu Type lookup table
	Holds the names/types of menu*/
CREATE TABLE lookup_menu(
	/*menu: the name of the menu*/
	menu varchar(20) NOT NULL,
    
    CONSTRAINT menu_pk PRIMARY KEY (menu)
);
/* Creates Spice Level lookup table
	Holds the names/types of spice levels*/
CREATE TABLE lookup_spice(
	/*spice: the name of the spice level*/
	spice varchar(20) NOT NULL,
    
    CONSTRAINT spice_pk PRIMARY KEY (spice)
);
/* Creates Size lookup table
	Holds the names/types of sizes*/
CREATE TABLE lookup_size(
	/*size: the name of the size*/
	size varchar(20) NOT NULL,
    
    CONSTRAINT size_pk PRIMARY KEY (size)
);
/* Creates To Menu Item table
	Holds the menu item ID, the menu type that the item resides in, the name, the spice level,
    the size, and price of the food item*/
CREATE TABLE MenuItem(
	/*menuItemID: the ID of the menu item associated with the order line*/
    menuItemID int NOT NULL,
    /*menuTupe: the different types of menus that the item can be on*/
    menuType varchar(20) NOT NULL,
    /*foodItemName: the name that it is referred to by*/
    foodItemName varchar(100) NOT NULL,
    /*spiceLevel: the level of spiciness that the menu item has*/
    spiceLevel varchar(20) NOT NULL,
    /*size: the size of the menu item*/
    size varchar(20) NOT NULL,
    /*price: the amount it costs to order this menu item*/
    price float NOT NULL, /* PRICE IS $0.00 FOR BUFFET ITEMS*/
    
    CONSTRAINT menuitem_fk_1 FOREIGN KEY (foodItemName) REFERENCES Recipe (recipeName),
    CONSTRAINT menuitem_fk_2 FOREIGN KEY (menuType) REFERENCES lookup_menu (menu),
    CONSTRAINT menuitem_fk_3 FOREIGN KEY (spiceLevel) REFERENCES lookup_spice (spice),
    CONSTRAINT menuitem_fk_4 FOREIGN KEY (size) REFERENCES lookup_size (size),
    CONSTRAINT menuitem_pk PRIMARY KEY (menuItemID)
);
/* Creates To Appetizer table
	Holds the appetizer ID*/
CREATE TABLE Appetizer(
	/*appetizerID: the ID of the appetizer associated with the order line*/
    appetizerID int NOT NULL,
    
    CONSTRAINT appetizer_fk_1 FOREIGN KEY (appetizerID) REFERENCES MenuItem (menuItemID),
    CONSTRAINT appetizer_pk PRIMARY KEY (appetizerID)
);
/* Creates Meat lookup table
	Holds the names/types of meat*/
CREATE TABLE lookup_meat(
	/*meat: the name of the meat*/
	meat varchar(20) NOT NULL,
    
    CONSTRAINT meat_pk PRIMARY KEY (meat)
);
/* Creates Meat Entree table
	Holds the meat entree ID and the type of meat cooked with it*/
CREATE TABLE MeatEntree(
	/*meatEntreeID: the ID of the entree associated with the order line*/
    meatEntreeID int NOT NULL,
    /*meatEntreeAddOn: the type of meat that is cooked with the meat entree*/
    meatEntreeAddOn varchar(20) NOT NULL,
    
    CONSTRAINT meatentree_fk_1 FOREIGN KEY (meatEntreeID) REFERENCES MenuItem (menuItemID),
    CONSTRAINT meatentree_fk_2 FOREIGN KEY (meatEntreeAddOn) REFERENCES lookup_meat (meat),
    CONSTRAINT meatentree_pk PRIMARY KEY (meatEntreeID)
);
/* Creates Soup Volume lookup table
	Holds the names/types of volumes that soup can come in*/
CREATE TABLE lookup_volume(
	/*volume: the name of the measurement that the soup can be served in*/
	volume varchar(20) NOT NULL,
    
    CONSTRAINT volume_pk PRIMARY KEY (volume)
);
/* Creates Soup table
	Holds the soup ID and soup volume*/
CREATE TABLE Soup(
	/*soupID: the ID of the soup associated with the orderline*/
	soupID int NOT NULL,
    /*soupVolume: he measurement that the soup is served in*/
    soupVolume varchar(100) NOT NULL,
    
    CONSTRAINT soup_fk_1 FOREIGN KEY (soupID) REFERENCES MenuItem (menuItemID),
    CONSTRAINT soup_fk_2 FOREIGN KEY (soupVolume) REFERENCES lookup_volume (volume),
    CONSTRAINT soup_pk PRIMARY KEY (soupID)
);
/* Creates Order Line table
	Holds the order ID and menu item ID*/
CREATE TABLE OrderLine(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*menuItemID: the ID of the menu item associated with the order line*/
    menuItemID int NOT NULL,
    /*quantity: the amount of menu items ordered*/
    quantity int NOT NULL,
    
    CONSTRAINT orderline_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT orderline_fk_2 FOREIGN KEY (menuItemID) REFERENCES MenuItem(menuItemID),
    CONSTRAINT orderline_pk PRIMARY KEY (orderID, menuItemID)
);