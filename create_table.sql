@@ -95,20 +95,39 @@ CREATE TABLE Employee(
    CONSTRAINT emp_fk_1 FOREIGN KEY (eID) REFERENCES Person(ID),
    CONSTRAINT emp_pk PRIMARY KEY (eID)
);
/* Creates the lookup table for ingredient
	Holds the name of the ingredient*/
CREATE TABLE lookup_ingredient(
	/*ingredient: name of the ingredients used to make the recipe*/
	ingredient varchar(20) NOT NULL,
    
    CONSTRAINT ingredient_pk PRIMARY KEY (ingredient)
);
CREATE TABLE Recipe(
	/*recipeName: name of the recipe*/
<<<<<<< HEAD
<<<<<<< HEAD
	recipeName varchar(100) NOT NULL,
=======
	recipeName varchar(20) NOT NULL,
>>>>>>> parent of 0c82016... e
    /*ingredient: name of the ingredients used to make the recipe*/
    ingredient varchar (20) NOT NULL,
=======
	recipeName varchar(20) NOT NULL,

>>>>>>> 598c1c971c6739647c4b3db62e3b7469539016c2
    
    CONSTRAINT recipe_fk_1 FOREIGN KEY (ingredient) REFERENCES lookup_ingredient (ingredient),
    CONSTRAINT recipe_pk PRIMARY KEY (recipeName)
);
/* Creates the table Recipe 
	Holds the name of the recipe and ingredient*/
CREATE TABLE RecipeIngredient(
	/*recipeName: name of the recipe*/
	recipeName varchar(20) NOT NULL,
	/*ingredient: name of the ingredients used to make the recipe*/
    ingredient varchar (20) NOT NULL,
    
    CONSTRAINT recipeingredient_fk_1 FOREIGN KEY (recipeName) REFERENCES Recipe (recipeName),
    CONSTRAINT recipeingredient_fk_2 FOREIGN KEY (ingredient) REFERENCES lookup_ingredient (ingredient),
    CONSTRAINT recipeingredient_pk PRIMARY KEY (recipeName, ingredient)
);
/* Creates Full Time Employee Table
	Holds the employee ID*/
CREATE TABLE FullTimeEmployee(
@ -189,6 +208,8 @@ CREATE TABLE Mentorship(
	mentorID int NOT NULL,
    /*menteeID: the employee ID of the mentee*/
    menteeID int NOT NULL,
    /*startDate: the day that the mentorship started*/
    startDate DATE NOT NULL,
    
    CONSTRAINT mentorship_fk_1 FOREIGN KEY (menteeID, recipeName) REFERENCES Expertise (eID, recipeName),
    CONSTRAINT mentorship_fk_2 FOREIGN KEY (menteeID) REFERENCES SousChef (eID),
@ -403,7 +424,7 @@ CREATE TABLE MenuItem(
    /*menuTupe: the different types of menus that the item can be on*/
    menuType varchar(20) NOT NULL,
    /*foodItemName: the name that it is referred to by*/
    foodItemName varchar(20) NOT NULL, /*RECIPE CLASS NEEDED*/
    foodItemName varchar(20) NOT NULL,
    /*spiceLevel: the level of spiciness that the menu item has*/
    spiceLevel varchar(20) NOT NULL,
    /*size: the size of the menu item*/