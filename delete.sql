-- SELECT * FROM animals;

-- 1. Copy, paste, and run the SQL code from the summary.

-- 2. Delete all ‘lion’ entries from the table.

delete from animals
where type = 'lion';

-- 3. Delete all animals whose names start with “M”.

delete from animals
where name like 'M%';

-- 4. Delete all entries whose age is less than 9.

delete from animals
where age < 9;