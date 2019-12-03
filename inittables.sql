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



