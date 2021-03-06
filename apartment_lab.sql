-- Show all the psql users. (Hint: Look for a command to show roles)
1) \du

-- Show all the tables in your apartmentlab database.
2) \dt

-- Show all the data in the owners table.
3) SELECT * FROM owners;

-- Add three owners: Donald (age 56), Elaine (age 24), and Emma (age 36).
4) INSERT INTO owners (name, age)
   VALUES ('Donald', 56);

	 INSERT INTO owners (name, age)
   VALUES ('Elaine', 24);

   INSERT INTO owners (name, age)
   VALUES ('Emma', 36);

-- Show the names of all owners.
5) SELECT name FROM owners;

-- Show the ages of all of the owners in ascending order.
6) SELECT age FROM owners ORDER BY age;

-- Show the name of an owner whose name is Donald.
7) SELECT name FROM owners WHERE name = 'Donald';

-- Show the age of all owners who are older than 30.
8) SELECT age FROM owners WHERE age > 30;

-- Show the name of all owners whose name starts with an "E".
9) SELECT name FROM owners WHERE name LIKE 'E%'; 

-- Add an owner named John who is 33 years old.
10) INSERT INTO owners (name, age)
    VALUES ('John', 33);

-- Add an owner named Jane who is 43 years old.
11) INSERT INTO owners (name, age)
    VALUES ('Jane', 43);

-- Change Jane's age to 30.
12) UPDATE owners
		SET age = 30
		WHERE age = 43;   

-- Change Jane's name to Janet.
13) UPDATE owners
		SET name = 'Janet'
		WHERE name = 'Jane'; 

-- Delete the owner named Janet.
14) DELETE FROM owners
    WHERE name = 'Janet'
    RETURNING *;

-- Add a property named Archstone that has 20 units.
15) INSERT INTO properties (name, num_units)
    VALUES ('Archstone', 20);   		

-- Add two more properties with names and number of units of your choice.
16) INSERT INTO properties (name, num_units)
	  VALUES ('Winterfell', 60);
		
		INSERT INTO properties (name, num_units)
		VALUES ('Hobbiton', 100);

-- Show all of the properties in alphabetical order that are not named Archstone.
17)	SELECT name 
		FROM properties 
		WHERE name != 'Archstone' 
		ORDER BY name;

-- Count the total number of rows in the properties table.
18) SELECT COUNT(*) FROM properties;		

-- Show the highest age of all the owners.
19)	SELECT MAX(age) FROM owners;

-- Show the names of the first three owners in your owners table.
20) SELECT name FROM owners
		LIMIT(3);

-- Use a FULL OUTER JOIN to show all of the information from the owners table and the properties table.
21) SELECT * FROM owners
		FULL OUTER JOIN properties
		ON owners.id = properties.owner_id;

-- Update at least one of your properties to belong to the owner with id 1.
22) SELECT * FROM properties
    CROSS JOIN owners
    WHERE owners.id = 1
    LIMIT(1);

-- Use an INNER JOIN to show all of the owners with associated properties.
23) SELECT * FROM owners
    INNER JOIN properties
    ON owners.id = properties.id;

-- Use a CROSS JOIN to show all possible combinations of owners and properties.
24) SELECT * FROM properties
    CROSS JOIN owners;


-- STRETCH CHALLENGES

-- In the properties table, change the name of the column name to property_name.
1) 
	 ALTER TABLE properties 
	 RENAME COLUMN name 
	 TO property_name;

-- Count the total number of properties where the owner_id is between 1 and 3. 
2) 
	 SELECT count(*) 
	 FROM properties 
	 WHERE (owner_id > 1) 
	 AND (owner_id < 3); 
			


























