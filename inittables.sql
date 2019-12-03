/* DDL */
/* Creates Person Table
	Holds the ID, first name, and last name of a person. */
CREATE TABLE Person(
	/*id: the ID of the person*/
	ID int NOT NULL,
	/*fName: The first name of the person*/
	fName varchar(10) NOT NULL,
    /*lName: The last name of the person*/
    lName varchar(10) NOT NULL,
    CONSTRAINT person_pk PRIMARY KEY (ID)
);

