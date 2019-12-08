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
    snailMailAddress varchar(35) NOT NULL,
    /*emailAddress: the address at which the customer can be electronincally contacted*/
    emailAddress varchar(20) NOT NULL,
    
    CONSTRAINT pubcust_fk_1 FOREIGN KEY (custID) REFERENCES Customer(custID),
    CONSTRAINT pubcust_pk PRIMARY KEY (custID)
);
/* Creates Private Customer Table
	Holds the ID, snail-mail address, and email address of the customer. */
CREATE TABLE PrivateCustomer(
	/*custID: the ID of the customer*/
	custID int NOT NULL,
    /*snailMailAddress: the address at which packages can be physically delivered to*/
    snailMailAddress varchar(35) NOT NULL,
    /*emailAddress: the address at which the customer can be electronincally contacted*/
    emailAddress varchar(20) NOT NULL,
    
    CONSTRAINT privcust_fk_1 FOREIGN KEY (custID) REFERENCES PublicCustomer(custID),
    CONSTRAINT privcust_pk PRIMARY KEY (custID)
);
/* Creates Corporation Table
	Holds the ID, name, mailing address, and email address of the coropration*/
CREATE TABLE Corporation(
	/*corpID: the ID of the corporation*/
	corpID int NOT NULL,
    /*corpName: the name that the corporation is known by*/
    corpName varchar(20) NOT NULL,
    /*snailMailAddress: the address at which packages can be physically delivered to*/
    snailMailAddress varchar(35) NOT NULL,
    /*emailAddress: the address at which the customer can be electronincally contacted*/
    emailAddress varchar(20) NOT NULL,
    
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
    CONSTRAINT emp_pk PRIMARY KEY (eID)
);
/* Creates Part Time Employee Table
	Holds the employee ID*/
CREATE TABLE PartTimeEmployee(
	/*eID: the ID of the employee*/
	eID int NOT NULL,
    
	CONSTRAINT ptemp_fk_1 FOREIGN KEY (eID) REFERENCES Employee(eID),
    CONSTRAINT ptemp_pk PRIMARY KEY (eID)
);
/* --------------------------- END EMPLOYEE SECTION --------------------------- */
/* --------------------------- CHEQUE/ORDER SECTION --------------------------- */
/* Creates Cheque Table
	Holds the cheque ID, customer ID, payment type, check date, and amount of Miming's Money used*/
CREATE TABLE Cheque(
	/*chequeID: the ID of the cheque*/
	chequeID int NOT NULL,
    /*custID: the ID of the customer associated with the cheque*/
	custID int NOT NULL,
    /*payment: the method of payment that the customer uses to pay the cheque*/
    payment ENUM ('cash', 'debit', 'credit') NOT NULL, /* SET TRIGGER FOR THIS */
    /*payment varchar(20) CHECK (payment IN('cash', 'debit', 'credit')),*/
    /*chequeDate: the day the check was made*/
    chequeDate DATE NOT NULL,
    /*mimingMoneyUsed: the amount of Miming's Money used in this transaction*/
    mimingMoneyUsed float NOT NULL,
    
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
    orderTimeReady TIME NOT NULL,
    
    CONSTRAINT toorder_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT toorder_pk PRIMARY KEY (orderID)
);
/* Creates Dien In Order Table
	Holds the order ID, the seat number, and the tabel number the order belongs to*/
CREATE TABLE DineInOrder(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*seatNum: the seat number paying for the order*/
    seatNum int NOT NULL,
    /*tabelNum: the table the order belongs to*/
    tableNum int NOT NULL,
    
    CONSTRAINT diorder_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT diorder_fk_2 FOREIGN KEY (seatNum, tableNum) REFERENCES Seat (seatNum, tableNum), /* SEAT TABLE MUST BE COMPLETED IN EMPLOYEE SECTION */
    CONSTRAINT diroder_pk PRIMARY KEY (orderID)
);
/* --------------------------- END CHEQUE/ORDER SECTION --------------------------- */
/* --------------------------- MENU ITEM + ORDERLINE SECTION --------------------------- */
/* Creates To Menu Item table
	Holds the menu item ID, the menu type that the item resides in, the name, the spice level,
    the size, and price of the food item*/
CREATE TABLE MenuItem(
	/*menuItemID: the ID of the menu item associated with the order line*/
    menuItemID int NOT NULL,
    /*menuTupe: the different types of menus that the item can be on*/
    menuType ENUM ('Evening','Lunch','Sunday Brunch Buffet', 'Children\'s') NOT NULL,
    /*foodItemName: the name that it is referred to by*/
    foodItemName varchar(20) NOT NULL, /*RECIPE CLASS NEEDED*/
    /*spiceLevel: the level of spiciness that the menu item has*/
    spiceLevel ENUM ('Mild','Tangy','Piquant','Hot','Oh My God') NOT NULL,
    /*size: the size of the menu item*/
    size ENUM ('Small', 'Medium', 'Large') NOT NULL, /*SUBJECT TO CHANGE*/
    /*price: the amount it costs to order this menu item*/
    price float NOT NULL, /* PRICE IS $0.00 FOR BUFFET ITEMS*/
    
    CONSTRAINT menuitem_fk_1 FOREIGN KEY (foodItemName) REFERENCES Recipe (rname),
    CONSTRAINT menuitem_pk PRIMARY KEY (menuItemID)
);

/* Creates To Order Line table
	Holds the order ID and menu item ID*/
CREATE TABLE OrderLine(
	/*orderID: the ID of the order*/
	orderID int NOT NULL,
    /*menuItemID: the ID of the menu item associated with the order line*/
    menuItemID int NOT NULL,
    
    CONSTRAINT orderline_fk_1 FOREIGN KEY (orderID) REFERENCES Orders (orderID),
    CONSTRAINT orderline_fk_2 FOREIGN KEY (menuItemID) REFERENCES MenuItem(menuItemID),
    CONSTRAINT orderline_pk PRIMARY KEY (orderID, menuItemID)
);

















































