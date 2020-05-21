-- Create a table, `owners`
CREATE TABLE owners (
  id INTEGER PRIMARY KEY,
  name TEXT
);
-- Create a related table, `bicycles`
CREATE TABLE bicycles (
  id INTEGER PRIMARY KEY,
  name TEXT,
  owner_id INTEGER
);
-- Create 3 bicycles and 2 owners
INSERT INTO bicycles
  (name, owner_id)
VALUES
  ("Schwin", 1);
INSERT INTO bicycles
  (name, owner_id)
VALUES
  ("BMX", 2);
INSERT INTO bicycles
  (name, owner_id)
VALUES
  ("Bestcycle", 1);
INSERT INTO owners
  (name)
VALUES
  ("Alex");
INSERT INTO owners
  (name)
VALUES
  ("Fred");
-- Update the properties of one of the bicycles
UPDATE bicycles SET name = "Scwhinny" WHERE owner_id = 1;
-- List all the bicycles
SELECT * FROM bicycles;
-- List all the bicycles with their owners
SELECT bicycles.name, owners.name
FROM bicycles JOIN owners
  ON owners.id = bicycles.owner_id;
-- Delete one of the bicycles
DELETE FROM bicycles WHERE owner_id = 2;
