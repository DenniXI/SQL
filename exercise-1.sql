-- EXERCISE 1 CREATE TABLE:

CREATE TABLE Books(
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    genre TEXT NOT NULL,
    published_year INTEGER NOT NULL,
    isbn INTEGER NOT NULL,
    price INTEGER NOT NULL,
    rating NUMERIC NOT NULL,
    stock_count INTEGER NOT NULL
)

-- EXERCISE 2 ALTER TABLE:

ALTER TABLE Books 
ADD COLUMN publisher TEXT NOT NULL
ADD COLUMN pages INTEGER NOT NULL

-- EXERCISE 3 INSERT INTO:
INSERT INTO Books VALUES (1,"A Journey to the Center","Jules Verne", "Adventure", 1864 , 1234567890123, 12.99, 4.5, 10,"Verne Publishing", 350)
INSERT INTO Books VALUES (2,"War and Peace", "Leo Tolstoy", "Historical", 1869, 1234567890124 , 14.99, 4.8, 5, "Tolstoy Prints", 1200)
INSERT INTO Books VALUES (3,"Whispers of the Wind","Amelia Blackburn", "Romance", 1982, 1234567890125, 9.99, 4.2, 20, "Blackburn House", 275)
INSERT INTO Books VALUES (4,"The Galactic Odyssey","Orion Starfield", "Science Fiction", 2005, 1234567890125, 19.99, 4.9, 15, "Nebula Press", 450)

-- EXERCISE 4 UPDATE:

UPDATE Books SET (price) = 10.99 , stock_count = 4 WHERE book_id = 2

-- EXERCISE 5 GRANT:

GRANT SELECT, UPDATE ON Books TO 'martin'@'localhost'

-- EXERCISE 6 REVOKE:

REVOKE SELECT ON Books TO 'martin'@'localhost'

-- EXERCISE 7 COMMIT:

BEGIN TRANSACTION;

DELETE FROM Books WHERE book_id = 101;
COMMIT

-- EXERCISE 8 ROLLBACK:

BEGIN TRANSACTION;

DELETE FROM Books WHERE book_id = 101;
ROLLBACK