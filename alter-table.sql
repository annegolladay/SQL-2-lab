-- Intermediate - Alter Table¶
-- Copy, paste, and run the insert statement from the delete section above. (You should have deleted all the entries.)

-- 2. Add a column to the animals table called “location”. It should have a VARCHAR data type.

alter table animals
add location varchar(100);

-- 3. Insert 3 new animals into the table – make sure none of their fields are null.

INSERT INTO animals ( name, type, age, location )
VALUES ('Daisy', 'dog', 2, 'Lehi'), ('Rosie', 'puppy', 4, 'Mesa'), ('Lily', 'puppy', 1, 'Lehi')


-- 4. Change the “type” column’s name to be “species”.

alter table animals
rename column type TO 'species';


-- Change the “species” column data type to be VARCHAR.

alter table animals
alter species
set data type varchar(80);