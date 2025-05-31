CREATE DATABASE pearl;
CREATE TABLE customers(id INT, Name TEXT, dob DATE);
USE pearl;

SELECT *
FROM customers;

SET SQL_SAFE_UPDATES = 0;

INSERT INTO customers VALUES(1,"Maryann Ezika", "1990-05-11");

INSERT INTO customers 
VALUES(2,"Chinenye Nora", "1996-01-01"),(3, "Joy", "1980-11-12"),(4, "Mariam", "1994-10-30")
;

UPDATE customers SET name = "Chinenye Nora Okey"
WHERE id = 2;

UPDATE customers SET dob = "1993-05-08" 
WHERE id = 3;

DELETE FROM customers WHERE id = 3;

ALTER TABLE customers DROP dob;

ALTER TABLE customers ADD gender VARCHAR(20);

UPDATE customers SET gender = "female"
where id = 1;

UPDATE customers SET gender = "female"
	where id = 2;
    
UPDATE customers SET gender = "female"
where id = 4;

drop database abc;